; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_types.c_svn_revnum_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_types.c_svn_revnum_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_REVNUM_PARSE_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Negative revision number found parsing '%s'\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid revision number found parsing '%s'\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Revision number longer than 10 digits '%s'\00", align 1
@APR_INT32_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Revision number too large '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_revnum_parse(i64* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @svn__strtoul(i8* %10, i8** %8)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8**, i8*** %7, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32, i32* @SVN_ERR_REVNUM_PARSE_FAILURE, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 45
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %32

30:                                               ; preds = %22
  %31 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i8*, i8** %6, align 8
  %35 = call i32* @svn_error_createf(i32 %23, i32* null, i32 %33, i8* %34)
  store i32* %35, i32** %4, align 8
  br label %76

36:                                               ; preds = %18
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 10
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ule i8* %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 10
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @SVN_ERR_REVNUM_PARSE_FAILURE, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %6, align 8
  %50 = call i32* @svn_error_createf(i32 %47, i32* null, i32 %48, i8* %49)
  store i32* %50, i32** %4, align 8
  br label %76

51:                                               ; preds = %41
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sgt i32 %54, 50
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @APR_INT32_MAX, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %51
  %61 = load i32, i32* @SVN_ERR_REVNUM_PARSE_FAILURE, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** %6, align 8
  %64 = call i32* @svn_error_createf(i32 %61, i32* null, i32 %62, i8* %63)
  store i32* %64, i32** %4, align 8
  br label %76

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i8**, i8*** %7, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i8**, i8*** %7, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* %9, align 8
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %72, %60, %46, %32
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32 @svn__strtoul(i8*, i8**) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
