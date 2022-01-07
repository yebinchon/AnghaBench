; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_pcidev_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_pcidev_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.env_var = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid pcidev\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@comconsole = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@C_ACTIVEIN = common dso_local global i32 0, align 4
@C_ACTIVEOUT = common dso_local global i32 0, align 4
@comc_locator = common dso_local global i64 0, align 8
@CMD_OK = common dso_local global i32 0, align 4
@EV_NOHOOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.env_var*, i32, i8*)* @comc_pcidev_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comc_pcidev_set(%struct.env_var* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.env_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.env_var* %0, %struct.env_var** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @comc_parse_pcidev(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @CMD_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comconsole, i32 0, i32 0), align 4
  %21 = load i32, i32* @C_ACTIVEIN, align 4
  %22 = load i32, i32* @C_ACTIVEOUT, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load i64, i64* @comc_locator, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @comc_pcidev_handle(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CMD_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %26, %19
  %40 = load %struct.env_var*, %struct.env_var** %5, align 8
  %41 = getelementptr inbounds %struct.env_var, %struct.env_var* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EV_NOHOOK, align 4
  %45 = or i32 %43, %44
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @env_setenv(i32 %42, i32 %45, i8* %46, i32* null, i32* null)
  %48 = load i32, i32* @CMD_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %36, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @comc_parse_pcidev(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @comc_pcidev_handle(i64) #1

declare dso_local i32 @env_setenv(i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
