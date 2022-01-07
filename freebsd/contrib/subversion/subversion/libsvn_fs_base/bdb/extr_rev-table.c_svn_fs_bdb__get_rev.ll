; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__get_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__get_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, i32, i32, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"revisions\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"reading filesystem revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__get_rev(i32** %0, %struct.TYPE_17__* %1, i64 %2, %struct.TYPE_16__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %18, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @SVN_IS_VALID_REVNUM(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @svn_fs_base__err_dangling_rev(%struct.TYPE_17__* %28, i64 %29)
  store i32* %30, i32** %6, align 8
  br label %83

31:                                               ; preds = %5
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_16__* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_fs_base__set_dbt(%struct.TYPE_19__* %14, i64* %18, i32 8)
  %46 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_19__* %15)
  %47 = call i32 %38(%struct.TYPE_15__* %41, i32 %44, i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_19__* %15, i32* %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DB_NOTFOUND, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32* @svn_fs_base__err_dangling_rev(%struct.TYPE_17__* %54, i64 %55)
  store i32* %56, i32** %6, align 8
  br label %83

57:                                               ; preds = %31
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @BDB_WRAP(%struct.TYPE_17__* %58, i32 %59, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @svn_skel__parse(i32 %64, i32 %66, i32* %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %57
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32* @svn_fs_base__err_corrupt_fs_revision(%struct.TYPE_17__* %72, i64 %73)
  store i32* %74, i32** %6, align 8
  br label %83

75:                                               ; preds = %57
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @svn_fs_base__parse_revision_skel(i32** %17, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %17, align 8
  %81 = load i32**, i32*** %7, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %75, %71, %53, %27
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_fs_base__err_dangling_rev(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__set_dbt(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_19__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32* @svn_fs_base__err_corrupt_fs_revision(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @svn_fs_base__parse_revision_skel(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
