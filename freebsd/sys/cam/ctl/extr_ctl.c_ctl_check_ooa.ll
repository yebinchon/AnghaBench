; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_check_ooa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_check_ooa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32 }
%union.ctl_io = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CTL_ACTION_PASS = common dso_local global i64 0, align 8
@ctl_ooaq = common dso_local global i32 0, align 4
@ooa_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctl_lun*, %union.ctl_io*, %union.ctl_io**)* @ctl_check_ooa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctl_check_ooa(%struct.ctl_lun* %0, %union.ctl_io* %1, %union.ctl_io** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %union.ctl_io*, align 8
  %7 = alloca %union.ctl_io**, align 8
  %8 = alloca %union.ctl_io*, align 8
  %9 = alloca i64, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %5, align 8
  store %union.ctl_io* %1, %union.ctl_io** %6, align 8
  store %union.ctl_io** %2, %union.ctl_io*** %7, align 8
  %10 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %11 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %10, i32 0, i32 0
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load %union.ctl_io**, %union.ctl_io*** %7, align 8
  %15 = load %union.ctl_io*, %union.ctl_io** %14, align 8
  store %union.ctl_io* %15, %union.ctl_io** %8, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %18 = icmp ne %union.ctl_io* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %21 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %22 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %23 = call i64 @ctl_check_for_blockage(%struct.ctl_lun* %20, %union.ctl_io* %21, %union.ctl_io* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @CTL_ACTION_PASS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %29 = load %union.ctl_io**, %union.ctl_io*** %7, align 8
  store %union.ctl_io* %28, %union.ctl_io** %29, align 8
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %4, align 8
  br label %42

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %34 = bitcast %union.ctl_io* %33 to i32*
  %35 = load i32, i32* @ctl_ooaq, align 4
  %36 = load i32, i32* @ooa_links, align 4
  %37 = call i64 @TAILQ_PREV(i32* %34, i32 %35, i32 %36)
  %38 = inttoptr i64 %37 to %union.ctl_io*
  store %union.ctl_io* %38, %union.ctl_io** %8, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load %union.ctl_io**, %union.ctl_io*** %7, align 8
  store %union.ctl_io* null, %union.ctl_io** %40, align 8
  %41 = load i64, i64* @CTL_ACTION_PASS, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @ctl_check_for_blockage(%struct.ctl_lun*, %union.ctl_io*, %union.ctl_io*) #1

declare dso_local i64 @TAILQ_PREV(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
