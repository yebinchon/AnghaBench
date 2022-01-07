; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_get_baseline_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_get_baseline_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s/%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.TYPE_8__*, i32, i32*, i32*)* @get_baseline_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_baseline_info(i8** %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_8__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @SVN_IS_VALID_REVNUM(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %30

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_ra_serf__v2_get_youngest_revnum(i32* %25, %struct.TYPE_8__* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @apr_psprintf(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %90

39:                                               ; preds = %6
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_ra_serf__discover_vcc(i8** %13, %struct.TYPE_8__* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @SVN_IS_VALID_REVNUM(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %39
  %48 = load i8**, i8*** %7, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_ra_serf__blncache_get_bc_url(i8** %48, i32 %51, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %47
  %60 = load i8**, i8*** %7, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @retrieve_baseline_info(i32* null, i8** %60, %struct.TYPE_8__* %61, i8* %62, i32 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @svn_ra_serf__blncache_set(i32 %70, i32* null, i32 %71, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %59, %47
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %89

80:                                               ; preds = %39
  %81 = load i32*, i32** %8, align 8
  %82 = load i8**, i8*** %7, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @v1_get_youngest_revnum(i32* %81, i8** %82, %struct.TYPE_8__* %83, i8* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %80, %77
  br label %90

90:                                               ; preds = %89, %30
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %91
}

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_8__*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__v2_get_youngest_revnum(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @svn_ra_serf__discover_vcc(i8**, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_ra_serf__blncache_get_bc_url(i8**, i32, i32, i32*) #1

declare dso_local i32 @retrieve_baseline_info(i32*, i8**, %struct.TYPE_8__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__blncache_set(i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @v1_get_youngest_revnum(i32*, i8**, %struct.TYPE_8__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
