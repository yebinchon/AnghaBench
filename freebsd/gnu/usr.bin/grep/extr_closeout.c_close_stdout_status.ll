; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_closeout.c_close_stdout_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_closeout.c_close_stdout_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@file_name = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @stdout, align 4
  %6 = call i64 @ferror(i32 %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 -1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @stdout, align 4
  %11 = call i64 @fclose(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 0, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %4, align 8
  %20 = load i64, i64* @file_name, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* @file_name, align 8
  %26 = call i8* @quotearg_colon(i64 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i32, i8*, i8*, ...) @error(i32 %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  br label %34

29:                                               ; preds = %18
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 (i32, i32, i8*, i8*, ...) @error(i32 %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %15
  ret void
}

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, ...) #1

declare dso_local i8* @quotearg_colon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
