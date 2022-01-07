; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsi_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsi_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_lun = type { i32, i64, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ctl_reserve\0A\00", align 1
@CTL_LUN_RESERVED = common dso_local global i32 0, align 4
@CTL_LUN_PR_RESERVED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_scsi_reserve(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca i64, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %5 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %6 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %5)
  store %struct.ctl_lun* %6, %struct.ctl_lun** %3, align 8
  %7 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %9 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @ctl_get_initindex(i32* %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CTL_LUN_RESERVED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %29 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %28)
  br label %51

30:                                               ; preds = %21, %1
  %31 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %39 = call i32 @ctl_set_success(%struct.ctl_scsiio* %38)
  br label %51

40:                                               ; preds = %30
  %41 = load i32, i32* @CTL_LUN_RESERVED, align 4
  %42 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %43 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %48 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %50 = call i32 @ctl_set_success(%struct.ctl_scsiio* %49)
  br label %51

51:                                               ; preds = %40, %37, %27
  %52 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %52, i32 0, i32 2
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %56 = bitcast %struct.ctl_scsiio* %55 to %union.ctl_io*
  %57 = call i32 @ctl_done(%union.ctl_io* %56)
  %58 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %58
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
