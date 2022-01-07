; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_change_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_change_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.change_node_prop_args = type { i32, %struct.TYPE_18__*, i32*, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.TYPE_21__ = type { i32, i64 }

@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_20__*)* @txn_body_change_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_change_node_prop(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.change_node_prop_args*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.change_node_prop_args*
  store %struct.change_node_prop_args* %14, %struct.change_node_prop_args** %6, align 8
  %15 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %16 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %10, align 8
  %25 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %26 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %25, i32 0, i32 1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %29 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @open_path(%struct.TYPE_21__** %7, %struct.TYPE_18__* %27, i32 %30, i32 0, i8* %31, %struct.TYPE_20__* %32, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %39 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %2
  %47 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %48 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @svn_fs_base__allow_locked_operation(i32 %49, i32 %50, %struct.TYPE_20__* %51, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %46, %2
  %58 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %59 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %63 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @make_path_mutable(%struct.TYPE_18__* %60, %struct.TYPE_21__* %61, i32 %64, %struct.TYPE_20__* %65, i32 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @svn_fs_base__dag_get_proplist(i32** %8, i32 %73, %struct.TYPE_20__* %74, i32 %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %57
  %83 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %84 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %3, align 8
  br label %199

89:                                               ; preds = %82, %57
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32* @apr_hash_make(i32 %95)
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %100 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %103 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @svn_hash_sets(i32* %98, i32 %101, i32* %104)
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @svn_fs_base__dag_set_proplist(i32 %108, i32* %109, i8* %110, %struct.TYPE_20__* %111, i32 %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %177

122:                                              ; preds = %97
  %123 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %124 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %127 = call i64 @strcmp(i32 %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %122
  %130 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %131 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %12, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @svn_fs_base__dag_set_has_mergeinfo(i32 %138, i64 %139, i64* %11, i8* %140, %struct.TYPE_20__* %141, i32 %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %129
  %152 = load i64, i64* %11, align 8
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load i64, i64* %12, align 8
  %157 = icmp ne i64 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = icmp ne i32 %155, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %151
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 -1
  %169 = load i8*, i8** %9, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @adjust_parent_mergeinfo_counts(i64 %164, i32 %168, i8* %169, %struct.TYPE_20__* %170, i32 %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %176

176:                                              ; preds = %161, %151, %129
  br label %177

177:                                              ; preds = %176, %122, %97
  %178 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %179 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %9, align 8
  %184 = load %struct.change_node_prop_args*, %struct.change_node_prop_args** %6, align 8
  %185 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @svn_fs_base__dag_get_id(i32 %189)
  %191 = load i32, i32* @svn_fs_path_change_modify, align 4
  %192 = load i32, i32* @FALSE, align 4
  %193 = load i32, i32* @TRUE, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32* @add_change(i32 %182, i8* %183, i32 %186, i32 %190, i32 %191, i32 %192, i32 %193, %struct.TYPE_20__* %194, i32 %197)
  store i32* %198, i32** %3, align 8
  br label %199

199:                                              ; preds = %177, %87
  %200 = load i32*, i32** %3, align 8
  ret i32* %200
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_21__**, %struct.TYPE_18__*, i32, i32, i8*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @svn_fs_base__allow_locked_operation(i32, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_18__*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_proplist(i32**, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32* @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_base__dag_set_proplist(i32, i32*, i8*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @svn_fs_base__dag_set_has_mergeinfo(i32, i64, i64*, i8*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @adjust_parent_mergeinfo_counts(i64, i32, i8*, %struct.TYPE_20__*, i32) #1

declare dso_local i32* @add_change(i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
