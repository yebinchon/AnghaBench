; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8**, i32, i32*, i8*, i32, i32, i32, i32 }

@sqlite_init_state = common dso_local global i32 0, align 4
@init_sqlite = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [166 x i8] c"PRAGMA case_sensitive_like=1;PRAGMA synchronous=OFF;PRAGMA recursive_triggers=ON;PRAGMA foreign_keys=OFF;PRAGMA locking_mode = NORMAL;PRAGMA journal_mode = TRUNCATE;\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PRAGMA temp_store = MEMORY;\00", align 1
@STMT_INTERNAL_LAST = common dso_local global i32 0, align 4
@close_apr = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SQLITE_DETERMINISTIC = common dso_local global i32 0, align 4
@SQLITE_TESTCTRL_OPTIMIZATIONS = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@collate_ucs_nfd = common dso_local global i32 0, align 4
@glob_ucs_nfd = common dso_local global i32 0, align 4
@like_ucs_nfd = common dso_local global i32 0, align 4
@sqlite_profiler = common dso_local global i32 0, align 4
@sqlite_tracer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__open(%struct.TYPE_10__** %0, i8* %1, i32 %2, i8** %3, i32 %4, i8** %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8** %5, i8*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load i32, i32* @init_sqlite, align 4
  %20 = load i32*, i32** %18, align 8
  %21 = call i32 @svn_atomic__init_once(i32* @sqlite_init_state, i32 %19, i32* null, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %17, align 8
  %24 = call i8* @apr_pcalloc(i32* %23, i32 48)
  %25 = bitcast i8* %24 to %struct.TYPE_10__*
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32*, i32** %18, align 8
  %33 = call i32 @internal_open(%struct.TYPE_10__* %28, i8* %29, i32 %30, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @exec_sql(%struct.TYPE_10__* %36, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32 @SVN_SQLITE__ERR_CLOSE(i32 %37, %struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = call i32 @exec_sql(%struct.TYPE_10__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @svn_error_clear(i32 %43)
  %45 = load i8**, i8*** %13, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %82

47:                                               ; preds = %9
  %48 = load i8**, i8*** %13, align 8
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i8** %48, i8*** %51, align 8
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %59, %47
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8**, i8*** %13, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %13, align 8
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %55

67:                                               ; preds = %55
  %68 = load i32*, i32** %17, align 8
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @STMT_INTERNAL_LAST, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i8* @apr_pcalloc(i32* %68, i32 %77)
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  store i8* %78, i8** %81, align 8
  br label %96

82:                                               ; preds = %9
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* @STMT_INTERNAL_LAST, align 4
  %88 = add nsw i32 0, %87
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = call i8* @apr_pcalloc(i32* %86, i32 %91)
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i8* %92, i8** %95, align 8
  br label %96

96:                                               ; preds = %82, %67
  %97 = load i32*, i32** %17, align 8
  %98 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32* %97, i32** %100, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* @close_apr, align 4
  %105 = load i32, i32* @apr_pool_cleanup_null, align 4
  %106 = call i32 @apr_pool_cleanup_register(i32* %101, %struct.TYPE_10__* %103, i32 %104, i32 %105)
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %107
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_atomic__init_once(i32*, i32, i32*, i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @internal_open(%struct.TYPE_10__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @SVN_SQLITE__ERR_CLOSE(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @exec_sql(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
