; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_state_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@UDMA_TX = common dso_local global i64 0, align 8
@UDMA_M2S_STATE_COMP_CTRL_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_COMP_CTRL_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_STREAM_IF_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_STREAM_IF_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DATA_RD_CTRL_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DATA_RD_CTRL_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DESC_PREF_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_STATE_DESC_PREF_SHIFT = common dso_local global i32 0, align 4
@UDMA_STATE_RESERVED = common dso_local global i64 0, align 8
@UDMA_STATE_ABORT = common dso_local global i64 0, align 8
@UDMA_ABORT = common dso_local global i32 0, align 4
@UDMA_STATE_NORMAL = common dso_local global i64 0, align 8
@UDMA_NORMAL = common dso_local global i32 0, align 4
@UDMA_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_state_get(%struct.al_udma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  %9 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %10 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UDMA_TX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %16 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i64 @al_reg_read32(i32* %20)
  store i64 %21, i64* %4, align 8
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %24 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i64 @al_reg_read32(i32* %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @UDMA_M2S_STATE_COMP_CTRL_MASK, align 4
  %33 = load i32, i32* @UDMA_M2S_STATE_COMP_CTRL_SHIFT, align 4
  %34 = call i64 @AL_REG_FIELD_GET(i64 %31, i32 %32, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* @UDMA_M2S_STATE_STREAM_IF_MASK, align 4
  %37 = load i32, i32* @UDMA_M2S_STATE_STREAM_IF_SHIFT, align 4
  %38 = call i64 @AL_REG_FIELD_GET(i64 %35, i32 %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @UDMA_M2S_STATE_DATA_RD_CTRL_MASK, align 4
  %41 = load i32, i32* @UDMA_M2S_STATE_DATA_RD_CTRL_SHIFT, align 4
  %42 = call i64 @AL_REG_FIELD_GET(i64 %39, i32 %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @UDMA_M2S_STATE_DESC_PREF_MASK, align 4
  %45 = load i32, i32* @UDMA_M2S_STATE_DESC_PREF_SHIFT, align 4
  %46 = call i64 @AL_REG_FIELD_GET(i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @UDMA_STATE_RESERVED, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @al_assert(i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @UDMA_STATE_RESERVED, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @al_assert(i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @UDMA_STATE_RESERVED, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @al_assert(i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @UDMA_STATE_RESERVED, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @al_assert(i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @UDMA_STATE_ABORT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %30
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @UDMA_STATE_ABORT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @UDMA_STATE_ABORT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @UDMA_STATE_ABORT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74, %70, %30
  %83 = load i32, i32* @UDMA_ABORT, align 4
  store i32 %83, i32* %2, align 4
  br label %104

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @UDMA_STATE_NORMAL, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @UDMA_STATE_NORMAL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @UDMA_STATE_NORMAL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @UDMA_STATE_NORMAL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %92, %88, %84
  %101 = load i32, i32* @UDMA_NORMAL, align 4
  store i32 %101, i32* %2, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @UDMA_IDLE, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %100, %82
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @al_reg_read32(i32*) #1

declare dso_local i64 @AL_REG_FIELD_GET(i64, i32, i32) #1

declare dso_local i32 @al_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
