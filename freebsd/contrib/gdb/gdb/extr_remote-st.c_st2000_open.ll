; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_st2000_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-st.c_st2000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c" %s %d %s\00", align 1
@dev_name = common dso_local global i8* null, align 8
@baudrate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Bad arguments.  Usage: target st2000 <device> <speed>\0Aor target st2000 <host> <port>\0A\00", align 1
@st2000_desc = common dso_local global i32 0, align 4
@st2000_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Remote %s connected to %s\0A\00", align 1
@target_shortname = common dso_local global i8* null, align 8
@LOG_FILE = common dso_local global i8* null, align 8
@log_file = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @st2000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st2000_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @target_preopen(i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** @dev_name, align 8
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %12 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %10, i32* @baudrate, i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = call i32 @st2000_close(i32 0)
  %19 = load i8*, i8** @dev_name, align 8
  %20 = call i32 @serial_open(i8* %19)
  store i32 %20, i32* @st2000_desc, align 4
  %21 = load i32, i32* @st2000_desc, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** @dev_name, align 8
  %25 = call i32 @perror_with_name(i8* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @st2000_desc, align 4
  %28 = load i32, i32* @baudrate, align 4
  %29 = call i64 @serial_setbaudrate(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** @dev_name, align 8
  %33 = call i32 @serial_close(i8* %32)
  %34 = load i8*, i8** @dev_name, align 8
  %35 = call i32 @perror_with_name(i8* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @st2000_desc, align 4
  %38 = call i32 @serial_raw(i32 %37)
  %39 = call i32 @push_target(i32* @st2000_ops)
  %40 = call i32 @printf_stdebug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @expect_prompt(i32 1)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** @target_shortname, align 8
  %46 = load i8*, i8** @dev_name, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @st2000_close(i32) #1

declare dso_local i32 @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32, i32) #1

declare dso_local i32 @serial_close(i8*) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @printf_stdebug(i8*) #1

declare dso_local i32 @expect_prompt(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
