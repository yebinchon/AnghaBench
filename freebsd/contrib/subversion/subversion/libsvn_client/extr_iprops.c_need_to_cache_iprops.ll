; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_iprops.c_need_to_cache_iprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_iprops.c_need_to_cache_iprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i64*, i8*, i32*, %struct.TYPE_11__*, i32*)* @need_to_cache_iprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @need_to_cache_iprops(i64* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.TYPE_10__* @svn_wc_check_root(i64* %12, i64* %13, i32* null, i32 %19, i8* %20, i32* %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %14, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %33 = call i32 @svn_error_clear(%struct.TYPE_10__* %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %13, align 8
  br label %39

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %38 = call %struct.TYPE_10__* @svn_error_trace(%struct.TYPE_10__* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %6, align 8
  br label %67

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i64, i64* @FALSE, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45, %40
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_ra_get_session_url(i32* %49, i8** %15, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_ra_get_repos_root2(i32* %53, i8** %16, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i64 @strcmp(i8* %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i64, i64* @TRUE, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %6, align 8
  br label %67

67:                                               ; preds = %65, %36
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %68
}

declare dso_local %struct.TYPE_10__* @svn_wc_check_root(i64*, i64*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_error_trace(%struct.TYPE_10__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
