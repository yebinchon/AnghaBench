; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_ua.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_UA_THIN_PROV_THRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_softc*, %union.ctl_ha_msg*, i32)* @ctl_isc_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_isc_ua(%struct.ctl_softc* %0, %union.ctl_ha_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %union.ctl_ha_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_softc* %0, %struct.ctl_softc** %4, align 8
  store %union.ctl_ha_msg* %1, %union.ctl_ha_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %10 = bitcast %union.ctl_ha_msg* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @ctl_get_initindex(%struct.TYPE_6__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %17 = bitcast %union.ctl_ha_msg* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ctl_max_luns, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %24, i32 0, i32 1
  %26 = load %struct.ctl_lun**, %struct.ctl_lun*** %25, align 8
  %27 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %28 = bitcast %union.ctl_ha_msg* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %26, i64 %31
  %33 = load %struct.ctl_lun*, %struct.ctl_lun** %32, align 8
  store %struct.ctl_lun* %33, %struct.ctl_lun** %7, align 8
  %34 = icmp eq %struct.ctl_lun* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %23, %3
  %36 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  br label %123

39:                                               ; preds = %23
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 0
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %47 = bitcast %union.ctl_ha_msg* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CTL_UA_THIN_PROV_THRES, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %39
  %53 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %54 = bitcast %union.ctl_ha_msg* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %60 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %63 = bitcast %union.ctl_ha_msg* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memcpy(i32 %61, i32 %65, i32 8)
  br label %67

67:                                               ; preds = %58, %52, %39
  %68 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %69 = bitcast %union.ctl_ha_msg* %68 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %75 = bitcast %union.ctl_ha_msg* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %83 = bitcast %union.ctl_ha_msg* %82 to %struct.TYPE_5__*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %80, i32 %81, i32 %85)
  br label %95

87:                                               ; preds = %73
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %91 = bitcast %union.ctl_ha_msg* %90 to %struct.TYPE_5__*
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ctl_clr_ua_all(%struct.ctl_lun* %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %87, %79
  br label %119

96:                                               ; preds = %67
  %97 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %98 = bitcast %union.ctl_ha_msg* %97 to %struct.TYPE_5__*
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %106 = bitcast %union.ctl_ha_msg* %105 to %struct.TYPE_5__*
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ctl_est_ua(%struct.ctl_lun* %103, i32 %104, i32 %108)
  br label %118

110:                                              ; preds = %96
  %111 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %5, align 8
  %114 = bitcast %union.ctl_ha_msg* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ctl_clr_ua(%struct.ctl_lun* %111, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %110, %102
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %121 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %120, i32 0, i32 0
  %122 = call i32 @mtx_unlock(i32* %121)
  br label %123

123:                                              ; preds = %119, %35
  ret void
}

declare dso_local i32 @ctl_get_initindex(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_clr_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_est_ua(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_clr_ua(%struct.ctl_lun*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
