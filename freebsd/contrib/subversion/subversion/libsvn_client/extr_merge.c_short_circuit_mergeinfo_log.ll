; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_short_circuit_mergeinfo_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_short_circuit_mergeinfo_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_ERR_CEASE_INVOCATION = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i32, i8*, i32*, i8*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*)* @short_circuit_mergeinfo_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @short_circuit_mergeinfo_log(i32* %0, i32 %1, i8* %2, i32* %3, i8* %4, i32* %5, i32* %6, i32* %7, i32 %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_10__*, align 8
  %32 = alloca i8*, align 8
  store i32* %0, i32** %16, align 8
  store i32 %1, i32* %17, align 4
  store i8* %2, i8** %18, align 8
  store i32* %3, i32** %19, align 8
  store i8* %4, i8** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %33 = load i32*, i32** %27, align 8
  %34 = load i32*, i32** %29, align 8
  %35 = call i32 @svn_ra_get_session_url(i32* %33, i8** %32, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %29, align 8
  %38 = call i32* @apr_array_make(i32* %37, i32 0, i32 8)
  store i32* %38, i32** %30, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i8*, i8** %18, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i8*, i8** %20, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = load i32*, i32** %22, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = load i32, i32* %24, align 4
  %48 = load i32*, i32** %25, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32, i32* @svn_depth_infinity, align 4
  %51 = load i32*, i32** %30, align 8
  %52 = load i32*, i32** %26, align 8
  %53 = load i32*, i32** %27, align 8
  %54 = load i32*, i32** %28, align 8
  %55 = load i32*, i32** %29, align 8
  %56 = call %struct.TYPE_10__* @svn_client__mergeinfo_log(i32 %39, i8* %40, i32* %41, i32* %42, i8* %43, i32* %44, i32* %45, i32* %46, i32 %47, i32* %48, i32 %49, i32 %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %31, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %58 = load i32*, i32** %27, align 8
  %59 = load i8*, i8** %32, align 8
  %60 = load i32*, i32** %29, align 8
  %61 = call i32 @svn_ra_reparent(i32* %58, i8* %59, i32* %60)
  %62 = call %struct.TYPE_10__* @svn_error_compose_create(%struct.TYPE_10__* %57, i32 %61)
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %31, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %14
  %66 = load i32*, i32** %25, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @SVN_IS_VALID_REVNUM(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SVN_ERR_CEASE_INVOCATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %78 = call i32 @svn_error_clear(%struct.TYPE_10__* %77)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %31, align 8
  br label %82

79:                                               ; preds = %70, %65
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %81 = call %struct.TYPE_10__* @svn_error_trace(%struct.TYPE_10__* %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %15, align 8
  br label %85

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %14
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %15, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  ret %struct.TYPE_10__* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @svn_client__mergeinfo_log(i32, i8*, i32*, i32*, i8*, i32*, i32*, i32*, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_error_compose_create(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_error_trace(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
