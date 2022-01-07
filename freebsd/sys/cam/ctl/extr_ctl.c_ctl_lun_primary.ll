; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_lun_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_lun = type { i64 }
%struct.ctl_lun = type { i32, i32 }

@CTL_LUN_PRIMARY_SC = common dso_local global i32 0, align 4
@CTL_UA_ASYM_ACC_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_lun_primary(%struct.ctl_be_lun* %0) #0 {
  %2 = alloca %struct.ctl_be_lun*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  store %struct.ctl_be_lun* %0, %struct.ctl_be_lun** %2, align 8
  %4 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ctl_lun*
  store %struct.ctl_lun* %7, %struct.ctl_lun** %3, align 8
  %8 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load i32, i32* @CTL_LUN_PRIMARY_SC, align 4
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %17 = load i32, i32* @CTL_UA_ASYM_ACC_CHANGE, align 4
  %18 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %16, i32 -1, i32 %17)
  %19 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock(i32* %20)
  %22 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %23 = call i32 @ctl_isc_announce_lun(%struct.ctl_lun* %22)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_isc_announce_lun(%struct.ctl_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
