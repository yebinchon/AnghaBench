; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8*, i32*, i32, i8*, i32* }

@FALSE = common dso_local global i8* null, align 8
@SVN_CONFIG_SECTION_WORKING_COPY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_SQLITE_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@APR_INT32_MAX = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_open(%struct.TYPE_4__** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call %struct.TYPE_4__* @apr_pcalloc(i32* %16, i32 56)
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  store i32* %19, i32** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @apr_hash_make(i32* %34)
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32* %39, i32** %42, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %85

45:                                               ; preds = %6
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** %14, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @SVN_CONFIG_SECTION_WORKING_COPY, align 4
  %49 = load i32, i32* @SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE, align 4
  %50 = load i8*, i8** @FALSE, align 8
  %51 = call i32* @svn_config_get_bool(i32* %47, i8** %14, i32 %48, i32 %49, i8* %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_error_clear(i32* %55)
  br label %62

57:                                               ; preds = %45
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @SVN_CONFIG_SECTION_WORKING_COPY, align 4
  %65 = load i32, i32* @SVN_CONFIG_OPTION_SQLITE_BUSY_TIMEOUT, align 4
  %66 = call i32* @svn_config_get_int64(i32* %63, i64* %15, i32 %64, i32 %65, i32 0)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %15, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @APR_INT32_MAX, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %69, %62
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @svn_error_clear(i32* %77)
  br label %84

79:                                               ; preds = %72
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %6
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_config_get_bool(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_config_get_int64(i32*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
