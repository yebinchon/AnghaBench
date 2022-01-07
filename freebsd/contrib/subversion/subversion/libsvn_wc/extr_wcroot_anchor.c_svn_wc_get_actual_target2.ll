; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wcroot_anchor.c_svn_wc_get_actual_target2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wcroot_anchor.c_svn_wc_get_actual_target2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_wc_get_actual_target2(i8** %0, i8** %1, %struct.TYPE_10__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @svn_dirent_get_absolute(i8** %17, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %17, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call %struct.TYPE_11__* @svn_wc__db_is_switched(i64* %14, i64* %15, i64* %16, i32 %25, i8* %26, i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %18, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %6
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %45 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %7, align 8
  br label %75

46:                                               ; preds = %37, %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %48 = call i32 @svn_error_clear(%struct.TYPE_11__* %47)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %46, %6
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* @svn_node_dir, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %54
  %62 = load i8**, i8*** %8, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @svn_dirent_split(i8** %62, i8** %63, i8* %64, i32* %65)
  br label %73

67:                                               ; preds = %57
  %68 = load i32*, i32** %12, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i8* @apr_pstrdup(i32* %68, i8* %69)
  %71 = load i8**, i8*** %8, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %7, align 8
  br label %75

75:                                               ; preds = %73, %43
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__db_is_switched(i64*, i64*, i64*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
