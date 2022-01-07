; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.ctl_be_lun = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ctl_backend_ramdisk_move_done = common dso_local global i32 0, align 4
@M_RAMDISK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_backend_ramdisk_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_compare(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %6)
  store %struct.ctl_be_lun* %7, %struct.ctl_be_lun** %3, align 8
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = call %struct.TYPE_8__* @ARGS(%union.ctl_io* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = call %struct.TYPE_7__* @PRIV(%union.ctl_io* %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %11, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 131072, %20
  %22 = call i32 @MIN(i32 %17, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @ctl_backend_ramdisk_move_done, align 4
  %29 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %30 = bitcast %union.ctl_io* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @M_RAMDISK, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = call i32 @malloc(i32 %32, i32 %33, i32 %34)
  %36 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %44 = bitcast %union.ctl_io* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %47 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %54 = call %struct.TYPE_7__* @PRIV(%union.ctl_io* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %59 = call i32 @ctl_datamove(%union.ctl_io* %58)
  ret void
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local %struct.TYPE_8__* @ARGS(%union.ctl_io*) #1

declare dso_local %struct.TYPE_7__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
