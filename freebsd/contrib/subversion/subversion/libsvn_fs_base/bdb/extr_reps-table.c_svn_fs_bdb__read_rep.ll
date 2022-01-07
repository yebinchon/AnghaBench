; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_reps-table.c_svn_fs_bdb__read_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_reps-table.c_svn_fs_bdb__read_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"representations\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REPRESENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No such representation '%s'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"reading representation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__read_rep(i32** %0, %struct.TYPE_15__* %1, i8* %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__, align 4
  %16 = alloca %struct.TYPE_17__, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %12, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_14__* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_13__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32, i32)** %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_17__* %15, i8* %33)
  %35 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_17__* %16)
  %36 = call i32 %26(%struct.TYPE_13__* %29, i32 %32, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %14, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_17__* %16, i32* %37)
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @DB_NOTFOUND, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REPRESENTATION, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %9, align 8
  %46 = call i32* @svn_error_createf(i32 %43, i32 0, i32 %44, i8* %45)
  store i32* %46, i32** %6, align 8
  br label %63

47:                                               ; preds = %5
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @BDB_WRAP(%struct.TYPE_15__* %48, i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @svn_skel__parse(i32 %54, i32 %56, i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32* @svn_fs_base__parse_representation_skel(i32** %59, i32* %60, i32* %61)
  store i32* %62, i32** %6, align 8
  br label %63

63:                                               ; preds = %47, %42
  %64 = load i32*, i32** %6, align 8
  ret i32* %64
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_17__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32* @svn_fs_base__parse_representation_skel(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
