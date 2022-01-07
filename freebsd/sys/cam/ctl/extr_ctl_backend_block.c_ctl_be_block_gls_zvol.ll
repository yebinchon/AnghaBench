; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_gls_zvol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_gls_zvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ctl_be_block_io = type { %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cdevsw = type { i32 (%struct.cdev*, i32, i32, i32, i32)* }
%struct.cdev = type opaque
%struct.cdev.0 = type { i32 }
%struct.ctl_lba_len_flags = type { i64 }
%struct.scsi_get_lba_status_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@FIOSEEKHOLE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FIOSEEKDATA = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* @ctl_be_block_gls_zvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_gls_zvol(%struct.ctl_be_block_lun* %0, %struct.ctl_be_block_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_io*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %struct.cdevsw*, align 8
  %7 = alloca %struct.cdev.0*, align 8
  %8 = alloca %struct.ctl_lba_len_flags*, align 8
  %9 = alloca %struct.scsi_get_lba_status_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %struct.ctl_be_block_io* %1, %struct.ctl_be_block_io** %4, align 8
  %15 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %16 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %15, i32 0, i32 0
  %17 = load %union.ctl_io*, %union.ctl_io** %16, align 8
  store %union.ctl_io* %17, %union.ctl_io** %5, align 8
  %18 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %19 = call %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io* %18)
  store %struct.ctl_lba_len_flags* %19, %struct.ctl_lba_len_flags** %8, align 8
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cdevsw* @devvn_refthread(i32 %23, %struct.cdev.0** %7, i32* %13)
  store %struct.cdevsw* %24, %struct.cdevsw** %6, align 8
  %25 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %26 = icmp eq %struct.cdevsw* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  store i32 0, i32* %14, align 4
  %28 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  br label %85

31:                                               ; preds = %2
  %32 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %8, align 8
  %33 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  store i32 %40, i32* %10, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %42 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %41, i32 0, i32 0
  %43 = load i32 (%struct.cdev*, i32, i32, i32, i32)*, i32 (%struct.cdev*, i32, i32, i32, i32)** %42, align 8
  %44 = load %struct.cdev.0*, %struct.cdev.0** %7, align 8
  %45 = bitcast %struct.cdev.0* %44 to %struct.cdev*
  %46 = load i32, i32* @FIOSEEKHOLE, align 4
  %47 = ptrtoint i32* %11 to i32
  %48 = load i32, i32* @FREAD, align 4
  %49 = load i32, i32* @curthread, align 4
  %50 = call i32 %43(%struct.cdev* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %81

58:                                               ; preds = %53, %31
  %59 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %60 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %59, i32 0, i32 0
  %61 = load i32 (%struct.cdev*, i32, i32, i32, i32)*, i32 (%struct.cdev*, i32, i32, i32, i32)** %60, align 8
  %62 = load %struct.cdev.0*, %struct.cdev.0** %7, align 8
  %63 = bitcast %struct.cdev.0* %62 to %struct.cdev*
  %64 = load i32, i32* @FIOSEEKDATA, align 4
  %65 = ptrtoint i32* %11 to i32
  %66 = load i32, i32* @FREAD, align 4
  %67 = load i32, i32* @curthread, align 4
  %68 = call i32 %61(%struct.cdev* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %14, align 4
  br label %80

76:                                               ; preds = %71, %58
  store i32 0, i32* %14, align 4
  %77 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %78 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %57
  %82 = load %struct.cdev.0*, %struct.cdev.0** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @dev_relthread(%struct.cdev.0* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %27
  %86 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %87 = bitcast %union.ctl_io* %86 to %struct.TYPE_4__*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.scsi_get_lba_status_data*
  store %struct.scsi_get_lba_status_data* %90, %struct.scsi_get_lba_status_data** %9, align 8
  %91 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %8, align 8
  %92 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %9, align 8
  %95 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @scsi_u64to8b(i64 %93, i32 %99)
  %101 = load i32, i32* @UINT32_MAX, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %104 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %102, %106
  %108 = sext i32 %107 to i64
  %109 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %8, align 8
  %110 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = call i32 @MIN(i32 %101, i64 %112)
  %114 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %9, align 8
  %115 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @scsi_ulto4b(i32 %113, i32 %119)
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %9, align 8
  %123 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %4, align 8
  %128 = call i32 @ctl_complete_beio(%struct.ctl_be_block_io* %127)
  ret void
}

declare dso_local %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.cdevsw* @devvn_refthread(i32, %struct.cdev.0**, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev.0*, i32) #1

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
