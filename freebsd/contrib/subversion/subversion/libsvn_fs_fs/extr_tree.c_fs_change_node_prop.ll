; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_change_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_change_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*, i8*, i32*, i32*)* @fs_change_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_change_node_prop(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_11__* %24)
  store i32* %25, i32** %6, align 8
  br label %163

26:                                               ; preds = %5
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = call i32* @root_txn_id(%struct.TYPE_11__* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i8* @svn_fs__canonicalize_abspath(i8* %29, i32* %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @open_path(%struct.TYPE_12__** %12, %struct.TYPE_11__* %32, i8* %33, i32 0, i64 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %26
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @FALSE, align 8
  %50 = load i64, i64* @FALSE, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_fs_fs__allow_locked_operation(i8* %45, i32 %48, i64 %49, i64 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %44, %26
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @make_path_mutable(%struct.TYPE_11__* %55, %struct.TYPE_12__* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @svn_fs_fs__dag_get_proplist(i32** %13, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %54
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %6, align 8
  br label %163

74:                                               ; preds = %69, %54
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @apr_hash_make(i32* %78)
  store i32* %79, i32** %13, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @svn_fs_fs__fs_supports_mergeinfo(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %131

86:                                               ; preds = %80
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %89 = call i64 @strcmp(i8* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @svn_fs_fs__dag_has_mergeinfo(i64* %17, i32 %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i64, i64* %17, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 1, i32* %16, align 4
  br label %111

103:                                              ; preds = %99, %91
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %17, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 -1, i32* %16, align 4
  br label %110

110:                                              ; preds = %109, %106, %103
  br label %111

111:                                              ; preds = %110, %102
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_12__* %115, i32 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @svn_fs_fs__dag_set_has_mergeinfo(i32 %122, i32 %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %114, %111
  %130 = load i64, i64* @TRUE, align 8
  store i64 %130, i64* %15, align 8
  br label %131

131:                                              ; preds = %129, %86, %80
  %132 = load i32*, i32** %13, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @svn_hash_sets(i32* %132, i8* %133, i32* %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @svn_fs_fs__dag_set_proplist(i32 %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %14, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @svn_fs_fs__dag_get_id(i32 %150)
  %152 = load i32, i32* @svn_fs_path_change_modify, align 4
  %153 = load i64, i64* @FALSE, align 8
  %154 = load i64, i64* @TRUE, align 8
  %155 = load i64, i64* %15, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @svn_fs_fs__dag_node_kind(i32 %158)
  %160 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %161 = load i32*, i32** %11, align 8
  %162 = call i32* @add_change(i32 %145, i32* %146, i8* %147, i32 %151, i32 %152, i64 %153, i64 %154, i64 %155, i32 %159, i32 %160, i32* null, i32* %161)
  store i32* %162, i32** %6, align 8
  br label %163

163:                                              ; preds = %131, %72, %23
  %164 = load i32*, i32** %6, align 8
  ret i32* %164
}

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_11__*) #1

declare dso_local i32* @root_txn_id(%struct.TYPE_11__*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_12__**, %struct.TYPE_11__*, i8*, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__allow_locked_operation(i8*, i32, i64, i64, i32*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_proplist(i32**, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64 @svn_fs_fs__fs_supports_mergeinfo(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_fs_fs__dag_has_mergeinfo(i64*, i32) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_set_has_mergeinfo(i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_set_proplist(i32, i32*, i32*) #1

declare dso_local i32* @add_change(i32, i32*, i8*, i32, i32, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32) #1

declare dso_local i32 @svn_fs_fs__dag_node_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
