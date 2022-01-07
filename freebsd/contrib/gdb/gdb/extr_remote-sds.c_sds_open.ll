; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_sds_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [125 x i8] c"To open a remote debug connection, you need to specify what serial\0Adevice is attached to the remote system (e.g. /dev/ttya).\00", align 1
@sds_ops = common dso_local global i32 0, align 4
@sds_desc = common dso_local global i32 0, align 4
@baud_rate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Remote debugging using \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@just_started = common dso_local global i32 0, align 4
@sds_start_remote = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Couldn't establish connection to remote target\0A\00", align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sds_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sds_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @error(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @target_preopen(i32 %10)
  %12 = call i32 @unpush_target(i32* @sds_ops)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @serial_open(i8* %13)
  store i32 %14, i32* @sds_desc, align 4
  %15 = load i32, i32* @sds_desc, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @perror_with_name(i8* %18)
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i32, i32* @baud_rate, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* @sds_desc, align 4
  %25 = load i32, i32* @baud_rate, align 4
  %26 = call i64 @serial_setbaudrate(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @sds_desc, align 4
  %30 = call i32 @serial_close(i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @perror_with_name(i8* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* @sds_desc, align 4
  %36 = call i32 @serial_raw(i32 %35)
  %37 = load i32, i32* @sds_desc, align 4
  %38 = call i32 @serial_flush_input(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @puts_filtered(i8* %43)
  %45 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %34
  %47 = call i32 @push_target(i32* @sds_ops)
  store i32 1, i32* @just_started, align 4
  %48 = load i32, i32* @sds_start_remote, align 4
  %49 = load i32, i32* @RETURN_MASK_ALL, align 4
  %50 = call i32 @catch_errors(i32 %48, i32* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = call i32 (...) @pop_target()
  br label %54

54:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i32 @serial_open(i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i64 @serial_setbaudrate(i32, i32) #1

declare dso_local i32 @serial_close(i32) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @serial_flush_input(i32) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @catch_errors(i32, i32*, i8*, i32) #1

declare dso_local i32 @pop_target(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
