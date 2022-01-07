; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_reboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_reboot_args = type { i64, i32, i32 }
%struct.reboot_args = type { i32 }

@REBOOT_MAGIC1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PRIV_REBOOT = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_reboot(%struct.thread* %0, %struct.linux_reboot_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_reboot_args*, align 8
  %6 = alloca %struct.reboot_args, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_reboot_args* %1, %struct.linux_reboot_args** %5, align 8
  %7 = load %struct.linux_reboot_args*, %struct.linux_reboot_args** %5, align 8
  %8 = getelementptr inbounds %struct.linux_reboot_args, %struct.linux_reboot_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REBOOT_MAGIC1, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.linux_reboot_args*, %struct.linux_reboot_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_reboot_args, %struct.linux_reboot_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 133, label %18
    i32 132, label %18
    i32 131, label %18
  ]

18:                                               ; preds = %14, %14, %14
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %18
  %22 = load %struct.linux_reboot_args*, %struct.linux_reboot_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_reboot_args, %struct.linux_reboot_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 135, label %25
    i32 136, label %25
    i32 134, label %29
    i32 129, label %32
    i32 128, label %32
    i32 130, label %34
  ]

25:                                               ; preds = %21, %21
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = load i32, i32* @PRIV_REBOOT, align 4
  %28 = call i32 @priv_check(%struct.thread* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %21
  %30 = load i32, i32* @RB_HALT, align 4
  %31 = getelementptr inbounds %struct.reboot_args, %struct.reboot_args* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  br label %39

32:                                               ; preds = %21, %21
  %33 = getelementptr inbounds %struct.reboot_args, %struct.reboot_args* %6, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @RB_POWEROFF, align 4
  %36 = getelementptr inbounds %struct.reboot_args, %struct.reboot_args* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %34, %32, %29
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = call i32 @sys_reboot(%struct.thread* %40, %struct.reboot_args* %6)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %37, %25, %19, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @sys_reboot(%struct.thread*, %struct.reboot_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
