; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cnw_cont.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cnw_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.ctl_lun = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%union.ctl_io*)* }
%struct.ctl_lba_len_flags = type { i32 }

@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@CTL_LLF_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ctl_cnw_cont: calling data_submit()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_cnw_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_cnw_cont(%union.ctl_io* %0) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %18 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %16
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = bitcast i32* %27 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %28, %struct.ctl_lba_len_flags** %5, align 8
  %29 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %32 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @CTL_LLF_WRITE, align 4
  %36 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %44, align 8
  %46 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %47 = bitcast %struct.ctl_scsiio* %46 to %union.ctl_io*
  %48 = call i32 %45(%union.ctl_io* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%union.ctl_io*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
