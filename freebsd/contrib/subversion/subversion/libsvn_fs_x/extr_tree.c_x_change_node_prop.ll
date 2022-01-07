; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_change_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_change_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i8*, i8*, i32*, i32*)* @x_change_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_change_node_prop(%struct.TYPE_12__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %16, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_12__* %27)
  store i32* %28, i32** %6, align 8
  br label %159

29:                                               ; preds = %5
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_12__* %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_11__** %12, %struct.TYPE_12__* %32, i8* %33, i32 0, i64 %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @FALSE, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @svn_fs_x__allow_locked_operation(i8* %46, i32 %49, i64 %50, i64 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %45, %29
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @svn_fs_x__make_path_mutable(%struct.TYPE_12__* %56, %struct.TYPE_11__* %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @svn_fs_x__dag_get_proplist(i32** %13, i32 %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %13, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %55
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %6, align 8
  br label %159

77:                                               ; preds = %72, %55
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %16, align 8
  %82 = call i32* @apr_hash_make(i32* %81)
  store i32* %82, i32** %13, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %86 = call i64 @strcmp(i8* %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @svn_fs_x__dag_has_mergeinfo(i32 %91)
  store i64 %92, i64* %18, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i64, i64* %18, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* %17, align 4
  br label %107

99:                                               ; preds = %95, %88
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %18, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -1, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %102, %99
  br label %107

107:                                              ; preds = %106, %98
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_11__* %111, i32 %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @svn_fs_x__dag_set_has_mergeinfo(i32 %118, i32 %121, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  br label %125

125:                                              ; preds = %110, %107
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %15, align 8
  br label %127

127:                                              ; preds = %125, %83
  %128 = load i32*, i32** %13, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @svn_hash_sets(i32* %128, i8* %129, i32* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @svn_fs_x__dag_set_proplist(i32 %134, i32* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* @svn_fs_path_change_modify, align 4
  %145 = load i64, i64* @FALSE, align 8
  %146 = load i64, i64* @TRUE, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @svn_fs_x__dag_node_kind(i32 %150)
  %152 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %153 = load i32*, i32** %16, align 8
  %154 = call i32 @add_change(i32 %141, i32 %142, i8* %143, i32 %144, i64 %145, i64 %146, i64 %147, i32 %151, i32 %152, i32* null, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  %156 = load i32*, i32** %16, align 8
  %157 = call i32 @svn_pool_destroy(i32* %156)
  %158 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %158, i32** %6, align 8
  br label %159

159:                                              ; preds = %127, %75, %26
  %160 = load i32*, i32** %6, align 8
  ret i32* %160
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_11__**, %struct.TYPE_12__*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__allow_locked_operation(i8*, i32, i64, i64, i32*) #1

declare dso_local i32 @svn_fs_x__make_path_mutable(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_get_proplist(i32**, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @svn_fs_x__dag_has_mergeinfo(i32) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__dag_set_has_mergeinfo(i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_set_proplist(i32, i32*, i32*) #1

declare dso_local i32 @add_change(i32, i32, i8*, i32, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_node_kind(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
