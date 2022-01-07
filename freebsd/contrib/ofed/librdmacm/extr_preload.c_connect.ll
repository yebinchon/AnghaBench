; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }

@fd_rsocket = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@fd_normal = common dso_local global i32 0, align 4
@fd_fork = common dso_local global i64 0, align 8
@fd_fork_active = common dso_local global i32 0, align 4
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @fd_get(i32 %10, i32* %8)
  %12 = load i64, i64* @fd_rsocket, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rconnect(i32 %15, %struct.sockaddr* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINPROGRESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @fd_normal, align 4
  %30 = call i32 @transpose_socket(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rclose(i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %8, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @fd_gets(i32 %40)
  %42 = load i64, i64* @fd_fork, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @fd_normal, align 4
  %48 = load i32, i32* @fd_fork_active, align 4
  %49 = call i32 @fd_store(i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32 (i32, %struct.sockaddr*, i32)*, i32 (i32, %struct.sockaddr*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 %52(i32 %53, %struct.sockaddr* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %33, %25
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @fd_get(i32, i32*) #1

declare dso_local i32 @rconnect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @transpose_socket(i32, i32) #1

declare dso_local i32 @rclose(i32) #1

declare dso_local i64 @fd_gets(i32) #1

declare dso_local i32 @fd_store(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
