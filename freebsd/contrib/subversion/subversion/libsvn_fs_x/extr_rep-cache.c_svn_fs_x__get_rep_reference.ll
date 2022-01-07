; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_svn_fs_x__get_rep_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_rep-cache.c_svn_fs_x__get_rep_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i8*, i8*, i32, i32 }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Only SHA1 checksums can be used as keys in the rep_cache table.\0A\00", align 1
@STMT_GET_REP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Checksum '%s' in rep-cache is beyond HEAD\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_rep_reference(%struct.TYPE_15__** %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %12, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_fs_x__open_rep_cache(%struct.TYPE_17__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %29, %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @svn_checksum_sha1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %43 = call i32* @svn_error_create(i32 %41, i32* null, i32 %42)
  store i32* %43, i32** %6, align 8
  br label %124

44:                                               ; preds = %34
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STMT_GET_REP, align 4
  %49 = call i32 @svn_sqlite__get_statement(i32** %13, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_checksum_to_cstring(%struct.TYPE_18__* %52, i32* %53)
  %55 = call i32 @svn_sqlite__bindf(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @svn_sqlite__step(i64* %14, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %44
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_15__* @apr_pcalloc(i32* %63, i32 40)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %15, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @svn_sqlite__column_revnum(i32* %75, i32 0)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i8* @svn_sqlite__column_int64(i32* %80, i32 1)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i8* @svn_sqlite__column_int64(i32* %85, i32 2)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i8* @svn_sqlite__column_int64(i32* %89, i32 3)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %94

93:                                               ; preds = %44
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  br label %94

94:                                               ; preds = %93, %62
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @svn_sqlite__reset(i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %99 = icmp ne %struct.TYPE_15__* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %94
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @svn_fs_x__get_revnum(i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32* @svn_fs_x__ensure_revision_exists(i32 %106, %struct.TYPE_17__* %107, i32* %108)
  store i32* %109, i32** %17, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %114 = load i32*, i32** %17, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @svn_checksum_to_cstring_display(%struct.TYPE_18__* %115, i32* %116)
  %118 = call i32* @svn_error_createf(i32 %113, i32* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  store i32* %118, i32** %6, align 8
  br label %124

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %94
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %122 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %122, align 8
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %123, i32** %6, align 8
  br label %124

124:                                              ; preds = %120, %112, %40
  %125 = load i32*, i32** %6, align 8
  ret i32* %125
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__open_rep_cache(%struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local %struct.TYPE_15__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32* @svn_fs_x__ensure_revision_exists(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_to_cstring_display(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
