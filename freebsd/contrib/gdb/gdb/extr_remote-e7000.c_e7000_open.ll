; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_e7000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_name = common dso_local global i32 0, align 4
@baudrate = common dso_local global i32 0, align 4
@e7000_ops = common dso_local global i32 0, align 4
@e7000_desc = common dso_local global i32 0, align 4
@e7000_start_remote = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Couldn't establish connection to remote target\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Remote target %s connected to %s\0A\00", align 1
@target_shortname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @e7000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7000_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @target_preopen(i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @dev_name, align 4
  %10 = load i32, i32* @baudrate, align 4
  %11 = call i32 @e7000_parse_device(i8* %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 @push_target(i32* @e7000_ops)
  %13 = load i32, i32* @dev_name, align 4
  %14 = call i32 @serial_open(i32 %13)
  store i32 %14, i32* @e7000_desc, align 4
  %15 = load i32, i32* @e7000_desc, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @dev_name, align 4
  %19 = call i32 @perror_with_name(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @e7000_desc, align 4
  %22 = load i32, i32* @baudrate, align 4
  %23 = call i64 @serial_setbaudrate(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @e7000_desc, align 4
  %27 = call i32 @serial_close(i32 %26)
  %28 = load i32, i32* @dev_name, align 4
  %29 = call i32 @perror_with_name(i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @e7000_desc, align 4
  %32 = call i32 @serial_raw(i32 %31)
  %33 = load i32, i32* @e7000_start_remote, align 4
  %34 = load i32, i32* @RETURN_MASK_ALL, align 4
  %35 = call i32 @catch_errors(i32 %33, i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @target_shortname, align 4
  %42 = load i32, i32* @dev_name, align 4
  %43 = call i32 @printf_filtered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %30
  ret void
}

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @e7000_parse_device(i8*, i32, i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @serial_open(i32) #1

declare dso_local i32 @perror_with_name(i32) #1

declare dso_local i64 @serial_setbaudrate(i32, i32) #1

declare dso_local i32 @serial_close(i32) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @catch_errors(i32, i8*, i8*, i32) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
