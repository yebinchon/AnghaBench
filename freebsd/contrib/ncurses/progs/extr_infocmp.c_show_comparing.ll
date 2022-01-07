; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_show_comparing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_infocmp.c_show_comparing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itrace = common dso_local global i64 0, align 8
@compare = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: dumping differences\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: dumping common capabilities\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"comparing %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" to %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @show_comparing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_comparing(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i64, i64* @itrace, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i32, i32* @compare, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 130, label %11
    i32 128, label %15
  ]

7:                                                ; preds = %5
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @_nc_progname, align 8
  %10 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %19

11:                                               ; preds = %5
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** @_nc_progname, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %19

15:                                               ; preds = %5
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @_nc_progname, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %5, %15, %11, %7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i8**, i8*** %2, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load i8**, i8*** %2, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %2, align 8
  %27 = load i8*, i8** %25, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i8**, i8*** %2, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load i8**, i8*** %2, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %2, align 8
  %35 = load i8*, i8** %33, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %41, %32
  %38 = load i8**, i8*** %2, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8**, i8*** %2, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %2, align 8
  %44 = load i8*, i8** %42, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %37

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %24
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %20
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
