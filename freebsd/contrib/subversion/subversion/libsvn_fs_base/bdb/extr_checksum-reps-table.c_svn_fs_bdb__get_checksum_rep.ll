; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__get_checksum_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_checksum-reps-table.c_svn_fs_bdb__get_checksum_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32, i32, i32, i32)* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Only SHA1 checksums can be used as keys in the checksum-reps table.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"checksum-reps\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__get_checksum_rep(i8** %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, %struct.TYPE_18__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %12, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @svn_checksum_sha1, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_create(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %64

28:                                               ; preds = %5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_18__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = call i32 @svn_fs_base__checksum_to_dbt(%struct.TYPE_22__* %13, %struct.TYPE_20__* %42)
  %44 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_22__* %14)
  %45 = call i32 %35(%struct.TYPE_17__* %38, i32 %41, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_22__* %14, i32* %46)
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @DB_NOTFOUND, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %28
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = call i32* @svn_fs_base__err_no_such_checksum_rep(%struct.TYPE_19__* %52, %struct.TYPE_20__* %53)
  store i32* %54, i32** %6, align 8
  br label %64

55:                                               ; preds = %28
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @apr_pstrmemdup(i32* %56, i32 %58, i32 %60)
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %55, %51, %24
  %65 = load i32*, i32** %6, align 8
  ret i32* %65
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__checksum_to_dbt(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_22__*, i32*) #1

declare dso_local i32* @svn_fs_base__err_no_such_checksum_rep(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
