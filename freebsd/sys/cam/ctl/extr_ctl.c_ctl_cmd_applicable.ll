; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cmd_applicable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_cmd_applicable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_cmd_entry = type { i32 }

@CTL_CMD_FLAG_OK_ON_DIRECT = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_OK_ON_PROC = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_OK_ON_CDROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ctl_cmd_entry*)* @ctl_cmd_applicable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_cmd_applicable(i32 %0, %struct.ctl_cmd_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_cmd_entry*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ctl_cmd_entry* %1, %struct.ctl_cmd_entry** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 129, label %7
    i32 128, label %16
    i32 130, label %25
  ]

7:                                                ; preds = %2
  %8 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %9 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CTL_CMD_FLAG_OK_ON_DIRECT, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %7
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CTL_CMD_FLAG_OK_ON_PROC, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTL_CMD_FLAG_OK_ON_CDROM, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %33, %24, %15
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %32, %23, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
