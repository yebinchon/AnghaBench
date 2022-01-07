; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evConfigTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evConfigTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@EV_TMR_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evConfigTimer(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %13, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @UNUSED(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_9__* @heap_element(i32 %22, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = icmp ne %struct.TYPE_9__* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = call i32 @EV_ERR(i32 %30)
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @EV_TMR_RATE, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %57

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @EV_TMR_RATE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @EV_ERR(i32 %54)
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local %struct.TYPE_9__* @heap_element(i32, i32) #1

declare dso_local i32 @EV_ERR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
