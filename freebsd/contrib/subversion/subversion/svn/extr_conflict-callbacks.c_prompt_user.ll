; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_prompt_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_prompt_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unrecognized option.\0A\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8**, i8*, i8*, i32*)* @prompt_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prompt_user(i32** %0, i32* %1, i8** %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i8* @prompt_string(i32* %16, i8** %17, i32* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @svn_cmdline_prompt_user2(i8** %14, i8* %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i8*, i8** %14, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i8*, i8** %14, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28, %6
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %36, i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @help_string(i8** %15, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %46, i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32**, i32*** %7, align 8
  store i32* null, i32** %51, align 8
  br label %69

52:                                               ; preds = %28
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32* @find_option(i32* %53, i8* %54)
  %56 = load i32**, i32*** %7, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (i32, i32*, i8*, ...) @svn_cmdline_fprintf(i32 %61, i32* %62, i8* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %60, %52
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i8* @prompt_string(i32*, i8**, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_prompt_user2(i8**, i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @help_string(i8**, i32*, i32*) #1

declare dso_local i32* @find_option(i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
