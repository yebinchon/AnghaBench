; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_blame-cmd.c_print_line_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_blame-cmd.c_print_line_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%*ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"                                           -\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s %10s %s \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"         -\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%-14s \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s %10.10s \00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i8*, i64, i32, i32*)* @print_line_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_line_info(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @SVN_IS_VALID_REVNUM(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = load i32*, i32** %17, align 8
  %26 = load i32, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call i8* @apr_psprintf(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  br label %33

29:                                               ; preds = %8
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i8* @apr_psprintf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i8* [ %28, %24 ], [ %32, %29 ]
  store i8* %34, i8** %20, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32* @svn_cl__time_cstring_to_human_cstring(i8** %18, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32* %43)
  %45 = load i8*, i8** %18, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32* @svn_cmdline_cstring_from_utf8(i8** %19, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32* %47)
  br label %50

49:                                               ; preds = %37
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i8*, i8** %12, align 8
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %58 ]
  %61 = load i8*, i8** %19, align 8
  %62 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_stream_printf(i32* %51, i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %53, i8* %60, i8* %61)
  %63 = call i32 @SVN_ERR(i32* %62)
  %64 = load i8*, i8** %14, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_stream_printf(i32* %67, i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = call i32 @SVN_ERR(i32* %70)
  br label %72

72:                                               ; preds = %66, %59
  br label %85

73:                                               ; preds = %33
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i8*, i8** %12, align 8
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i8* [ %80, %79 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %81 ]
  %84 = call i32* (i32*, i32*, i8*, i8*, ...) @svn_stream_printf(i32* %74, i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %76, i8* %83)
  store i32* %84, i32** %9, align 8
  br label %87

85:                                               ; preds = %72
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32*, i32** %9, align 8
  ret i32* %88
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_cl__time_cstring_to_human_cstring(i8**, i8*, i32*) #1

declare dso_local i32* @svn_cmdline_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32* @svn_stream_printf(i32*, i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
