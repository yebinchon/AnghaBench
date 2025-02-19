; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/slave/extr_curses_commands.c_cmd_mvwinchstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/slave/extr_curses_commands.c_cmd_mvwinchstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BAD ARGUMENT\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_mvwinchstr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @check_arg_count(i32 %9, i32 3)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i32** %8 to i32*
  %18 = call i64 @sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 @report_count(i32 1)
  %22 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %51

23:                                               ; preds = %13
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @sscanf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @report_count(i32 1)
  %31 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %51

32:                                               ; preds = %23
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 @report_count(i32 1)
  %40 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %51

41:                                               ; preds = %32
  %42 = call i32 @report_count(i32 2)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %47 = call i32 @mvwinchstr(i32* %43, i32 %44, i32 %45, i32* %46)
  %48 = call i32 @report_return(i32 %47)
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %50 = call i32 @report_nstr(i32* %49)
  br label %51

51:                                               ; preds = %41, %38, %29, %20, %12
  ret void
}

declare dso_local i32 @check_arg_count(i32, i32) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @report_count(i32) #1

declare dso_local i32 @report_error(i8*) #1

declare dso_local i32 @report_return(i32) #1

declare dso_local i32 @mvwinchstr(i32*, i32, i32, i32*) #1

declare dso_local i32 @report_nstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
