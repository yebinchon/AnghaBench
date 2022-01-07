; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.ds_dest = type { i32, %struct.ds_qp* }
%struct.ds_qp = type { i32 }
%union.socket_addr = type { i32 }

@ds_compare_addr = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.sockaddr*, i32, %struct.ds_dest**)* @ds_get_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_get_dest(%struct.rsocket* %0, %struct.sockaddr* %1, i32 %2, %struct.ds_dest** %3) #0 {
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ds_dest**, align 8
  %9 = alloca %union.socket_addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ds_qp*, align 8
  %12 = alloca %struct.ds_dest**, align 8
  %13 = alloca %struct.ds_dest*, align 8
  %14 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ds_dest** %3, %struct.ds_dest*** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 0
  %17 = call i32 @fastlock_acquire(i32* %16)
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %20 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %19, i32 0, i32 1
  %21 = load i32, i32* @ds_compare_addr, align 4
  %22 = call %struct.ds_dest** @tfind(%struct.sockaddr* %18, i32* %20, i32 %21)
  store %struct.ds_dest** %22, %struct.ds_dest*** %12, align 8
  %23 = load %struct.ds_dest**, %struct.ds_dest*** %12, align 8
  %24 = icmp ne %struct.ds_dest** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %72

26:                                               ; preds = %4
  %27 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ds_get_src_addr(%struct.rsocket* %27, %struct.sockaddr* %28, i32 %29, %union.socket_addr* %9, i32* %10)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %76

34:                                               ; preds = %26
  %35 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ds_get_qp(%struct.rsocket* %35, %union.socket_addr* %9, i32 %36, %struct.ds_qp** %11)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %76

41:                                               ; preds = %34
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 1
  %45 = load i32, i32* @ds_compare_addr, align 4
  %46 = call %struct.ds_dest** @tfind(%struct.sockaddr* %42, i32* %44, i32 %45)
  store %struct.ds_dest** %46, %struct.ds_dest*** %12, align 8
  %47 = load %struct.ds_dest**, %struct.ds_dest*** %12, align 8
  %48 = icmp ne %struct.ds_dest** %47, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %41
  %50 = call %struct.ds_dest* @calloc(i32 1, i32 16)
  store %struct.ds_dest* %50, %struct.ds_dest** %13, align 8
  %51 = load %struct.ds_dest*, %struct.ds_dest** %13, align 8
  %52 = icmp ne %struct.ds_dest* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @ERR(i32 %54)
  store i32 %55, i32* %14, align 4
  br label %76

56:                                               ; preds = %49
  %57 = load %struct.ds_dest*, %struct.ds_dest** %13, align 8
  %58 = getelementptr inbounds %struct.ds_dest, %struct.ds_dest* %57, i32 0, i32 0
  %59 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i32* %58, %struct.sockaddr* %59, i32 %60)
  %62 = load %struct.ds_qp*, %struct.ds_qp** %11, align 8
  %63 = load %struct.ds_dest*, %struct.ds_dest** %13, align 8
  %64 = getelementptr inbounds %struct.ds_dest, %struct.ds_dest* %63, i32 0, i32 1
  store %struct.ds_qp* %62, %struct.ds_qp** %64, align 8
  %65 = load %struct.ds_dest*, %struct.ds_dest** %13, align 8
  %66 = getelementptr inbounds %struct.ds_dest, %struct.ds_dest* %65, i32 0, i32 0
  %67 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %68 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %67, i32 0, i32 1
  %69 = load i32, i32* @ds_compare_addr, align 4
  %70 = call %struct.ds_dest** @tsearch(i32* %66, i32* %68, i32 %69)
  store %struct.ds_dest** %70, %struct.ds_dest*** %12, align 8
  br label %71

71:                                               ; preds = %56, %41
  br label %72

72:                                               ; preds = %71, %25
  %73 = load %struct.ds_dest**, %struct.ds_dest*** %12, align 8
  %74 = load %struct.ds_dest*, %struct.ds_dest** %73, align 8
  %75 = load %struct.ds_dest**, %struct.ds_dest*** %8, align 8
  store %struct.ds_dest* %74, %struct.ds_dest** %75, align 8
  br label %76

76:                                               ; preds = %72, %53, %40, %33
  %77 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %78 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %77, i32 0, i32 0
  %79 = call i32 @fastlock_release(i32* %78)
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local %struct.ds_dest** @tfind(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @ds_get_src_addr(%struct.rsocket*, %struct.sockaddr*, i32, %union.socket_addr*, i32*) #1

declare dso_local i32 @ds_get_qp(%struct.rsocket*, %union.socket_addr*, i32, %struct.ds_qp**) #1

declare dso_local %struct.ds_dest* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local %struct.ds_dest** @tsearch(i32*, i32*, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
