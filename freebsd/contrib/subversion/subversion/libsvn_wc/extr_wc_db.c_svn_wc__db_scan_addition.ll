; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_addition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_scan_addition(i32* %0, i8** %1, i8** %2, i8** %3, i8** %4, i8** %5, i8** %6, i8** %7, i32* %8, i32* %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store i8** %1, i8*** %15, align 8
  store i8** %2, i8*** %16, align 8
  store i8** %3, i8*** %17, align 8
  store i8** %4, i8*** %18, align 8
  store i8** %5, i8*** %19, align 8
  store i8** %6, i8*** %20, align 8
  store i8** %7, i8*** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  store i8* null, i8** %29, align 8
  %34 = load i32, i32* @INVALID_REPOS_ID, align 4
  store i32 %34, i32* %30, align 4
  %35 = load i32, i32* @INVALID_REPOS_ID, align 4
  store i32 %35, i32* %31, align 4
  %36 = load i8**, i8*** %17, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %13
  %39 = load i8**, i8*** %18, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %13
  br label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i32* [ %30, %41 ], [ null, %42 ]
  store i32* %44, i32** %32, align 8
  %45 = load i8**, i8*** %20, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i8**, i8*** %21, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %43
  br label %52

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %50
  %53 = phi i32* [ %31, %50 ], [ null, %51 ]
  store i32* %53, i32** %33, align 8
  %54 = load i8*, i8** %24, align 8
  %55 = call i32 @svn_dirent_is_absolute(i8* %54)
  %56 = call i32 @SVN_ERR_ASSERT(i32 %55)
  %57 = load i32*, i32** %23, align 8
  %58 = load i8*, i8** %24, align 8
  %59 = load i32*, i32** %26, align 8
  %60 = load i32*, i32** %26, align 8
  %61 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__** %27, i8** %28, i32* %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %64 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load i8**, i8*** %15, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi i8** [ %29, %68 ], [ null, %69 ]
  %72 = load i8**, i8*** %16, align 8
  %73 = load i32*, i32** %32, align 8
  %74 = load i8**, i8*** %19, align 8
  %75 = load i32*, i32** %33, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %78 = load i8*, i8** %28, align 8
  %79 = load i32*, i32** %25, align 8
  %80 = load i32*, i32** %26, align 8
  %81 = call i32 @scan_addition(i32* %65, i8** %71, i8** %72, i32* %73, i8** %74, i32* %75, i32* %76, i32* null, i32* null, i32* null, %struct.TYPE_7__* %77, i8* %78, i32* %79, i32* %80)
  %82 = load i8**, i8*** %17, align 8
  %83 = load i8**, i8*** %18, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %85 = load i32, i32* %30, align 4
  %86 = load i32*, i32** %25, align 8
  %87 = call i32 @svn_wc__db_fetch_repos_info(i8** %82, i8** %83, %struct.TYPE_7__* %84, i32 %85, i32* %86)
  %88 = load i8**, i8*** %20, align 8
  %89 = load i8**, i8*** %21, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %91 = load i32, i32* %31, align 4
  %92 = load i32*, i32** %25, align 8
  %93 = call i32 @svn_wc__db_fetch_repos_info(i8** %88, i8** %89, %struct.TYPE_7__* %90, i32 %91, i32* %92)
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %96 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %81, i32 %87, i32 %93, i32* %94, %struct.TYPE_7__* %95)
  %97 = load i8**, i8*** %15, align 8
  %98 = icmp ne i8** %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %70
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %29, align 8
  %104 = load i32*, i32** %25, align 8
  %105 = call i8* @svn_dirent_join(i32 %102, i8* %103, i32* %104)
  %106 = load i8**, i8*** %15, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %99, %70
  %108 = load i32*, i32** %32, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* @INVALID_REPOS_ID, align 4
  %113 = icmp ne i32 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ true, %107 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @SVN_ERR_ASSERT(i32 %116)
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @scan_addition(i32*, i8**, i8**, i32*, i8**, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
