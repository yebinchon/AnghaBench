; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTL_FLAG_SERSEQ_DONE = common dso_local global i32 0, align 4
@CTL_ACTION_PASS = common dso_local global i32 0, align 4
@CTL_ACTION_ERROR = common dso_local global i32 0, align 4
@CTL_ACTION_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, %union.ctl_io*)* @ctl_extent_check_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_extent_check_seq(%union.ctl_io* %0, %union.ctl_io* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %4, align 8
  store %union.ctl_io* %1, %union.ctl_io** %5, align 8
  %10 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %11 = bitcast %union.ctl_io* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CTL_FLAG_SERSEQ_DONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @CTL_ACTION_PASS, align 4
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %21 = call i64 @ctl_get_lba_len(%union.ctl_io* %20, i64* %6, i64* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @CTL_ACTION_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %19
  %26 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %27 = call i64 @ctl_get_lba_len(%union.ctl_io* %26, i64* %7, i64* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @CTL_ACTION_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @CTL_ACTION_BLOCK, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @CTL_ACTION_PASS, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %29, %23, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ctl_get_lba_len(%union.ctl_io*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
