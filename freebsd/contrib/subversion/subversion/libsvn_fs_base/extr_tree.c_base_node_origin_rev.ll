; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_origin_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_origin_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.get_set_node_origin_args = type { i32, i32*, i32*, i32*, i32*, i32 }
%struct.id_created_rev_args = type { i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i8* }
%struct.txn_pred_id_args = type { i32, i32*, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT = common dso_local global i64 0, align 8
@txn_body_get_node_origin = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_NODE_ORIGIN = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@txn_body_pred_id = common dso_local global i32 0, align 4
@txn_body_set_node_origin = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@txn_body_id_created_rev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (i32*, %struct.TYPE_25__*, i8*, i32*)* @base_node_origin_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @base_node_origin_rev(i32* %0, %struct.TYPE_25__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.get_set_node_origin_args, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.id_created_rev_args, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.txn_pred_id_args, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %10, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  store %struct.TYPE_27__* %31, %struct.TYPE_27__** %11, align 8
  store i32* null, i32** %13, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i8* @svn_fs__canonicalize_abspath(i8* %32, i32* %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32*, i32** %6, align 8
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %5, align 8
  br label %199

41:                                               ; preds = %4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call %struct.TYPE_26__* @base_node_id(i32** %15, %struct.TYPE_25__* %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(%struct.TYPE_26__* %51)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @svn_fs_base__id_node_id(i32* %53)
  %55 = getelementptr inbounds %struct.get_set_node_origin_args, %struct.get_set_node_origin_args* %12, i32 0, i32 5
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = load i32, i32* @txn_body_get_node_origin, align 4
  %60 = bitcast %struct.get_set_node_origin_args* %12 to %struct.txn_pred_id_args*
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call %struct.TYPE_26__* @svn_fs_base__retry_txn(%struct.TYPE_24__* %58, i32 %59, %struct.txn_pred_id_args* %60, i32 %61, i32* %62)
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %16, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %65 = icmp ne %struct.TYPE_26__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.get_set_node_origin_args, %struct.get_set_node_origin_args* %12, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %13, align 8
  br label %80

69:                                               ; preds = %47
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SVN_ERR_FS_NO_SUCH_NODE_ORIGIN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %77 = call i32 @svn_error_clear(%struct.TYPE_26__* %76)
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %16, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %82 = call i32 @SVN_ERR(%struct.TYPE_26__* %81)
  br label %83

83:                                               ; preds = %80, %41
  %84 = load i32*, i32** %13, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %183, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %87, %struct.TYPE_25__** %17, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32* @svn_pool_create(i32* %88)
  store i32* %89, i32** %18, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32* @svn_pool_create(i32* %90)
  store i32* %91, i32** %19, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call %struct.TYPE_23__* @svn_stringbuf_create(i8* %92, i32* %93)
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %20, align 8
  %95 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %95, i32* %21, align 4
  br label %96

96:                                               ; preds = %86, %119
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %24, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call i64 @SVN_IS_VALID_REVNUM(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = call %struct.TYPE_26__* @svn_fs_base__revision_root(%struct.TYPE_25__** %17, %struct.TYPE_24__* %104, i32 %105, i32* %106)
  %108 = call i32 @SVN_ERR(%struct.TYPE_26__* %107)
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %112 = load i8*, i8** %24, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = call %struct.TYPE_26__* @prev_location(i8** %24, i32* %23, %struct.TYPE_24__* %110, %struct.TYPE_25__* %111, i8* %112, i32* %113)
  %115 = call i32 @SVN_ERR(%struct.TYPE_26__* %114)
  %116 = load i8*, i8** %24, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %124

119:                                              ; preds = %109
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %121 = load i8*, i8** %24, align 8
  %122 = call i32 @svn_stringbuf_set(%struct.TYPE_23__* %120, i8* %121)
  %123 = load i32, i32* %23, align 4
  store i32 %123, i32* %21, align 4
  br label %96

124:                                              ; preds = %118
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call %struct.TYPE_26__* @base_node_id(i32** %22, %struct.TYPE_25__* %125, i8* %128, i32* %129)
  %131 = call i32 @SVN_ERR(%struct.TYPE_26__* %130)
  br label %132

132:                                              ; preds = %124, %150
  %133 = load i32*, i32** %18, align 8
  %134 = call i32 @svn_pool_clear(i32* %133)
  %135 = load i32*, i32** %22, align 8
  %136 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %25, i32 0, i32 1
  store i32* %135, i32** %136, align 8
  %137 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %25, i32 0, i32 3
  store i32* null, i32** %137, align 8
  %138 = load i32*, i32** %18, align 8
  %139 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %25, i32 0, i32 4
  store i32* %138, i32** %139, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %141 = load i32, i32* @txn_body_pred_id, align 4
  %142 = load i32, i32* @FALSE, align 4
  %143 = load i32*, i32** %18, align 8
  %144 = call %struct.TYPE_26__* @svn_fs_base__retry_txn(%struct.TYPE_24__* %140, i32 %141, %struct.txn_pred_id_args* %25, i32 %142, i32* %143)
  %145 = call i32 @SVN_ERR(%struct.TYPE_26__* %144)
  %146 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %25, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %132
  br label %157

150:                                              ; preds = %132
  %151 = load i32*, i32** %19, align 8
  %152 = call i32 @svn_pool_clear(i32* %151)
  %153 = getelementptr inbounds %struct.txn_pred_id_args, %struct.txn_pred_id_args* %25, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = call i32* @svn_fs_base__id_copy(i32* %154, i32* %155)
  store i32* %156, i32** %22, align 8
  br label %132

157:                                              ; preds = %149
  %158 = load i32*, i32** %22, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = call i32* @svn_fs_base__id_copy(i32* %158, i32* %159)
  store i32* %160, i32** %13, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %157
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds %struct.get_set_node_origin_args, %struct.get_set_node_origin_args* %12, i32 0, i32 2
  store i32* %167, i32** %168, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = load i32, i32* @txn_body_set_node_origin, align 4
  %173 = bitcast %struct.get_set_node_origin_args* %12 to %struct.txn_pred_id_args*
  %174 = load i32, i32* @TRUE, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = call %struct.TYPE_26__* @svn_fs_base__retry_txn(%struct.TYPE_24__* %171, i32 %172, %struct.txn_pred_id_args* %173, i32 %174, i32* %175)
  %177 = call i32 @SVN_ERR(%struct.TYPE_26__* %176)
  br label %178

178:                                              ; preds = %166, %157
  %179 = load i32*, i32** %19, align 8
  %180 = call i32 @svn_pool_destroy(i32* %179)
  %181 = load i32*, i32** %18, align 8
  %182 = call i32 @svn_pool_destroy(i32* %181)
  br label %183

183:                                              ; preds = %178, %83
  %184 = load i32*, i32** %13, align 8
  %185 = getelementptr inbounds %struct.id_created_rev_args, %struct.id_created_rev_args* %14, i32 0, i32 1
  store i32* %184, i32** %185, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = load i32, i32* @txn_body_id_created_rev, align 4
  %190 = bitcast %struct.id_created_rev_args* %14 to %struct.txn_pred_id_args*
  %191 = load i32, i32* @TRUE, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = call %struct.TYPE_26__* @svn_fs_base__retry_txn(%struct.TYPE_24__* %188, i32 %189, %struct.txn_pred_id_args* %190, i32 %191, i32* %192)
  %194 = call i32 @SVN_ERR(%struct.TYPE_26__* %193)
  %195 = getelementptr inbounds %struct.id_created_rev_args, %struct.id_created_rev_args* %14, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %6, align 8
  store i32 %196, i32* %197, align 4
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_26__* %198, %struct.TYPE_26__** %5, align 8
  br label %199

199:                                              ; preds = %183, %38
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  ret %struct.TYPE_26__* %200
}

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @base_node_id(i32**, %struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__id_node_id(i32*) #1

declare dso_local %struct.TYPE_26__* @svn_fs_base__retry_txn(%struct.TYPE_24__*, i32, %struct.txn_pred_id_args*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_26__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_23__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local %struct.TYPE_26__* @svn_fs_base__revision_root(%struct.TYPE_25__**, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local %struct.TYPE_26__* @prev_location(i8**, i32*, %struct.TYPE_24__*, %struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_fs_base__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
