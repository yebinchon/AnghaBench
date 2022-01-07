; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_cmd_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_cmd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_cmd_entry = type { i32, i64 }
%struct.ctl_scsiio = type { i64* }

@ctl_cmd_table = common dso_local global %struct.ctl_cmd_entry* null, align 8
@CTL_CMD_FLAG_SA5 = common dso_local global i32 0, align 4
@SERVICE_ACTION_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctl_cmd_entry* @ctl_get_cmd_entry(%struct.ctl_scsiio* %0, i32* %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ctl_cmd_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %7, i64 %12
  store %struct.ctl_cmd_entry* %13, %struct.ctl_cmd_entry** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @SERVICE_ACTION_MASK, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ctl_cmd_entry*
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %45, i64 %47
  store %struct.ctl_cmd_entry* %48, %struct.ctl_cmd_entry** %5, align 8
  br label %49

49:                                               ; preds = %32, %25
  %50 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  ret %struct.ctl_cmd_entry* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
