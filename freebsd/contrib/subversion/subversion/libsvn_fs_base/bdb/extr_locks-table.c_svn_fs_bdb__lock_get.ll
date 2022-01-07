; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__lock_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__lock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, i32, i32, i32, i32)* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"reading lock\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__lock_get(%struct.TYPE_23__** %0, %struct.TYPE_24__* %1, i8* %2, %struct.TYPE_22__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_26__, align 4
  %14 = alloca %struct.TYPE_26__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %12, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_22__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_26__* %13, i8* %34)
  %36 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_26__* %14)
  %37 = call i32 %27(%struct.TYPE_21__* %30, i32 %33, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_26__* %14, i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DB_NOTFOUND, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32* @svn_fs_base__err_bad_lock_token(%struct.TYPE_24__* %44, i8* %45)
  store i32* %46, i32** %6, align 8
  br label %94

47:                                               ; preds = %5
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %49 = call i32 @N_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @BDB_WRAP(%struct.TYPE_24__* %48, i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @svn_skel__parse(i32 %54, i32 %56, i32* %57)
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %47
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32* @svn_fs_base__err_corrupt_lock(%struct.TYPE_24__* %62, i8* %63)
  store i32* %64, i32** %6, align 8
  br label %94

65:                                               ; preds = %47
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @svn_fs_base__parse_lock_skel(%struct.TYPE_23__** %17, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %65
  %75 = call i64 (...) @apr_time_now()
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @svn_fs_bdb__lock_delete(%struct.TYPE_24__* %81, i8* %82, %struct.TYPE_22__* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32* @SVN_FS__ERR_LOCK_EXPIRED(%struct.TYPE_24__* %87, i8* %88)
  store i32* %89, i32** %6, align 8
  br label %94

90:                                               ; preds = %74, %65
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %92 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_23__* %91, %struct.TYPE_23__** %92, align 8
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %6, align 8
  br label %94

94:                                               ; preds = %90, %80, %61, %43
  %95 = load i32*, i32** %6, align 8
  ret i32* %95
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_22__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_26__*, i32*) #1

declare dso_local i32* @svn_fs_base__err_bad_lock_token(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32* @svn_fs_base__err_corrupt_lock(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @svn_fs_base__parse_lock_skel(%struct.TYPE_23__**, i32*, i32*) #1

declare dso_local i64 @apr_time_now(...) #1

declare dso_local i32 @svn_fs_bdb__lock_delete(%struct.TYPE_24__*, i8*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32* @SVN_FS__ERR_LOCK_EXPIRED(%struct.TYPE_24__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
