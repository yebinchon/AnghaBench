; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_retrieve_baseline_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_retrieve_baseline_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@baseline_props = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"baseline-collection\00", align 1
@SVN_ERR_RA_DAV_PROPS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"The PROPFIND response did not include the requested baseline-collection value\00", align 1
@SVN_DAV__VERSION_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"The PROPFIND response did not include the requested version-name value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i8**, i32*, i8*, i64, i32*, i32*)* @retrieve_baseline_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @retrieve_baseline_info(i64* %0, i8** %1, i32* %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i32, i32* @baseline_props, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i32 @svn_ra_serf__fetch_node_props(i32** %16, i32* %21, i8* %22, i64 %23, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %16, align 8
  %30 = call i32* @apr_hash_get(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i8* @svn_prop_get_value(i32* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %18, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @SVN_ERR_RA_DAV_PROPS_NOT_FOUND, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32* @svn_error_create(i32 %36, i32* null, i32 %37)
  store i32* %38, i32** %8, align 8
  br label %73

39:                                               ; preds = %7
  %40 = load i8*, i8** %18, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = call i8* @svn_urlpath__canonicalize(i8* %40, i32* %41)
  %43 = load i8**, i8*** %10, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load i32*, i32** %17, align 8
  %48 = load i8*, i8** @SVN_DAV__VERSION_NAME, align 8
  %49 = call i8* @svn_prop_get_value(i32* %47, i8* %48)
  store i8* %49, i8** %19, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i8*, i8** %19, align 8
  %54 = call i32 @svn_cstring_atoi64(i64* %20, i8* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %20, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i8*, i8** %19, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @SVN_IS_VALID_REVNUM(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* @SVN_ERR_RA_DAV_PROPS_NOT_FOUND, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32* @svn_error_create(i32 %67, i32* null, i32 %68)
  store i32* %69, i32** %8, align 8
  br label %73

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %8, align 8
  br label %73

73:                                               ; preds = %71, %66, %35
  %74 = load i32*, i32** %8, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__fetch_node_props(i32**, i32*, i8*, i64, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i8* @svn_prop_get_value(i32*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
