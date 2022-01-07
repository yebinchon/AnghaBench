; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rgetpeername.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rgetpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rsocket = type { i64, i32, i32 }

@idm = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rgetpeername(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rsocket*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %9)
  store %struct.rsocket* %10, %struct.rsocket** %8, align 8
  %11 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %12 = icmp ne %struct.rsocket* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EBADF, align 4
  %15 = call i32 @ERR(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %18 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_STREAM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdma_get_peer_addr(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @rs_copy_addr(%struct.sockaddr* %23, i32 %27, i32* %28)
  store i32 0, i32* %4, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @getpeername(i32 %33, %struct.sockaddr* %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %22, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_copy_addr(%struct.sockaddr*, i32, i32*) #1

declare dso_local i32 @rdma_get_peer_addr(i32) #1

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
