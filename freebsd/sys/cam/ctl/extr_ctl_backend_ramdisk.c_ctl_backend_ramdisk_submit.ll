; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { i32 }
%struct.ctl_lba_len_flags = type { i32 }
%struct.TYPE_2__ = type { i64 }

@CTL_LLF_VERIFY = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@CTL_LLF_COMPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_submit(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_lba_len_flags*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %5 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %6 = call %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io* %5)
  store %struct.ctl_lba_len_flags* %6, %struct.ctl_lba_len_flags** %4, align 8
  %7 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %4, align 8
  %8 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CTL_LLF_VERIFY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %15 = bitcast %union.ctl_io* %14 to i32*
  %16 = call i32 @ctl_set_success(i32* %15)
  %17 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %18 = call i32 @ctl_data_submit_done(%union.ctl_io* %17)
  %19 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %22 = call %struct.TYPE_2__* @PRIV(%union.ctl_io* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CTL_LLF_COMPARE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %32 = call i32 @ctl_backend_ramdisk_compare(%union.ctl_io* %31)
  br label %36

33:                                               ; preds = %20
  %34 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %35 = call i32 @ctl_backend_ramdisk_rw(%union.ctl_io* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ctl_lba_len_flags* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(i32*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

declare dso_local %struct.TYPE_2__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_compare(%union.ctl_io*) #1

declare dso_local i32 @ctl_backend_ramdisk_rw(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
