; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsendto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rsendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rsocket = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@idm = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@rs_init = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsendto(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rsocket*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.rsocket* @idm_at(i32* @idm, i32 %16)
  store %struct.rsocket* %17, %struct.rsocket** %14, align 8
  %18 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %19 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_STREAM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %25 = icmp ne %struct.sockaddr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EISCONN, align 4
  %31 = call i32 @ERR(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %90

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @rsend(i32 %33, i8* %34, i64 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %90

38:                                               ; preds = %6
  %39 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @rs_init, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %46 = call i32 @ds_init_ep(%struct.rsocket* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %90

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %54 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %53, i32 0, i32 2
  %55 = call i32 @fastlock_acquire(i32* %54)
  %56 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %57 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %62 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i64 @ds_compare_addr(%struct.sockaddr* %61, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60, %52
  %69 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %73 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %72, i32 0, i32 3
  %74 = call i32 @ds_get_dest(%struct.rsocket* %69, %struct.sockaddr* %70, i32 %71, %struct.TYPE_2__** %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %85

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @dsend(%struct.rsocket* %80, i8* %81, i64 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %79, %77
  %86 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %87 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %86, i32 0, i32 2
  %88 = call i32 @fastlock_release(i32* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %49, %32, %29
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rsend(i32, i8*, i64, i32) #1

declare dso_local i32 @ds_init_ep(%struct.rsocket*) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i64 @ds_compare_addr(%struct.sockaddr*, i32*) #1

declare dso_local i32 @ds_get_dest(%struct.rsocket*, %struct.sockaddr*, i32, %struct.TYPE_2__**) #1

declare dso_local i32 @dsend(%struct.rsocket*, i8*, i64, i32) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
