; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_svn_fs_bdb__open_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_env.c_svn_fs_bdb__open_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@SVN_ERR_FS_BERKELEY_DB = common dso_local global i32 0, align 4
@DB_RUNRECOVERY = common dso_local global i32 0, align 4
@DB_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Reopening a public Berkeley DB environment with private attributes\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Reopening a private Berkeley DB environment with public attributes\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Reopening a Berkeley DB environment with different attributes\00", align 1
@bdb_cache_pool = common dso_local global i32 0, align 4
@bdb_cache = common dso_local global i32 0, align 4
@cleanup_env_baton = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__**, i8*, i32, i32, i32*)* @svn_fs_bdb__open_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_fs_bdb__open_internal(%struct.TYPE_14__** %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @bdb_cache_key(i32* %12, i32* null, i8* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = call %struct.TYPE_13__* @bdb_cache_get(i32* %12, i64* %14)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %13, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* @SVN_ERR_FS_BERKELEY_DB, align 4
  %25 = load i32, i32* @DB_RUNRECOVERY, align 4
  %26 = call i8* @db_strerror(i32 %25)
  %27 = call i32* @svn_error_create(i32 %24, i32* null, i8* %26)
  store i32* %27, i32** %6, align 8
  br label %130

28:                                               ; preds = %5
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  %43 = load i32, i32* @DB_PRIVATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DB_PRIVATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @SVN_ERR_FS_BERKELEY_DB, align 4
  %53 = call i32* @svn_error_create(i32 %52, i32* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32* %53, i32** %6, align 8
  br label %130

54:                                               ; preds = %46
  %55 = load i32, i32* @SVN_ERR_FS_BERKELEY_DB, align 4
  %56 = call i32* @svn_error_create(i32 %55, i32* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32* %56, i32** %6, align 8
  br label %130

57:                                               ; preds = %37
  %58 = load i32, i32* @SVN_ERR_FS_BERKELEY_DB, align 4
  %59 = call i32* @svn_error_create(i32 %58, i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32* %59, i32** %6, align 8
  br label %130

60:                                               ; preds = %31, %28
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @bdb_cache_pool, align 4
  %66 = call i32 @svn_pool_create(i32 %65)
  %67 = call i32 @create_env(%struct.TYPE_13__** %13, i8* %64, i32 %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32* @bdb_open(%struct.TYPE_13__* %69, i32 %70, i32 %71)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = call i32 @bdb_close(%struct.TYPE_13__* %76)
  %78 = call i32 @svn_error_clear(i32 %77)
  %79 = load i32*, i32** %15, align 8
  %80 = call i32* @svn_error_trace(i32* %79)
  store i32* %80, i32** %6, align 8
  br label %130

81:                                               ; preds = %63
  %82 = load i32, i32* @bdb_cache, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = call i32 @apr_hash_set(i32 %82, i32* %84, i32 4, %struct.TYPE_13__* %85)
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %97

92:                                               ; preds = %60
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %81
  %98 = load i32*, i32** %11, align 8
  %99 = call %struct.TYPE_14__* @apr_palloc(i32* %98, i32 24)
  %100 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %112 = call %struct.TYPE_15__* @get_error_info(%struct.TYPE_13__* %111)
  %113 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %115, align 8
  %116 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = load i32, i32* @cleanup_env_baton, align 4
  %127 = load i32, i32* @apr_pool_cleanup_null, align 4
  %128 = call i32 @apr_pool_cleanup_register(i32* %123, %struct.TYPE_14__* %125, i32 %126, i32 %127)
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %129, i32** %6, align 8
  br label %130

130:                                              ; preds = %97, %75, %57, %54, %51, %23
  %131 = load i32*, i32** %6, align 8
  ret i32* %131
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @bdb_cache_key(i32*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @bdb_cache_get(i32*, i64*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i8* @db_strerror(i32) #1

declare dso_local i32 @create_env(%struct.TYPE_13__**, i8*, i32) #1

declare dso_local i32 @svn_pool_create(i32) #1

declare dso_local i32* @bdb_open(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @bdb_close(%struct.TYPE_13__*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @apr_hash_set(i32, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @get_error_info(%struct.TYPE_13__*) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
