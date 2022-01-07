; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_same_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_same_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.ctl_lun = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%union.ctl_io*)* }
%struct.TYPE_5__ = type { i64 }
%struct.ctl_lba_len_flags = type { i64, i64 }

@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ctl_write_same_cont: calling config_write()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_write_same_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_write_same_cont(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_lba_len_flags*, align 8
  %6 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %8 = call %struct.ctl_lun* @CTL_LUN(%union.ctl_io* %7)
  store %struct.ctl_lun* %8, %struct.ctl_lun** %3, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = bitcast %union.ctl_io* %9 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %10, %struct.ctl_scsiio** %4, align 8
  %11 = load i32, i32* @CTL_STATUS_NONE, align 4
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %16 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = bitcast i32* %20 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %21, %struct.ctl_lba_len_flags** %5, align 8
  %22 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %23 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %26 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %36 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i64, i64* @UINT32_MAX, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %1
  %42 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %45 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 8
  %49 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %56 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %60 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %41, %1
  %62 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %64 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %66, align 8
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %69 = bitcast %struct.ctl_scsiio* %68 to %union.ctl_io*
  %70 = call i32 %67(%union.ctl_io* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%union.ctl_io*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
