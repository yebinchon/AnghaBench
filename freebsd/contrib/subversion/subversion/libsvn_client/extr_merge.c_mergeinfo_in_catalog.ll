; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mergeinfo_in_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_mergeinfo_in_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8*, i32*, i64, i32*, i32*)* @mergeinfo_in_catalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_in_catalog(i32* %0, i8** %1, i8* %2, i32* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8**, i8*** %9, align 8
  store i8* null, i8** %20, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %96

23:                                               ; preds = %7
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @apr_hash_count(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  store i8* %31, i8** %16, align 8
  store i32* null, i32** %17, align 8
  br label %32

32:                                               ; preds = %30, %66
  %33 = load i64, i64* %12, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = call i32* @svn_hash_gets(i64 %33, i8* %34)
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %13, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = call i8* @apr_pstrdup(i32* %39, i8* %40)
  %42 = load i8**, i8*** %9, align 8
  store i8* %41, i8** %42, align 8
  br label %67

43:                                               ; preds = %32
  %44 = load i8*, i8** %16, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_relpath_basename(i8* %44, i32* %45)
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i8*, i8** %15, align 8
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %51 ]
  %54 = load i32*, i32** %14, align 8
  %55 = call i8* @svn_relpath_join(i32 %46, i8* %53, i32* %54)
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = call i8* @svn_relpath_dirname(i8* %56, i32* %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %67

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  br label %32

67:                                               ; preds = %64, %38
  %68 = load i32*, i32** %17, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %17, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @svn_mergeinfo__add_suffix_to_mergeinfo(i32** %17, i32* %74, i8* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32*, i32** %17, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @svn_mergeinfo_intersect2(i32** %17, i32* %81, i32* %82, i32 %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @svn_mergeinfo__equals(i32* %88, i32* %89, i32* %90, i32 %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %80, %67
  br label %96

96:                                               ; preds = %95, %26, %23, %7
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i64 @apr_hash_count(i64) #1

declare dso_local i32* @svn_hash_gets(i64, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo__add_suffix_to_mergeinfo(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo_intersect2(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo__equals(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
