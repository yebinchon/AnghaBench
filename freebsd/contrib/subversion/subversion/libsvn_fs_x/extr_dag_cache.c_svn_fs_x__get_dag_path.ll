; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__get_dag_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__get_dag_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i64 }

@svn_fs_x__copy_id_inherit_self = common dso_local global i32 0, align 4
@svn_fs_x__dag_path_allow_null = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_fs_x__dag_path_last_optional = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_dag_path(%struct.TYPE_17__** %0, %struct.TYPE_18__* %1, i8* %2, i32 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_16__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %19, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = call i32 @svn_fs_x__root_change_set(%struct.TYPE_18__* %30)
  store i32 %31, i32* %20, align 4
  %32 = load i32*, i32** %15, align 8
  %33 = call i32* @svn_stringbuf_create_ensure(i32 64, i32* %32)
  store i32* %33, i32** %23, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @normalize_path(%struct.TYPE_16__* %22, i8* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = load i32, i32* %20, align 4
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @get_root_node(i32** %17, %struct.TYPE_18__* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %17, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call %struct.TYPE_17__* @make_parent_path(i32* %41, i32* %42, %struct.TYPE_17__* null, i32* %43)
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %18, align 8
  %45 = load i32, i32* @svn_fs_x__copy_id_inherit_self, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %24, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = call i8* @next_entry_name(%struct.TYPE_16__* %22, i32* %51)
  store i8* %52, i8** %21, align 8
  br label %53

53:                                               ; preds = %128, %7
  %54 = load i8*, i8** %21, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %131

56:                                               ; preds = %53
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @svn_pool_clear(i32* %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @svn_fs_x__dag_path_allow_null, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @svn_fs_x__dag_node_kind(i32 %66)
  %68 = load i64, i64* @svn_node_dir, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  br label %131

71:                                               ; preds = %63, %56
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %21, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = load i32*, i32** %19, align 8
  %80 = call i32 @dag_step(i32** %17, %struct.TYPE_18__* %72, i32 %75, i8* %76, %struct.TYPE_16__* %22, i32 %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %17, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @svn_fs_x__dag_path_last_optional, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i64, i64* %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32*, i32** %23, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call %struct.TYPE_17__* @make_parent_path(i32* null, i32* %95, %struct.TYPE_17__* %96, i32* %97)
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %18, align 8
  br label %131

99:                                               ; preds = %89, %84
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @svn_fs_x__dag_path_allow_null, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %18, align 8
  br label %131

105:                                              ; preds = %99
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32* @SVN_FS__NOT_FOUND(%struct.TYPE_18__* %106, i8* %107)
  store i32* %108, i32** %8, align 8
  br label %137

109:                                              ; preds = %71
  %110 = load i32*, i32** %17, align 8
  %111 = load i32*, i32** %23, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = call %struct.TYPE_17__* @make_parent_path(i32* %110, i32* %111, %struct.TYPE_17__* %112, i32* %113)
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %18, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32*, i32** %16, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @get_copy_inheritance(i32* %119, i32* %121, i32* %122, %struct.TYPE_17__* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %127

127:                                              ; preds = %117, %109
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** %23, align 8
  %130 = call i8* @next_entry_name(%struct.TYPE_16__* %22, i32* %129)
  store i8* %130, i8** %21, align 8
  br label %53

131:                                              ; preds = %104, %94, %70, %53
  %132 = load i32*, i32** %19, align 8
  %133 = call i32 @svn_pool_destroy(i32* %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %135 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %8, align 8
  br label %137

137:                                              ; preds = %131, %105
  %138 = load i32*, i32** %8, align 8
  ret i32* %138
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_x__root_change_set(%struct.TYPE_18__*) #1

declare dso_local i32* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @normalize_path(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root_node(i32**, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @make_parent_path(i32*, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i8* @next_entry_name(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @svn_fs_x__dag_node_kind(i32) #1

declare dso_local i32 @dag_step(i32**, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32* @SVN_FS__NOT_FOUND(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @get_copy_inheritance(i32*, i32*, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
