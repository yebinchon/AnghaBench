; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpc_fd2sockinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c___rpc_fd2sockinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__rpc_sockinfo = type { i32, i64, i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_fd2sockinfo(i32 %0, %struct.__rpc_sockinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__rpc_sockinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 8
  store i32 %0, i32* %4, align 4
  store %struct.__rpc_sockinfo* %1, %struct.__rpc_sockinfo** %5, align 8
  store i32 8, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = bitcast %struct.sockaddr_storage* %9 to i8*
  %12 = bitcast i8* %11 to %struct.sockaddr*
  %13 = call i64 @_getsockname(i32 %10, %struct.sockaddr* %12, i32* %6)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %19 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 4, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SOL_SOCKET, align 4
  %22 = load i32, i32* @SO_TYPE, align 4
  %23 = call i64 @_getsockopt(i32 %20, i32 %21, i32 %22, i32* %7, i32* %6)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %58

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_LOCAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %36, i32* %8, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SOCK_DGRAM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %58

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %35
  br label %47

46:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %51 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %54 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %57 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %47, %43, %25, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @_getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
