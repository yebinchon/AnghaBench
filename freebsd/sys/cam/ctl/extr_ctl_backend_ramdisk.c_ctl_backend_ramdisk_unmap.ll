; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { i32 }
%struct.ctl_be_lun = type { i32 }
%struct.ctl_ptr_len_flags = type { i32, i32, i64 }
%struct.scsi_unmap_desc = type { i32, i32 }

@SU_ANCHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_backend_ramdisk_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_unmap(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca %struct.ctl_ptr_len_flags*, align 8
  %5 = alloca %struct.scsi_unmap_desc*, align 8
  %6 = alloca %struct.scsi_unmap_desc*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %8 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %7)
  store %struct.ctl_be_lun* %8, %struct.ctl_be_lun** %3, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = call i64 @ARGS(%union.ctl_io* %9)
  %11 = inttoptr i64 %10 to %struct.ctl_ptr_len_flags*
  store %struct.ctl_ptr_len_flags* %11, %struct.ctl_ptr_len_flags** %4, align 8
  %12 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SU_ANCHOR, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %21 = bitcast %union.ctl_io* %20 to i32*
  %22 = call i32 @ctl_set_invalid_field(i32* %21, i32 0, i32 0, i32 0, i32 0, i32 0)
  %23 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %24 = call i32 @ctl_config_write_done(%union.ctl_io* %23)
  br label %68

25:                                               ; preds = %1
  %26 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %4, align 8
  %27 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.scsi_unmap_desc*
  store %struct.scsi_unmap_desc* %29, %struct.scsi_unmap_desc** %5, align 8
  %30 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %5, align 8
  %31 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %4, align 8
  %32 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 8
  %36 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %30, i64 %35
  store %struct.scsi_unmap_desc* %36, %struct.scsi_unmap_desc** %6, align 8
  br label %37

37:                                               ; preds = %59, %25
  %38 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %5, align 8
  %39 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %6, align 8
  %40 = icmp ult %struct.scsi_unmap_desc* %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %43 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_8btou64(i32 %45)
  %47 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @scsi_4btoul(i32 %49)
  %51 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %4, align 8
  %52 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SU_ANCHOR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ctl_backend_ramdisk_delete(%struct.ctl_be_lun* %42, i32 %46, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %41
  %60 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %60, i32 1
  store %struct.scsi_unmap_desc* %61, %struct.scsi_unmap_desc** %5, align 8
  br label %37

62:                                               ; preds = %37
  %63 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %64 = bitcast %union.ctl_io* %63 to i32*
  %65 = call i32 @ctl_set_success(i32* %64)
  %66 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %67 = call i32 @ctl_config_write_done(%union.ctl_io* %66)
  br label %68

68:                                               ; preds = %62, %19
  ret void
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i64 @ARGS(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_delete(%struct.ctl_be_lun*, i32, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_success(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
