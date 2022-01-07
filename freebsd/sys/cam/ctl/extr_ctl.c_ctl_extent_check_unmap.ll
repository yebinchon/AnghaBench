; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.ctl_ptr_len_flags = type { i32, i32* }
%struct.scsi_unmap_desc = type { i32, i32 }
%struct.TYPE_3__ = type { i64* }

@CTL_IO_SCSI = common dso_local global i64 0, align 8
@UNMAP = common dso_local global i64 0, align 8
@CTL_ACTION_ERROR = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@CTL_ACTION_BLOCK = common dso_local global i32 0, align 4
@CTL_ACTION_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, i64, i64)* @ctl_extent_check_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_extent_check_unmap(%union.ctl_io* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ctl_ptr_len_flags*, align 8
  %9 = alloca %struct.scsi_unmap_desc*, align 8
  %10 = alloca %struct.scsi_unmap_desc*, align 8
  %11 = alloca %struct.scsi_unmap_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %15 = bitcast %union.ctl_io* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CTL_IO_SCSI, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNMAP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20, %3
  %30 = load i32, i32* @CTL_ACTION_ERROR, align 4
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %20
  %32 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %33 = bitcast %union.ctl_io* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = bitcast i32* %37 to %struct.ctl_ptr_len_flags*
  store %struct.ctl_ptr_len_flags* %38, %struct.ctl_ptr_len_flags** %8, align 8
  %39 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %40 = bitcast %union.ctl_io* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %31
  %47 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %8, align 8
  %48 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %31
  %52 = load i32, i32* @CTL_ACTION_BLOCK, align 4
  store i32 %52, i32* %4, align 4
  br label %98

53:                                               ; preds = %46
  %54 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %8, align 8
  %55 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.scsi_unmap_desc*
  store %struct.scsi_unmap_desc* %57, %struct.scsi_unmap_desc** %9, align 8
  %58 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %9, align 8
  %59 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %8, align 8
  %60 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 8
  %64 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %58, i64 %63
  store %struct.scsi_unmap_desc* %64, %struct.scsi_unmap_desc** %10, align 8
  %65 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %9, align 8
  store %struct.scsi_unmap_desc* %65, %struct.scsi_unmap_desc** %11, align 8
  br label %66

66:                                               ; preds = %93, %53
  %67 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %68 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %10, align 8
  %69 = icmp ult %struct.scsi_unmap_desc* %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %72 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @scsi_8btou64(i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %76 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @scsi_4btoul(i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %80, %81
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* %6, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @CTL_ACTION_BLOCK, align 4
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %84, %70
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %95 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %94, i32 1
  store %struct.scsi_unmap_desc* %95, %struct.scsi_unmap_desc** %11, align 8
  br label %66

96:                                               ; preds = %66
  %97 = load i32, i32* @CTL_ACTION_PASS, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %90, %51, %29
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
