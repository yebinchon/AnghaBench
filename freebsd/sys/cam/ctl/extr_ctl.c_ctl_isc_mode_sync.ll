; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_mode_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_mode_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_LUN_DISABLED = common dso_local global i32 0, align 4
@CTL_NUM_MODE_PAGES = common dso_local global i64 0, align 8
@SMPH_PC_MASK = common dso_local global i32 0, align 4
@CTL_UA_MODE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_softc*, %union.ctl_ha_msg*, i32)* @ctl_isc_mode_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_isc_mode_sync(%struct.ctl_softc* %0, %union.ctl_ha_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %union.ctl_ha_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ctl_softc* %0, %struct.ctl_softc** %4, align 8
  store %union.ctl_ha_msg* %1, %union.ctl_ha_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %12 = bitcast %union.ctl_ha_msg* %11 to %struct.TYPE_9__*
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @ctl_max_luns, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 1
  %25 = load %struct.ctl_lun**, %struct.ctl_lun*** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %25, i64 %26
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %27, align 8
  store %struct.ctl_lun* %28, %struct.ctl_lun** %7, align 8
  %29 = icmp eq %struct.ctl_lun* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22, %3
  %31 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock(i32* %32)
  br label %136

34:                                               ; preds = %22
  %35 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %36 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %35, i32 0, i32 1
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CTL_LUN_DISABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %49 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %48, i32 0, i32 1
  %50 = call i32 @mtx_unlock(i32* %49)
  br label %136

51:                                               ; preds = %34
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %88, %51
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @CTL_NUM_MODE_PAGES, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %91

56:                                               ; preds = %52
  %57 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %58 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SMPH_PC_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %68 = bitcast %union.ctl_ha_msg* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %56
  %73 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %74 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %82 = bitcast %union.ctl_ha_msg* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %91

87:                                               ; preds = %72, %56
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %52

91:                                               ; preds = %86, %52
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @CTL_NUM_MODE_PAGES, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %97 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %96, i32 0, i32 1
  %98 = call i32 @mtx_unlock(i32* %97)
  br label %136

99:                                               ; preds = %91
  %100 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %101 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %109 = bitcast %union.ctl_ha_msg* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %113 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i32 %107, i32 %111, i32 %119)
  %121 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %122 = bitcast %union.ctl_ha_msg* %121 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = call i64 @ctl_get_initindex(%struct.TYPE_10__* %123)
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ne i64 %125, -1
  br i1 %126, label %127, label %132

127:                                              ; preds = %99
  %128 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* @CTL_UA_MODE_CHANGE, align 4
  %131 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %128, i64 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %99
  %133 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %134 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %133, i32 0, i32 1
  %135 = call i32 @mtx_unlock(i32* %134)
  br label %136

136:                                              ; preds = %132, %95, %47, %30
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @ctl_get_initindex(%struct.TYPE_10__*) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
