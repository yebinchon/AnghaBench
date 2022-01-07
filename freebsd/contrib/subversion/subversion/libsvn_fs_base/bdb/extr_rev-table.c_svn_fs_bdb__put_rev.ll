; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__put_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_rev-table.c_svn_fs_bdb__put_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"revisions\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"updating filesystem revision\00", align 1
@DB_APPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"storing filesystem revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__put_rev(i64* %0, %struct.TYPE_11__* %1, i32* %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %12, align 8
  store i64 0, i64* %14, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* @svn_fs_base__unparse_revision_skel(i32** %15, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32* %25)
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @SVN_IS_VALID_REVNUM(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %5
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @svn_fs_base__set_dbt(i32* %18, i64* %14, i32 8)
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @svn_fs_base__skel_to_dbt(i32* %19, i32* %49, i32* %50)
  %52 = call i32 %41(%struct.TYPE_13__* %44, i32 %47, i32 %48, i32 %51, i32 0)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %13, align 4
  %56 = call i32* @BDB_WRAP(%struct.TYPE_11__* %53, i32 %54, i32 %55)
  store i32* %56, i32** %6, align 8
  br label %86

57:                                               ; preds = %5
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @svn_fs_base__recno_dbt(i32* %16, i64* %14)
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_fs_base__skel_to_dbt(i32* %17, i32* %72, i32* %73)
  %75 = load i32, i32* @DB_APPEND, align 4
  %76 = call i32 %64(%struct.TYPE_13__* %67, i32 %70, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %13, align 4
  %80 = call i32* @BDB_WRAP(%struct.TYPE_11__* %77, i32 %78, i32 %79)
  %81 = call i32 @SVN_ERR(i32* %80)
  %82 = load i64, i64* %14, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %57, %31
  %87 = load i32*, i32** %6, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_base__unparse_revision_skel(i32**, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__set_dbt(i32*, i64*, i32) #1

declare dso_local i32 @svn_fs_base__skel_to_dbt(i32*, i32*, i32*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__recno_dbt(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
