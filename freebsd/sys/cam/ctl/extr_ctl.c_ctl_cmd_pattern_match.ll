; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cmd_pattern_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cmd_pattern_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.ctl_error_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_cmd_entry = type { i32 }
%union.ctl_io = type { i32 }

@CTL_LUN_PAT_CMD = common dso_local global i32 0, align 4
@CTL_LUN_PAT_MASK = common dso_local global i32 0, align 4
@CTL_LUN_PAT_ANY = common dso_local global i32 0, align 4
@CTL_LUN_PAT_NONE = common dso_local global i32 0, align 4
@CTL_LUN_PAT_RANGE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CTL_ACTION_PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, %struct.ctl_error_desc*)* @ctl_cmd_pattern_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_cmd_pattern_match(%struct.ctl_scsiio* %0, %struct.ctl_error_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_error_desc*, align 8
  %6 = alloca %struct.ctl_cmd_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.ctl_error_desc* %1, %struct.ctl_error_desc** %5, align 8
  %13 = load %struct.ctl_error_desc*, %struct.ctl_error_desc** %5, align 8
  %14 = getelementptr inbounds %struct.ctl_error_desc, %struct.ctl_error_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @CTL_LUN_PAT_CMD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @CTL_LUN_PAT_CMD, align 4
  store i32 %21, i32* %3, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CTL_LUN_PAT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CTL_LUN_PAT_ANY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @CTL_LUN_PAT_ANY, align 4
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %22
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %32 = call %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio* %31, i32* null)
  store %struct.ctl_cmd_entry* %32, %struct.ctl_cmd_entry** %6, align 8
  %33 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %34 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CTL_LUN_PAT_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CTL_LUN_PAT_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @CTL_LUN_PAT_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CTL_LUN_PAT_RANGE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %56 = bitcast %struct.ctl_scsiio* %55 to %union.ctl_io*
  %57 = call i32 @ctl_get_lba_len(%union.ctl_io* %56, i32* %9, i32* %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @CTL_LUN_PAT_NONE, align 4
  store i32 %61, i32* %3, align 4
  br label %83

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ctl_error_desc*, %struct.ctl_error_desc** %5, align 8
  %66 = getelementptr inbounds %struct.ctl_error_desc, %struct.ctl_error_desc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ctl_error_desc*, %struct.ctl_error_desc** %5, align 8
  %70 = getelementptr inbounds %struct.ctl_error_desc, %struct.ctl_error_desc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i64 @ctl_extent_check_lba(i32 %63, i32 %64, i32 %68, i32 %72, i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @CTL_ACTION_PASS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @CTL_LUN_PAT_NONE, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %78, %60, %47, %28, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio*, i32*) #1

declare dso_local i32 @ctl_get_lba_len(%union.ctl_io*, i32*, i32*) #1

declare dso_local i64 @ctl_extent_check_lba(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
