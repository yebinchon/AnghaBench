; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_eol_style_from_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_eol_style_from_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_subst_eol_style_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"native\00", align 1
@APR_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_native = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@svn_subst_eol_style_fixed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CRLF\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@svn_subst_eol_style_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_subst_eol_style_from_value(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i8**, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @svn_subst_eol_style_none, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  br label %78

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @APR_EOL_STR, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @svn_subst_eol_style_native, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %77

30:                                               ; preds = %17
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @svn_subst_eol_style_fixed, align 4
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %34
  br label %76

42:                                               ; preds = %30
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @svn_subst_eol_style_fixed, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %75

54:                                               ; preds = %42
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @svn_subst_eol_style_fixed, align 4
  %64 = load i32*, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %74

66:                                               ; preds = %54
  %67 = load i8**, i8*** %5, align 8
  store i8* null, i8** %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @svn_subst_eol_style_unknown, align 4
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %65
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %41
  br label %77

77:                                               ; preds = %76, %29
  br label %78

78:                                               ; preds = %77, %16
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
