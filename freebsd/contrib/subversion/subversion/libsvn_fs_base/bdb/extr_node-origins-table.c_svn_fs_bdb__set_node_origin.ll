; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_node-origins-table.c_svn_fs_bdb__set_node_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_node-origins-table.c_svn_fs_bdb__set_node_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, i32, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32)* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"node-origins\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"Node origin for '%s' exists in filesystem '%s' with a different value (%s) than what we were about to store (%s)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"storing node-origins record\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__set_node_origin(%struct.TYPE_26__* %0, i8* %1, i32* %2, %struct.TYPE_24__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca %struct.TYPE_28__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_28__* %13, i8* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %24 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_24__* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, i32, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_28__* %14)
  %37 = call i32 %29(%struct.TYPE_23__* %32, i32 %35, %struct.TYPE_28__* %13, i32 %36, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_28__* %14, i32* %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DB_NOTFOUND, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %5
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call %struct.TYPE_25__* @svn_fs_base__id_unparse(i32* %44, i32* %45)
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call %struct.TYPE_25__* @svn_string_ncreate(i32 %48, i32 %50, i32* %51)
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %17, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %55 = call i32 @svn_string_compare(%struct.TYPE_25__* %53, %struct.TYPE_25__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @svn_error_createf(i32 %58, i32* null, i32 %59, i8* %60, i32 %63, i32 %66, i32 %69)
  store i32* %70, i32** %6, align 8
  br label %94

71:                                               ; preds = %43
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %6, align 8
  br label %94

73:                                               ; preds = %5
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @svn_fs_base__id_to_dbt(%struct.TYPE_28__* %14, i32* %74, i32* %75)
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_24__* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %80 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32)** %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 %85(%struct.TYPE_23__* %88, i32 %91, %struct.TYPE_28__* %13, %struct.TYPE_28__* %14, i32 0)
  %93 = call i32* @BDB_WRAP(%struct.TYPE_26__* %79, i32 %80, i32 %92)
  store i32* %93, i32** %6, align 8
  br label %94

94:                                               ; preds = %73, %71, %57
  %95 = load i32*, i32** %6, align 8
  ret i32* %95
}

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_28__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_fs_base__id_unparse(i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_string_ncreate(i32, i32, i32*) #1

declare dso_local i32 @svn_string_compare(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__id_to_dbt(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
