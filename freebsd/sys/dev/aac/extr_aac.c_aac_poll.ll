; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.aac_softc* }
%struct.aac_softc = type { i64, i32, i32, %struct.aac_fib_context* }
%struct.aac_fib_context = type { i64, i64, %struct.aac_fib_context* }
%struct.thread = type { i32 }

@POLLRDNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @aac_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.aac_softc*, align 8
  %8 = alloca %struct.aac_fib_context*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.aac_softc*, %struct.aac_softc** %11, align 8
  store %struct.aac_softc* %12, %struct.aac_softc** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @POLLRDNORM, align 4
  %18 = load i32, i32* @POLLIN, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %24 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %23, i32 0, i32 3
  %25 = load %struct.aac_fib_context*, %struct.aac_fib_context** %24, align 8
  store %struct.aac_fib_context* %25, %struct.aac_fib_context** %8, align 8
  br label %26

26:                                               ; preds = %51, %22
  %27 = load %struct.aac_fib_context*, %struct.aac_fib_context** %8, align 8
  %28 = icmp ne %struct.aac_fib_context* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load %struct.aac_fib_context*, %struct.aac_fib_context** %8, align 8
  %31 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.aac_fib_context*, %struct.aac_fib_context** %8, align 8
  %39 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @POLLIN, align 4
  %45 = load i32, i32* @POLLRDNORM, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.aac_fib_context*, %struct.aac_fib_context** %8, align 8
  %53 = getelementptr inbounds %struct.aac_fib_context, %struct.aac_fib_context* %52, i32 0, i32 2
  %54 = load %struct.aac_fib_context*, %struct.aac_fib_context** %53, align 8
  store %struct.aac_fib_context* %54, %struct.aac_fib_context** %8, align 8
  br label %26

55:                                               ; preds = %42, %26
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %58 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %57, i32 0, i32 2
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @POLLIN, align 4
  %65 = load i32, i32* @POLLRDNORM, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 1
  %73 = call i32 @selrecord(%struct.thread* %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %62
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
