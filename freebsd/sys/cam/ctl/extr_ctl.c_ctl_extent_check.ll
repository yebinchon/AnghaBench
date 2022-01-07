; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_extent_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTL_ACTION_ERROR = common dso_local global i32 0, align 4
@CTL_FLAG_SERSEQ_DONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, %union.ctl_io*, i32)* @ctl_extent_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_extent_check(%union.ctl_io* %0, %union.ctl_io* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca %union.ctl_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %5, align 8
  store %union.ctl_io* %1, %union.ctl_io** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %14 = call i64 @ctl_get_lba_len(%union.ctl_io* %13, i32* %9, i32* %11)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CTL_ACTION_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @ctl_extent_check_unmap(%union.ctl_io* %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @CTL_ACTION_ERROR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %18
  %29 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %30 = call i64 @ctl_get_lba_len(%union.ctl_io* %29, i32* %8, i32* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @CTL_ACTION_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %28
  %35 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %36 = bitcast %union.ctl_io* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CTL_FLAG_SERSEQ_DONE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ctl_extent_check_lba(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %32, %26, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @ctl_get_lba_len(%union.ctl_io*, i32*, i32*) #1

declare dso_local i32 @ctl_extent_check_unmap(%union.ctl_io*, i32, i32) #1

declare dso_local i32 @ctl_extent_check_lba(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
