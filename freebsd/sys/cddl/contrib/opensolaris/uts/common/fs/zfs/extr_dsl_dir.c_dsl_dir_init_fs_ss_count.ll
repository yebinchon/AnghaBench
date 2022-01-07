; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_init_fs_ss_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_init_fs_ss_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }

@SPA_FEATURE_FS_SS_LIMIT = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DD_FIELD_SNAPSHOT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32*)* @dsl_dir_init_fs_ss_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_init_fs_ss_count(%struct.TYPE_26__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %24 = call i32 @spa_feature_is_active(i32 %22, i32 %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = call i32 @dsl_pool_config_held(%struct.TYPE_25__* %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @dmu_tx_is_syncing(i32* %29)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @dsl_dir_zapify(%struct.TYPE_26__* %32, i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %40 = call i64 @zap_contains(i32* %35, i32 %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %189

43:                                               ; preds = %2
  %44 = load i32, i32* @KM_SLEEP, align 4
  %45 = call %struct.TYPE_23__* @kmem_alloc(i32 16, i32 %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %9, align 8
  %46 = load i32, i32* @KM_SLEEP, align 4
  %47 = call %struct.TYPE_23__* @kmem_alloc(i32 16, i32 %46)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %10, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %51 = call %struct.TYPE_22__* @dsl_dir_phys(%struct.TYPE_26__* %50)
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zap_cursor_init(%struct.TYPE_23__* %48, i32* %49, i32 %53)
  br label %55

55:                                               ; preds = %115, %43
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %58 = call i64 @zap_cursor_retrieve(%struct.TYPE_23__* %56, %struct.TYPE_23__* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %55
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dir_hold_obj(%struct.TYPE_25__* %61, i32 %64, i32* null, i32 %65, %struct.TYPE_26__** %12)
  %67 = call i32 @VERIFY0(i32 %66)
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 36
  br i1 %74, label %83, label %75

75:                                               ; preds = %60
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %87

83:                                               ; preds = %75, %60
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %85 = load i32, i32* @FTAG, align 4
  %86 = call i32 @dsl_dir_rele(%struct.TYPE_26__* %84, i32 %85)
  br label %115

87:                                               ; preds = %75
  %88 = load i64, i64* %5, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %5, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %91 = load i32*, i32** %4, align 8
  call void @dsl_dir_init_fs_ss_count(%struct.TYPE_26__* %90, i32* %91)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %97 = call i32 @zap_lookup(i32* %92, i32 %95, i32 %96, i32 8, i32 1, i64* %13)
  %98 = call i32 @VERIFY0(i32 %97)
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %5, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %107 = call i32 @zap_lookup(i32* %102, i32 %105, i32 %106, i32 8, i32 1, i64* %13)
  %108 = call i32 @VERIFY0(i32 %107)
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %6, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %113 = load i32, i32* @FTAG, align 4
  %114 = call i32 @dsl_dir_rele(%struct.TYPE_26__* %112, i32 %113)
  br label %115

115:                                              ; preds = %87, %83
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %117 = call i32 @zap_cursor_advance(%struct.TYPE_23__* %116)
  br label %55

118:                                              ; preds = %55
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %120 = call i32 @zap_cursor_fini(%struct.TYPE_23__* %119)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %125 = call %struct.TYPE_22__* @dsl_dir_phys(%struct.TYPE_26__* %124)
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FTAG, align 4
  %129 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_25__* %123, i32 %127, i32 %128, i32** %11)
  %130 = call i32 @VERIFY0(i32 %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call %struct.TYPE_24__* @dsl_dataset_phys(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @zap_cursor_init(%struct.TYPE_23__* %131, i32* %132, i32 %136)
  br label %138

138:                                              ; preds = %155, %118
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %141 = call i64 @zap_cursor_retrieve(%struct.TYPE_23__* %139, %struct.TYPE_23__* %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 37
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i64, i64* %6, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %151, %143
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %157 = call i32 @zap_cursor_advance(%struct.TYPE_23__* %156)
  br label %138

158:                                              ; preds = %138
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %160 = call i32 @zap_cursor_fini(%struct.TYPE_23__* %159)
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* @FTAG, align 4
  %163 = call i32 @dsl_dataset_rele(i32* %161, i32 %162)
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %165 = call i32 @kmem_free(%struct.TYPE_23__* %164, i32 16)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %167 = call i32 @kmem_free(%struct.TYPE_23__* %166, i32 16)
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @dmu_buf_will_dirty(i32 %170, i32* %171)
  %173 = load i32*, i32** %8, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @zap_add(i32* %173, i32 %176, i32 %177, i32 8, i32 1, i64* %5, i32* %178)
  %180 = call i32 @VERIFY0(i32 %179)
  %181 = load i32*, i32** %8, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @zap_add(i32* %181, i32 %184, i32 %185, i32 8, i32 1, i64* %6, i32* %186)
  %188 = call i32 @VERIFY0(i32 %187)
  br label %189

189:                                              ; preds = %158, %42
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_25__*) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_dir_zapify(%struct.TYPE_26__*, i32*) #1

declare dso_local i64 @zap_contains(i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_cursor_init(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @dsl_dir_phys(%struct.TYPE_26__*) #1

declare dso_local i64 @zap_cursor_retrieve(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_25__*, i32, i32*, i32, %struct.TYPE_26__**) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @zap_cursor_advance(%struct.TYPE_23__*) #1

declare dso_local i32 @zap_cursor_fini(%struct.TYPE_23__*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_25__*, i32, i32, i32**) #1

declare dso_local %struct.TYPE_24__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
