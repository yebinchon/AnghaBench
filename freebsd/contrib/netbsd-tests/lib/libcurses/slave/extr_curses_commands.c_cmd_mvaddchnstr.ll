; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/slave/extr_curses_commands.c_cmd_mvaddchnstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/slave/extr_curses_commands.c_cmd_mvaddchnstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BAD ARGUMENT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_mvaddchnstr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @check_arg_count(i32 %8, i32 4)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call i32 @report_count(i32 1)
  %20 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %50

21:                                               ; preds = %12
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @report_count(i32 1)
  %29 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %50

30:                                               ; preds = %21
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @report_count(i32 1)
  %38 = call i32 @report_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %50

39:                                               ; preds = %30
  %40 = call i32 @report_count(i32 1)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mvaddchnstr(i32 %41, i32 %42, i32* %46, i32 %47)
  %49 = call i32 @report_return(i32 %48)
  br label %50

50:                                               ; preds = %39, %36, %27, %18, %11
  ret void
}

declare dso_local i32 @check_arg_count(i32, i32) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @report_count(i32) #1

declare dso_local i32 @report_error(i8*) #1

declare dso_local i32 @report_return(i32) #1

declare dso_local i32 @mvaddchnstr(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
