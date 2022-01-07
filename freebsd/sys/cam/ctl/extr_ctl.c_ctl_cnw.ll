; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cnw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cnw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32*, i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.ctl_lun = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ctl_lba_len_flags = type { i32, i32, i64 }
%struct.scsi_compare_and_write = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ctl_cnw: command: %#x\0A\00", align 1
@SRW10_FUA = common dso_local global i32 0, align 4
@CTL_LLF_FUA = common dso_local global i32 0, align 4
@SRW10_DPO = common dso_local global i32 0, align 4
@CTL_LLF_DPO = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@SCP_WCE = common dso_local global i32 0, align 4
@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@ctl_cnw_cont = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ctl_cnw: calling data_submit()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_cnw(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.ctl_lba_len_flags*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_compare_and_write*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %12 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %11)
  store %struct.ctl_lun* %12, %struct.ctl_lun** %4, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @CTL_DEBUG_PRINT(i8* %19)
  store i32 0, i32* %8, align 4
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %60 [
    i32 128, label %26
  ]

26:                                               ; preds = %1
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to %struct.scsi_compare_and_write*
  store %struct.scsi_compare_and_write* %30, %struct.scsi_compare_and_write** %10, align 8
  %31 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %10, align 8
  %32 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SRW10_FUA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @CTL_LLF_FUA, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %10, align 8
  %43 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SRW10_DPO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @CTL_LLF_DPO, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %10, align 8
  %54 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @scsi_8btou64(i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %10, align 8
  %58 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %67

60:                                               ; preds = %1
  %61 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %62 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %61)
  %63 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %64 = bitcast %struct.ctl_scsiio* %63 to %union.ctl_io*
  %65 = call i32 @ctl_done(%union.ctl_io* %64)
  %66 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %66, i32* %2, align 4
  br label %173

67:                                               ; preds = %52
  %68 = load i64, i64* %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %73 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = icmp sgt i64 %71, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %67
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i64, i64* %6, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %79, %67
  %87 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %90 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @MAX(i64 %88, i64 %94)
  %96 = call i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio* %87, i32 %95)
  %97 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %98 = bitcast %struct.ctl_scsiio* %97 to %union.ctl_io*
  %99 = call i32 @ctl_done(%union.ctl_io* %98)
  %100 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %100, i32* %2, align 4
  br label %173

101:                                              ; preds = %79
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %106 = call i32 @ctl_set_success(%struct.ctl_scsiio* %105)
  %107 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %108 = bitcast %struct.ctl_scsiio* %107 to %union.ctl_io*
  %109 = call i32 @ctl_done(%union.ctl_io* %108)
  %110 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %110, i32* %2, align 4
  br label %173

111:                                              ; preds = %101
  %112 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %113 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SCP_WCE, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @CTL_LLF_FUA, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 2, %124
  %126 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %127 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %125, %130
  %132 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %133 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %135 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %137 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %138 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @ctl_cnw_cont, align 4
  %143 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %144 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %146 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = bitcast i32* %150 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %151, %struct.ctl_lba_len_flags** %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %154 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %157 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %162 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %164 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %165 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %167, align 8
  %169 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %170 = bitcast %struct.ctl_scsiio* %169 to %union.ctl_io*
  %171 = call i32 %168(%union.ctl_io* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %123, %104, %86, %60
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
