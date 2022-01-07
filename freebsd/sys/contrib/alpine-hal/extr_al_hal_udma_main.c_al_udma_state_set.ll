; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_state_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"udma [%s]: requested state identical to current state (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"udma [%s]: change state from (%s) to (%s)\0A\00", align 1
@al_udma_states_name = common dso_local global i32* null, align 8
@UDMA_M2S_CHANGE_STATE_DIS = common dso_local global i64 0, align 8
@UDMA_M2S_CHANGE_STATE_NORMAL = common dso_local global i64 0, align 8
@UDMA_M2S_CHANGE_STATE_ABORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"udma: invalid state (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UDMA_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_state_set(%struct.al_udma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = icmp ne %struct.al_udma* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @al_assert(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %13 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %18 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %24 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** @al_udma_states_name, align 8
  %27 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %28 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @al_udma_states_name, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i32, ...) @al_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %32, i32 %37)
  store i64 0, i64* %6, align 8
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %52 [
    i32 129, label %40
    i32 128, label %44
    i32 130, label %48
  ]

40:                                               ; preds = %22
  %41 = load i64, i64* @UDMA_M2S_CHANGE_STATE_DIS, align 8
  %42 = load i64, i64* %6, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %57

44:                                               ; preds = %22
  %45 = load i64, i64* @UDMA_M2S_CHANGE_STATE_NORMAL, align 8
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %57

48:                                               ; preds = %22
  %49 = load i64, i64* @UDMA_M2S_CHANGE_STATE_ABORT, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %57

52:                                               ; preds = %22
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @al_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %85

57:                                               ; preds = %48, %44, %40
  %58 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %59 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UDMA_TX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %65 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @al_reg_write32(i32* %69, i64 %70)
  br label %81

72:                                               ; preds = %57
  %73 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %74 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @al_reg_write32(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %84 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %52
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, ...) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
