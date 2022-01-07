; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_paths_changed2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_paths_changed2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (i32**, %struct.TYPE_17__*, i32*)* }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i64 }

@SVN_FS_EMULATE_PATHS_CHANGED = common dso_local global i64 0, align 8
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_paths_changed2(i32** %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32 (i32**, %struct.TYPE_17__*, i32*)*, i32 (i32**, %struct.TYPE_17__*, i32*)** %19, align 8
  %21 = icmp ne i32 (i32**, %struct.TYPE_17__*, i32*)* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @SVN_FS_EMULATE_PATHS_CHANGED, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ true, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %146

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @svn_pool_create(i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @svn_hash__make(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @svn_fs_paths_changed3(i32** %10, %struct.TYPE_17__* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @svn_fs_path_change_get(%struct.TYPE_18__** %11, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %104, %30
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %141

46:                                               ; preds = %43
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %15, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @svn_fs_path_change_delete, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @svn_fs__get_deleted_node(%struct.TYPE_17__** %15, i8** %14, %struct.TYPE_17__* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %57, %46
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @svn_fs_node_id(i32** %13, %struct.TYPE_17__* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call %struct.TYPE_19__* @svn_fs_path_change2_create(i32* %70, i32 %73, i32* %74)
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %12, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 6
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %64
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @SVN_IS_VALID_REVNUM(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @apr_pstrdup(i32* %97, i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %91, %85, %64
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @apr_pstrmemdup(i32* %126, i8* %130, i32 %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %137 = call i32 @svn_hash_sets(i32* %125, i32 %135, %struct.TYPE_19__* %136)
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @svn_fs_path_change_get(%struct.TYPE_18__** %11, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  br label %43

141:                                              ; preds = %43
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @svn_pool_destroy(i32* %142)
  %144 = load i32*, i32** %9, align 8
  %145 = load i32**, i32*** %4, align 8
  store i32* %144, i32** %145, align 8
  br label %157

146:                                              ; preds = %25
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32 (i32**, %struct.TYPE_17__*, i32*)*, i32 (i32**, %struct.TYPE_17__*, i32*)** %150, align 8
  %152 = load i32**, i32*** %4, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 %151(i32** %152, %struct.TYPE_17__* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %157

157:                                              ; preds = %146, %141
  %158 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %158
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_hash__make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_paths_changed3(i32**, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_path_change_get(%struct.TYPE_18__**, i32*) #1

declare dso_local i32 @svn_fs__get_deleted_node(%struct.TYPE_17__**, i8**, %struct.TYPE_17__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_node_id(i32**, %struct.TYPE_17__*, i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_fs_path_change2_create(i32*, i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
