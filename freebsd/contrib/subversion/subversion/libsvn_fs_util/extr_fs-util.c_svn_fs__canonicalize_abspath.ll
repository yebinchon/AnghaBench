; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__canonicalize_abspath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__canonicalize_abspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_fs__canonicalize_abspath(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %104

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %104

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @is_canonical_abspath(i8* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i8* @apr_pstrmemdup(i32* %28, i8* %29, i64 %30)
  store i8* %31, i8** %3, align 8
  br label %104

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 2
  %36 = call i8* @apr_palloc(i32* %33, i64 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 47, i8* %45, align 1
  br label %46

46:                                               ; preds = %41, %32
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %79

62:                                               ; preds = %58
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %10, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %74, i8* %78, align 1
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %47

82:                                               ; preds = %47
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i64, i64* %9, align 8
  %92 = icmp ugt i64 %91, 1
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  br label %102

98:                                               ; preds = %90, %82
  %99 = load i8*, i8** %6, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 0, i8* %101, align 1
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %102, %27, %19, %14
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @is_canonical_abspath(i8*, i64) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i64) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
