; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.sockaddr*, i32*)* }
%struct.sockaddr = type { i32 }

@fd_rsocket = common dso_local global i64 0, align 8
@fd_ready = common dso_local global i32 0, align 4
@fd_fork_listen = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@fd_normal = common dso_local global i64 0, align 8
@fd_fork_passive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @fd_get(i32 %11, i32* %8)
  %13 = load i64, i64* @fd_rsocket, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = call i32 (...) @fd_open()
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @raccept(i32 %22, %struct.sockaddr* %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fd_close(i32 %29, i32* %8)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i64, i64* @fd_rsocket, align 8
  %36 = load i32, i32* @fd_ready, align 4
  %37 = call i32 @fd_store(i32 %33, i32 %34, i64 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @fd_gets(i32 %40)
  %42 = load i64, i64* @fd_fork_listen, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = call i32 (...) @fd_open()
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %75

50:                                               ; preds = %44
  %51 = load i32 (i32, %struct.sockaddr*, i32*)*, i32 (i32, %struct.sockaddr*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 %51(i32 %52, %struct.sockaddr* %53, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @fd_close(i32 %59, i32* %8)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* @fd_normal, align 8
  %66 = load i32, i32* @fd_fork_passive, align 4
  %67 = call i32 @fd_store(i32 %63, i32 %64, i64 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %75

69:                                               ; preds = %39
  %70 = load i32 (i32, %struct.sockaddr*, i32*)*, i32 (i32, %struct.sockaddr*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 %70(i32 %71, %struct.sockaddr* %72, i32* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %62, %58, %48, %32, %28, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @fd_get(i32, i32*) #1

declare dso_local i32 @fd_open(...) #1

declare dso_local i32 @raccept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fd_close(i32, i32*) #1

declare dso_local i32 @fd_store(i32, i32, i64, i32) #1

declare dso_local i64 @fd_gets(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
