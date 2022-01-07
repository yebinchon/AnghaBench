; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_pcidev_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_pcidev_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIOSPCI_32BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot read bar at 0x%x\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot find specified pcidev\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Memory bar at 0x%x\0A\00", align 1
@PCIM_BAR_IO_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"comconsole_port\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@comc_port_set = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@comc_curspeed = common dso_local global i32 0, align 4
@comc_locator = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @comc_pcidev_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comc_pcidev_handle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65535
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 16711680
  %10 = ashr i32 %9, 16
  %11 = load i32, i32* @BIOSPCI_32BITS, align 4
  %12 = call i32 @biospci_read_config(i32 %7, i32 %10, i32 %11, i32* %5)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @CMD_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @CMD_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PCI_BAR_IO(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @CMD_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load i32, i32* @PCIM_BAR_IO_BASE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = call i32 @unsetenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @EV_VOLATILE, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %42 = load i32, i32* @comc_port_set, align 4
  %43 = load i32, i32* @env_nounset, align 4
  %44 = call i32 @env_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %40, i8* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @comc_curspeed, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @comc_setup(i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* @comc_locator, align 4
  %49 = load i32, i32* @CMD_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %32, %28, %21, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @biospci_read_config(i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @PCI_BAR_IO(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @comc_setup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
