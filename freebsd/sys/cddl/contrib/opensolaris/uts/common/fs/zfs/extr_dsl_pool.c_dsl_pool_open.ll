; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global %struct.TYPE_19__* null, align 8
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ROOT_DATASET = common dso_local global i32 0, align 4
@MOS_DIR_NAME = common dso_local global i32 0, align 4
@SPA_VERSION_ORIGIN = common dso_local global i64 0, align 8
@ORIGIN_DIR_NAME = common dso_local global i32 0, align 4
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@FREE_DIR_NAME = common dso_local global i32 0, align 4
@DMU_POOL_FREE_BPOBJ = common dso_local global i32 0, align 4
@SPA_FEATURE_OBSOLETE_COUNTS = common dso_local global i32 0, align 4
@DMU_POOL_OBSOLETE_BPOBJ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LEAK_DIR_NAME = common dso_local global i32 0, align 4
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@DMU_POOL_BPTREE_OBJ = common dso_local global i32 0, align 4
@SPA_FEATURE_EMPTY_BPOBJ = common dso_local global i32 0, align 4
@DMU_POOL_EMPTY_BPOBJ = common dso_local global i32 0, align 4
@DMU_POOL_TMP_USERREFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_pool_open(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i32, i32* @RW_WRITER, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** @FTAG, align 8
  %11 = call i32 @rrw_enter(i32* %8, i32 %9, %struct.TYPE_19__* %10)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %16 = load i32, i32* @DMU_POOL_ROOT_DATASET, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 14
  %19 = call i32 @zap_lookup(i32 %14, i32 %15, i32 %16, i32 4, i32 1, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %226

23:                                               ; preds = %1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 13
  %31 = call i32 @dsl_dir_hold_obj(%struct.TYPE_19__* %24, i32 %27, i32* null, %struct.TYPE_19__* %28, i32* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %226

35:                                               ; preds = %23
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = load i32, i32* @MOS_DIR_NAME, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 12
  %40 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_19__* %36, i32 %37, i32** %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %226

44:                                               ; preds = %35
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @spa_version(i32 %47)
  %49 = load i64, i64* @SPA_VERSION_ORIGIN, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %44
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = load i32, i32* @ORIGIN_DIR_NAME, align 4
  %54 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_19__* %52, i32 %53, i32** %4)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %226

58:                                               ; preds = %51
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @FTAG, align 8
  %65 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_19__* %59, i32 %63, %struct.TYPE_19__* %64, i32** %5)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call %struct.TYPE_17__* @dsl_dataset_phys(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 11
  %77 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_19__* %69, i32 %73, %struct.TYPE_19__* %74, i32** %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** @FTAG, align 8
  %80 = call i32 @dsl_dataset_rele(i32* %78, %struct.TYPE_19__* %79)
  br label %81

81:                                               ; preds = %68, %58
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = call i32 @dsl_dir_rele(i32* %82, %struct.TYPE_19__* %83)
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %226

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @spa_version(i32 %92)
  %94 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %89
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = load i32, i32* @FREE_DIR_NAME, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 10
  %101 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_19__* %97, i32 %98, i32** %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %226

105:                                              ; preds = %96
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %110 = load i32, i32* @DMU_POOL_FREE_BPOBJ, align 4
  %111 = call i32 @zap_lookup(i32 %108, i32 %109, i32 %110, i32 4, i32 1, i32* %6)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %226

115:                                              ; preds = %105
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @bpobj_open(i32* %117, i32 %120, i32 %121)
  %123 = call i32 @VERIFY0(i32 %122)
  br label %124

124:                                              ; preds = %115, %89
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %129 = call i64 @spa_feature_is_active(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %136 = load i32, i32* @DMU_POOL_OBSOLETE_BPOBJ, align 4
  %137 = call i32 @zap_lookup(i32 %134, i32 %135, i32 %136, i32 4, i32 1, i32* %6)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @bpobj_open(i32* %142, i32 %145, i32 %146)
  %148 = call i32 @VERIFY0(i32 %147)
  br label %156

149:                                              ; preds = %131
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @ENOENT, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %155

154:                                              ; preds = %149
  br label %226

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %140
  br label %157

157:                                              ; preds = %156, %124
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %159 = load i32, i32* @LEAK_DIR_NAME, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 7
  %162 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_19__* %158, i32 %159, i32** %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %167 = call i64 @spa_feature_is_active(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %157
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %174 = load i32, i32* @DMU_POOL_BPTREE_OBJ, align 4
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 6
  %177 = call i32 @zap_lookup(i32 %172, i32 %173, i32 %174, i32 4, i32 1, i32* %176)
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %226

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181, %157
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SPA_FEATURE_EMPTY_BPOBJ, align 4
  %187 = call i64 @spa_feature_is_active(i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %182
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %194 = load i32, i32* @DMU_POOL_EMPTY_BPOBJ, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = call i32 @zap_lookup(i32 %192, i32 %193, i32 %194, i32 4, i32 1, i32* %196)
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %3, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %226

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %182
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %207 = load i32, i32* @DMU_POOL_TMP_USERREFS, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 2
  %210 = call i32 @zap_lookup(i32 %205, i32 %206, i32 %207, i32 4, i32 1, i32* %209)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @ENOENT, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %202
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br label %226

219:                                              ; preds = %215
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dsl_scan_init(%struct.TYPE_19__* %220, i32 %224)
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %219, %218, %200, %180, %154, %114, %104, %87, %57, %43, %34, %22
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** @FTAG, align 8
  %230 = call i32 @rrw_exit(i32* %228, %struct.TYPE_19__* %229)
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @rrw_enter(i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_19__*, i32, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dsl_pool_open_special_dir(%struct.TYPE_19__*, i32, i32**) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32**) #1

declare dso_local %struct.TYPE_20__* @dsl_dir_phys(i32*) #1

declare dso_local %struct.TYPE_17__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @dsl_dir_rele(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @bpobj_open(i32*, i32, i32) #1

declare dso_local i64 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @dsl_scan_init(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @rrw_exit(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
