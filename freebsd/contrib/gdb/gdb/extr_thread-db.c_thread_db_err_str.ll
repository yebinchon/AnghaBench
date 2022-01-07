; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_err_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_err_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_db_err_str.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [25 x i8] c"generic 'call succeeded'\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"generic error\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no thread to satisfy query\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"no sync handle to satisfy query\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"no LWP to satisfy query\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid process handle\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid thread handle\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"invalid synchronization handle\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"invalid thread agent\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"invalid key\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"no event message for getmsg\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"FPU register set not available\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"application not linked with libthread\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"requested event is not supported\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"capability not available\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"debugger service failed\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"operation not applicable to\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"no thread-specific data for this thread\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"only part of register set was written/read\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"X register set not available for this thread\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"unknown thread_db error '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @thread_db_err_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_db_err_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 129, label %5
    i32 142, label %6
    i32 132, label %7
    i32 133, label %8
    i32 135, label %9
    i32 147, label %10
    i32 144, label %11
    i32 146, label %12
    i32 145, label %13
    i32 148, label %14
    i32 134, label %15
    i32 137, label %16
    i32 136, label %17
    i32 138, label %18
    i32 139, label %19
    i32 143, label %20
    i32 140, label %21
    i32 131, label %22
    i32 141, label %23
    i32 128, label %24
    i32 130, label %25
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %29

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %29

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %29

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %29

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %29

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %29

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %29

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %29

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %29

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %29

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %29

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %29

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %29

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %29

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %29

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %29

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %29

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %29

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %29

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %29

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_err_str.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %27)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_err_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %29

29:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
