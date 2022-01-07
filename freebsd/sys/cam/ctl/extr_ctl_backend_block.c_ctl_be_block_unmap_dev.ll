; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_unmap_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_unmap_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_be_block_io = type { i32, i32, i32, %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_ptr_len_flags = type { i32, i64 }
%struct.scsi_unmap_desc = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* @ctl_be_block_unmap_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_unmap_dev(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %struct.ctl_ptr_len_flags*, align 8
  %7 = alloca %struct.scsi_unmap_desc*, align 8
  %8 = alloca %struct.scsi_unmap_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %4, align 8
  %10 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %10, i32 0, i32 3
  %12 = load %union.ctl_io*, %union.ctl_io** %11, align 8
  store %union.ctl_io* %12, %union.ctl_io** %5, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %15 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %14, i32 0, i32 2
  %16 = call i32 @binuptime(i32* %15)
  %17 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %23, i32 0, i32 2
  %25 = call i32 @devstat_start_transaction(i32 %22, i32* %24)
  %26 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %26, i32 0, i32 1
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %104

33:                                               ; preds = %2
  %34 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %35 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = bitcast i32* %41 to %struct.ctl_ptr_len_flags*
  store %struct.ctl_ptr_len_flags* %42, %struct.ctl_ptr_len_flags** %6, align 8
  %43 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %44 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.scsi_unmap_desc*
  store %struct.scsi_unmap_desc* %46, %struct.scsi_unmap_desc** %7, align 8
  %47 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %48 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %49 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 8
  %53 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %47, i64 %52
  store %struct.scsi_unmap_desc* %53, %struct.scsi_unmap_desc** %8, align 8
  br label %54

54:                                               ; preds = %100, %33
  %55 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %56 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  %57 = icmp ult %struct.scsi_unmap_desc* %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %54
  %59 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %60 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @scsi_4btoul(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %65 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %71 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %75 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %76 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %77 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @scsi_8btou64(i32 %78)
  %80 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %81 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  %87 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %88 = ptrtoint %struct.scsi_unmap_desc* %86 to i64
  %89 = ptrtoint %struct.scsi_unmap_desc* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = icmp slt i64 %91, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %58
  %94 = load i32, i32* @TRUE, align 4
  br label %97

95:                                               ; preds = %58
  %96 = load i32, i32* @FALSE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @ctl_be_block_unmap_dev_range(%struct.ctl_be_block_lun* %74, %struct.ctl_be_block_io* %75, i32 %84, i32 %85, i32 %98)
  br label %100

100:                                              ; preds = %97
  %101 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %7, align 8
  %102 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %101, i32 1
  store %struct.scsi_unmap_desc* %102, %struct.scsi_unmap_desc** %7, align 8
  br label %54

103:                                              ; preds = %54
  br label %115

104:                                              ; preds = %2
  %105 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %106 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %107 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %108 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %111 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @ctl_be_block_unmap_dev_range(%struct.ctl_be_block_lun* %105, %struct.ctl_be_block_io* %106, i32 %109, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %103
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @devstat_start_transaction(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_be_block_unmap_dev_range(%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*, i32, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
