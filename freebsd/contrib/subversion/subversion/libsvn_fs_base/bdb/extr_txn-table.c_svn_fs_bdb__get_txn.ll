; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_svn_fs_bdb__get_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_txn-table.c_svn_fs_bdb__get_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32, i32, i32, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"reading transaction\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__get_txn(i32** %0, %struct.TYPE_17__* %1, i8* %2, %struct.TYPE_16__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %12, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %22 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_15__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__* %13, i8* %34)
  %36 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_19__* %14)
  %37 = call i32 %27(%struct.TYPE_15__* %30, i32 %33, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_19__* %14, i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DB_NOTFOUND, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32* @svn_fs_base__err_no_such_txn(%struct.TYPE_17__* %44, i8* %45)
  store i32* %46, i32** %6, align 8
  br label %73

47:                                               ; preds = %5
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @BDB_WRAP(%struct.TYPE_17__* %48, i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @svn_skel__parse(i32 %54, i32 %56, i32* %57)
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %47
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32* @svn_fs_base__err_corrupt_txn(%struct.TYPE_17__* %62, i8* %63)
  store i32* %64, i32** %6, align 8
  br label %73

65:                                               ; preds = %47
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @svn_fs_base__parse_transaction_skel(i32** %17, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %17, align 8
  %71 = load i32**, i32*** %7, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %6, align 8
  br label %73

73:                                               ; preds = %65, %61, %43
  %74 = load i32*, i32** %6, align 8
  ret i32* %74
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_19__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_19__*, i32*) #1

declare dso_local i32* @svn_fs_base__err_no_such_txn(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32* @svn_fs_base__err_corrupt_txn(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @svn_fs_base__parse_transaction_skel(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
