; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_show_databases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_show_databases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"TERMINFO\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: %s (no permission)\0A\00", align 1
@_nc_progname = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @show_databases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_databases(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = call i64 @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ true, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  store i8* null, i8** %5, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i8* @_nc_tic_dir(i32 0)
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @valid_db_path(i8* %19)
  store i8* %20, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %29

27:                                               ; preds = %18
  %28 = load i8*, i8** %2, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i8* (...) @_nc_home_terminfo()
  store i8* %30, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @valid_db_path(i8* %33)
  store i8* %34, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %2, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fflush(i32 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** @_nc_progname, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @ExitProgram(i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  ret void
}

declare dso_local i64 @getenv(i8*) #1

declare dso_local i8* @_nc_tic_dir(i32) #1

declare dso_local i8* @valid_db_path(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @_nc_home_terminfo(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @ExitProgram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
