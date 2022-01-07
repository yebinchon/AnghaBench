; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_client.c_connect_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_client.c_connect_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_ctx = type { i64, i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_ctx*)* @connect_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_unix(%struct.path_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path_ctx*, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  store %struct.path_ctx* %0, %struct.path_ctx** %3, align 8
  %5 = load i32, i32* @AF_UNIX, align 4
  %6 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strlcpy(i32 %8, i32 %11, i32 4)
  %13 = load i32, i32* @AF_UNIX, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = call i64 @socket(i32 %13, i32 %14, i32 0)
  %16 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @rk_cloexec(i64 %27)
  %29 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %33 = call i64 @connect(i64 %31, %struct.sockaddr* %32, i32 8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @close(i64 %38)
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @rk_cloexec(i64) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
