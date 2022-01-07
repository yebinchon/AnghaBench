; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i64 }
%struct.ctl_lun = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_inquiry = type { i32, i32 }
%union.ctl_io = type { i32 }

@T_DIRECT = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*)* @ctl_inquiry_evpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.scsi_inquiry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %7 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %8 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %7)
  store %struct.ctl_lun* %8, %struct.ctl_lun** %3, align 8
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scsi_inquiry*
  store %struct.scsi_inquiry* %12, %struct.scsi_inquiry** %4, align 8
  %13 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @scsi_2btoul(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %100 [
    i32 129, label %20
    i32 128, label %24
    i32 136, label %28
    i32 135, label %32
    i32 133, label %36
    i32 132, label %40
    i32 130, label %44
    i32 131, label %48
    i32 137, label %52
    i32 138, label %68
    i32 134, label %84
  ]

20:                                               ; preds = %1
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ctl_inquiry_evpd_supported(%struct.ctl_scsiio* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ctl_inquiry_evpd_serial(%struct.ctl_scsiio* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %108

28:                                               ; preds = %1
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ctl_inquiry_evpd_devid(%struct.ctl_scsiio* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %108

32:                                               ; preds = %1
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ctl_inquiry_evpd_eid(%struct.ctl_scsiio* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %108

36:                                               ; preds = %1
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ctl_inquiry_evpd_mpp(%struct.ctl_scsiio* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %108

40:                                               ; preds = %1
  %41 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ctl_inquiry_evpd_scsi_ports(%struct.ctl_scsiio* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %108

44:                                               ; preds = %1
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ctl_inquiry_evpd_tpc(%struct.ctl_scsiio* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %108

48:                                               ; preds = %1
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ctl_inquiry_evpd_sfs(%struct.ctl_scsiio* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %108

52:                                               ; preds = %1
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %54 = icmp eq %struct.ctl_lun* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %57 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @T_DIRECT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55, %52
  br label %101

64:                                               ; preds = %55
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ctl_inquiry_evpd_block_limits(%struct.ctl_scsiio* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %108

68:                                               ; preds = %1
  %69 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %70 = icmp eq %struct.ctl_lun* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @T_DIRECT, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71, %68
  br label %101

80:                                               ; preds = %71
  %81 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ctl_inquiry_evpd_bdc(%struct.ctl_scsiio* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %108

84:                                               ; preds = %1
  %85 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %86 = icmp eq %struct.ctl_lun* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @T_DIRECT, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %84
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ctl_inquiry_evpd_lbp(%struct.ctl_scsiio* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  br label %108

100:                                              ; preds = %1
  br label %101

101:                                              ; preds = %100, %95, %79, %63
  %102 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %103 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %102, i32 1, i32 1, i32 2, i32 0, i32 0)
  %104 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %105 = bitcast %struct.ctl_scsiio* %104 to %union.ctl_io*
  %106 = call i32 @ctl_done(%union.ctl_io* %105)
  %107 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %101, %96, %80, %64, %48, %44, %40, %36, %32, %28, %24, %20
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @ctl_inquiry_evpd_supported(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_serial(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_devid(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_eid(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_mpp(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_scsi_ports(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_tpc(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_sfs(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_block_limits(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_bdc(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_inquiry_evpd_lbp(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
