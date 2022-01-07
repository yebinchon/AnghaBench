; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rsocket = type { i64, i64, i32, i32 }

@idm = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_bound = common dso_local global i64 0, align 8
@rs_init = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbind(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %10)
  store %struct.rsocket* %11, %struct.rsocket** %8, align 8
  %12 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %13 = icmp ne %struct.rsocket* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EBADF, align 4
  %16 = call i32 @ERR(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %19 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_STREAM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = call i32 @rdma_bind_addr(i32 %26, %struct.sockaddr* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* @rs_bound, align 8
  %33 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %34 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %23
  br label %57

36:                                               ; preds = %17
  %37 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @rs_init, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %44 = call i32 @ds_init_ep(%struct.rsocket* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %52 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bind(i32 %53, %struct.sockaddr* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %35
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %47, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rdma_bind_addr(i32, %struct.sockaddr*) #1

declare dso_local i32 @ds_init_ep(%struct.rsocket*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
