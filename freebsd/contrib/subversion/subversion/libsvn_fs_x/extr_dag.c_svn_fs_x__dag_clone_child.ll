; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_clone_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_clone_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Attempted to make a child clone with an illegal name '%s'\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Attempted to open non-existent child node '%s'\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_clone_child(%struct.TYPE_14__** %0, %struct.TYPE_14__* %1, i8* %2, i8* %3, i32* %4, i32 %5, i64 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = call i32* @svn_fs_x__dag_get_fs(%struct.TYPE_14__* %25)
  store i32* %26, i32** %22, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %28 = call i64 @svn_fs_x__dag_check_mutable(%struct.TYPE_14__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %9
  %31 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %32 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %31, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %10, align 8
  br label %136

33:                                               ; preds = %9
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @svn_path_is_single_path_component(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %38, i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32* %40, i32** %10, align 8
  br label %136

41:                                               ; preds = %33
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = call i32 @svn_fs_x__dag_open(%struct.TYPE_14__** %20, %struct.TYPE_14__* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %51, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32* %53, i32** %10, align 8
  br label %136

54:                                               ; preds = %41
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %56 = call i64 @svn_fs_x__dag_check_mutable(%struct.TYPE_14__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %60 = call i32* @svn_fs_x__dag_get_id(%struct.TYPE_14__* %59)
  store i32* %60, i32** %21, align 8
  br label %129

61:                                               ; preds = %54
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %23, align 8
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %24, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %19, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @apr_pstrdup(i32* %76, i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %67, %61
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 7
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = call i32 @svn_fspath__join(i8* %98, i8* %99, i32* %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %83
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  store i32* %108, i32** %15, align 8
  br label %109

109:                                              ; preds = %106, %83
  %110 = load i32*, i32** %22, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @svn_fs_x__create_successor(i32* %110, %struct.TYPE_13__* %111, i32* %112, i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  store i32* %118, i32** %21, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load i32*, i32** %21, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @set_entry(%struct.TYPE_14__* %119, i8* %120, i32* %121, i32 %124, i32 %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %109, %58
  %130 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = load i32*, i32** %21, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = call i32* @svn_fs_x__dag_get_node(%struct.TYPE_14__** %130, i32* %131, i32* %132, i32* %133, i32* %134)
  store i32* %135, i32** %10, align 8
  br label %136

136:                                              ; preds = %129, %50, %37, %30
  %137 = load i32*, i32** %10, align 8
  ret i32* %137
}

declare dso_local i32* @svn_fs_x__dag_get_fs(%struct.TYPE_14__*) #1

declare dso_local i64 @svn_fs_x__dag_check_mutable(%struct.TYPE_14__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, ...) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__dag_open(%struct.TYPE_14__**, %struct.TYPE_14__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_x__dag_get_id(%struct.TYPE_14__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__create_successor(i32*, %struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @set_entry(%struct.TYPE_14__*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_fs_x__dag_get_node(%struct.TYPE_14__**, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
