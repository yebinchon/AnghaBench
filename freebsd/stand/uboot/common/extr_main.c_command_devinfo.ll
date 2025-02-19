; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_command_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/common/extr_main.c_command_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devs_no = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no U-Boot devices found!?\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"U-Boot devices:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_devinfo(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @ub_dev_enum()
  store i32 %7, i32* @devs_no, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** @command_errmsg, align 8
  %10 = load i32, i32* @CMD_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %21, %11
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @devs_no, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ub_dump_di(i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %13

24:                                               ; preds = %13
  %25 = load i32, i32* @CMD_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ub_dev_enum(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ub_dump_di(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
