; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_sync_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ctl_lun = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ctl_lba_len_flags = type { i32, i64, i64 }
%struct.scsi_sync_cache = type { i32, i32, i32 }
%struct.scsi_sync_cache_16 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ctl_sync_cache\0A\00", align 1
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_sync_cache(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.ctl_lba_len_flags*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sync_cache*, align 8
  %10 = alloca %struct.scsi_sync_cache_16*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %12 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %11)
  store %struct.ctl_lun* %12, %struct.ctl_lun** %3, align 8
  %13 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %14 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %15 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %51 [
    i32 129, label %19
    i32 128, label %35
  ]

19:                                               ; preds = %1
  %20 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %21 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.scsi_sync_cache*
  store %struct.scsi_sync_cache* %23, %struct.scsi_sync_cache** %9, align 8
  %24 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %9, align 8
  %25 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @scsi_4btoul(i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %9, align 8
  %29 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @scsi_2btoul(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.scsi_sync_cache*, %struct.scsi_sync_cache** %9, align 8
  %33 = getelementptr inbounds %struct.scsi_sync_cache, %struct.scsi_sync_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.scsi_sync_cache_16*
  store %struct.scsi_sync_cache_16* %39, %struct.scsi_sync_cache_16** %10, align 8
  %40 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %10, align 8
  %41 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @scsi_8btou64(i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %10, align 8
  %45 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @scsi_4btoul(i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.scsi_sync_cache_16*, %struct.scsi_sync_cache_16** %10, align 8
  %49 = getelementptr inbounds %struct.scsi_sync_cache_16, %struct.scsi_sync_cache_16* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %1
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %53 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %52)
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %55 = bitcast %struct.ctl_scsiio* %54 to %union.ctl_io*
  %56 = call i32 @ctl_done(%union.ctl_io* %55)
  br label %107

57:                                               ; preds = %35, %19
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = icmp sgt i64 %60, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %57
  %69 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %72 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @MAX(i64 %70, i64 %76)
  %78 = call i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio* %69, i32 %77)
  %79 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %80 = bitcast %struct.ctl_scsiio* %79 to %union.ctl_io*
  %81 = call i32 @ctl_done(%union.ctl_io* %80)
  br label %107

82:                                               ; preds = %57
  %83 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %84 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = bitcast i32* %88 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %89, %struct.ctl_lba_len_flags** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %4, align 8
  %92 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %4, align 8
  %95 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %4, align 8
  %98 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %100 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %102, align 8
  %104 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %105 = bitcast %struct.ctl_scsiio* %104 to %union.ctl_io*
  %106 = call i32 %103(%union.ctl_io* %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %82, %68, %51
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i64 @scsi_2btoul(i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
