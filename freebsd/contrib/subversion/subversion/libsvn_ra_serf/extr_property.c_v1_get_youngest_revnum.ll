; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_v1_get_youngest_revnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_v1_get_youngest_revnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"checked-in\00", align 1
@SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"The OPTIONS response did not include the requested checked-in value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, %struct.TYPE_5__*, i8*, i32*, i32*)* @v1_get_youngest_revnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @v1_get_youngest_revnum(i32* %0, i8** %1, %struct.TYPE_5__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @svn_ra_serf__fetch_dav_prop(i8** %14, %struct.TYPE_5__* %16, i8* %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %7, align 8
  br label %72

29:                                               ; preds = %6
  %30 = load i8*, i8** %14, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i8* @svn_urlpath__canonicalize(i8* %30, i32* %31)
  store i8* %32, i8** %14, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @svn_ra_serf__blncache_get_baseline_info(i8** %15, i32* %33, i32 %36, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %29
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @retrieve_baseline_info(i32* %44, i8** %15, %struct.TYPE_5__* %45, i8* %46, i32 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @svn_ra_serf__blncache_set(i32 %54, i8* %55, i32 %57, i8* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %43, %29
  %63 = load i8**, i8*** %9, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i8* @apr_pstrdup(i32* %66, i8* %67)
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %70, %25
  %73 = load i32*, i32** %7, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__fetch_dav_prop(i8**, %struct.TYPE_5__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_ra_serf__blncache_get_baseline_info(i8**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @retrieve_baseline_info(i32*, i8**, %struct.TYPE_5__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__blncache_set(i32, i8*, i32, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
