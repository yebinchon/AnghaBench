; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_svn_fs_fs__get_rep_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_rep-cache.c_svn_fs_fs__get_rep_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

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
define dso_local i32* @svn_fs_fs__get_rep_reference(%struct.TYPE_17__** %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %10, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_fs_fs__open_rep_cache(%struct.TYPE_15__* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @svn_checksum_sha1, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %40 = call i32* @svn_error_create(i32 %38, i32* null, i32 %39)
  store i32* %40, i32** %5, align 8
  br label %124

41:                                               ; preds = %31
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @STMT_GET_REP, align 4
  %46 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %44, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @svn_checksum_to_cstring(%struct.TYPE_16__* %49, i32* %50)
  %52 = call i32 @svn_sqlite__bindf(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_sqlite__step(i64* %12, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %41
  %60 = load i32*, i32** %9, align 8
  %61 = call %struct.TYPE_17__* @apr_pcalloc(i32* %60, i32 48)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %13, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 6
  %64 = call i32 @svn_fs_fs__id_txn_reset(i32* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @svn_sqlite__column_revnum(i32* %75, i32 0)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i8* @svn_sqlite__column_int64(i32* %79, i32 1)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i8* @svn_sqlite__column_int64(i32* %83, i32 2)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i8* @svn_sqlite__column_int64(i32* %87, i32 3)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %92

91:                                               ; preds = %41
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @svn_sqlite__reset(i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %97 = icmp ne %struct.TYPE_17__* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @svn_fs_fs__fixup_expanded_size(%struct.TYPE_15__* %99, %struct.TYPE_17__* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @svn_fs_fs__ensure_revision_exists(i32 %106, %struct.TYPE_15__* %107, i32* %108)
  store i32* %109, i32** %14, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %98
  %113 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @svn_checksum_to_cstring_display(%struct.TYPE_16__* %115, i32* %116)
  %118 = call i32* @svn_error_createf(i32 %113, i32* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  store i32* %118, i32** %5, align 8
  br label %124

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %122 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* %121, %struct.TYPE_17__** %122, align 8
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %123, i32** %5, align 8
  br label %124

124:                                              ; preds = %120, %112, %37
  %125 = load i32*, i32** %5, align 8
  ret i32* %125
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__open_rep_cache(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_to_cstring(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local %struct.TYPE_17__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_reset(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_fs_fs__fixup_expanded_size(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_fs_fs__ensure_revision_exists(i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i32 @svn_checksum_to_cstring_display(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
