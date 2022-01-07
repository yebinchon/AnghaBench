; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_gls_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_gls_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.ctl_be_block_lun = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ctl_be_block_io = type { %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ctl_lba_len_flags = type { i64 }
%struct.scsi_get_lba_status_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@FIOSEEKHOLE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_9__* null, align 8
@FIOSEEKDATA = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* @ctl_be_block_gls_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_gls_file(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %struct.ctl_lba_len_flags*, align 8
  %7 = alloca %struct.scsi_get_lba_status_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %4, align 8
  %12 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %12, i32 0, i32 0
  %14 = load %union.ctl_io*, %union.ctl_io** %13, align 8
  store %union.ctl_io* %14, %union.ctl_io** %5, align 8
  %15 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %16 = call %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io* %15)
  store %struct.ctl_lba_len_flags* %16, %struct.ctl_lba_len_flags** %6, align 8
  %17 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %6, align 8
  %19 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %21, %25
  store i32 %26, i32* %8, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LK_SHARED, align 4
  %31 = load i32, i32* @LK_RETRY, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @vn_lock(i32 %29, i32 %32)
  %34 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FIOSEEKHOLE, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %42 = call i32 @VOP_IOCTL(i32 %36, i32 %37, i32* %9, i32 0, i32 %40, %struct.TYPE_9__* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %2
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %72

50:                                               ; preds = %45, %2
  %51 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FIOSEEKDATA, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %59 = call i32 @VOP_IOCTL(i32 %53, i32 %54, i32* %9, i32 0, i32 %57, %struct.TYPE_9__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  br label %71

67:                                               ; preds = %62, %50
  store i32 0, i32* %11, align 4
  %68 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %69 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %66
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %74 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @VOP_UNLOCK(i32 %75, i32 0)
  %77 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %78 = bitcast %union.ctl_io* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.scsi_get_lba_status_data*
  store %struct.scsi_get_lba_status_data* %81, %struct.scsi_get_lba_status_data** %7, align 8
  %82 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %6, align 8
  %83 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %7, align 8
  %86 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @scsi_u64to8b(i64 %84, i32 %90)
  %92 = load i32, i32* @UINT32_MAX, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %95 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %93, %97
  %99 = sext i32 %98 to i64
  %100 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %6, align 8
  %101 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = call i32 @MIN(i32 %92, i64 %103)
  %105 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %7, align 8
  %106 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @scsi_ulto4b(i32 %104, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %7, align 8
  %114 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %119 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %118)
  ret void
}

declare dso_local %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @VOP_IOCTL(i32, i32, i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i64, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @ctl_complete_beio(%struct.ctl_be_block_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
