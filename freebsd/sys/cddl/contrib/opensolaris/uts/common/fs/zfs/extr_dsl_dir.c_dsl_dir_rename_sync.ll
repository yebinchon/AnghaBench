; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_rename_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_rename_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_24__*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }

@FTAG = common dso_local global %struct.TYPE_24__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@SPA_FEATURE_FS_SS_LIMIT = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@DD_FIELD_SNAPSHOT_COUNT = common dso_local global i32 0, align 4
@DD_USED_CHILD = common dso_local global i32 0, align 4
@DD_USED_CHILD_RSRV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_dir_rename_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_rename_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_23__* @dmu_tx_pool(i32* %18)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %6, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** @FTAG, align 8
  %28 = call i32 @dsl_dir_hold(%struct.TYPE_23__* %23, i32 %26, %struct.TYPE_24__* %27, %struct.TYPE_24__** %7, i8** null)
  %29 = call i32 @VERIFY0(i32 %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** @FTAG, align 8
  %35 = call i32 @dsl_dir_hold(%struct.TYPE_23__* %30, i32 %33, %struct.TYPE_24__* %34, %struct.TYPE_24__** %8, i8** %9)
  %36 = call i32 @VERIFY0(i32 %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @spa_history_log_internal_dd(%struct.TYPE_24__* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = icmp ne %struct.TYPE_24__* %43, %46
  br i1 %47, label %48, label %174

48:                                               ; preds = %2
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %58 = call i64 @spa_feature_is_active(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %48
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %66 = call i32 @zap_lookup(i32* %61, i32 %64, i32 %65, i32 4, i32 1, i32* %13)
  %67 = call i32 @VERIFY0(i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %75 = call i32 @zap_lookup(i32* %70, i32 %73, i32 %74, i32 4, i32 1, i32* %14)
  %76 = call i32 @VERIFY0(i32 %75)
  br label %77

77:                                               ; preds = %60, %48
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_24__* %80, i32 %82, i32 %83, i32* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_24__* %86, i32 %87, i32 %88, i32* %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_24__* %93, i32 %95, i32 %96, i32* %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_24__* %99, i32 %100, i32 %101, i32* %102)
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = load i32, i32* @DD_USED_CHILD, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %108)
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 0, %111
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %114 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %113)
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %119 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %118)
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 0, %121
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @dsl_dir_diduse_space(%struct.TYPE_24__* %106, i32 %107, i32 %112, i32 %117, i32 %122, i32* %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = load i32, i32* @DD_USED_CHILD, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %128 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %127)
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %132 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %131)
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %135)
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @dsl_dir_diduse_space(%struct.TYPE_24__* %125, i32 %126, i32 %130, i32 %134, i32 %138, i32* %139)
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %142 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %141)
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %146 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %145)
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %144, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %77
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %152 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %151)
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %156 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %155)
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %154, %158
  store i32 %159, i32* %15, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = load i32, i32* @DD_USED_CHILD_RSRV, align 4
  %164 = load i32, i32* %15, align 4
  %165 = sub nsw i32 0, %164
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @dsl_dir_diduse_space(%struct.TYPE_24__* %162, i32 %163, i32 %165, i32 0, i32 0, i32* %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = load i32, i32* @DD_USED_CHILD_RSRV, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @dsl_dir_diduse_space(%struct.TYPE_24__* %168, i32 %169, i32 %170, i32 0, i32 0, i32* %171)
  br label %173

173:                                              ; preds = %150, %77
  br label %174

174:                                              ; preds = %173, %2
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @dmu_buf_will_dirty(i32 %177, i32* %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %183)
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @zap_remove(i32* %180, i32 %186, i32 %189, i32* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @ASSERT0(i32 %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @strcpy(i32 %196, i8* %197)
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %203 = call i32 @dsl_dir_rele(%struct.TYPE_24__* %201, %struct.TYPE_24__* %202)
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %208 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %207)
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 2
  %217 = call i32 @dsl_dir_hold_obj(%struct.TYPE_23__* %210, i32 %213, i32* null, %struct.TYPE_24__* %214, %struct.TYPE_24__** %216)
  %218 = call i32 @VERIFY0(i32 %217)
  %219 = load i32*, i32** %11, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %221 = call %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__* %220)
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  %229 = load i32*, i32** %4, align 8
  %230 = call i32 @zap_add(i32* %219, i32 %223, i32 %226, i32 8, i32 1, i32* %228, i32* %229)
  %231 = call i32 @VERIFY0(i32 %230)
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %233 = call i32 @dsl_prop_notify_all(%struct.TYPE_24__* %232)
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** @FTAG, align 8
  %236 = call i32 @dsl_dir_rele(%struct.TYPE_24__* %234, %struct.TYPE_24__* %235)
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** @FTAG, align 8
  %239 = call i32 @dsl_dir_rele(%struct.TYPE_24__* %237, %struct.TYPE_24__* %238)
  ret void
}

declare dso_local %struct.TYPE_23__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_23__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__**, i8**) #1

declare dso_local i32 @spa_history_log_internal_dd(%struct.TYPE_24__*, i8*, i32*, i8*, i32) #1

declare dso_local i64 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dsl_fs_ss_count_adjust(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dir_diduse_space(%struct.TYPE_24__*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @dsl_dir_phys(%struct.TYPE_24__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @zap_remove(i32*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_23__*, i32, i32*, %struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dsl_prop_notify_all(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
