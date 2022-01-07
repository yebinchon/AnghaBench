; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_capture.c_db_capture_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_capture.c_db_capture_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tIDENT = common dso_local global i32 0, align 4
@tEOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1
@db_tok_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%u/%u bytes used\0A\00", align 1
@db_capture_bufoff = common dso_local global i32 0, align 4
@db_capture_bufsize = common dso_local global i32 0, align 4
@db_capture_inprogress = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"capture is on\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"capture is off\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_capture_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = call i32 (...) @db_read_token()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @tIDENT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (...) @db_capture_usage()
  br label %60

16:                                               ; preds = %4
  %17 = call i32 (...) @db_read_token()
  %18 = load i32, i32* @tEOL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @db_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @db_tok_string, align 4
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @db_capture_start()
  br label %60

28:                                               ; preds = %22
  %29 = load i32, i32* @db_tok_string, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @db_capture_stop()
  br label %59

34:                                               ; preds = %28
  %35 = load i32, i32* @db_tok_string, align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @db_capture_reset()
  br label %58

40:                                               ; preds = %34
  %41 = load i32, i32* @db_tok_string, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* @db_capture_bufoff, align 4
  %46 = load i32, i32* @db_capture_bufsize, align 4
  %47 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i64, i64* @db_capture_inprogress, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %54

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %50
  br label %57

55:                                               ; preds = %40
  %56 = call i32 (...) @db_capture_usage()
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %14, %59, %26
  ret void
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_capture_usage(...) #1

declare dso_local i32 @db_error(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @db_capture_start(...) #1

declare dso_local i32 @db_capture_stop(...) #1

declare dso_local i32 @db_capture_reset(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
