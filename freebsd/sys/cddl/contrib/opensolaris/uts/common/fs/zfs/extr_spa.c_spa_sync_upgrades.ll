; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_upgrades.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_upgrades.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_ORIGIN = common dso_local global i64 0, align 8
@SPA_VERSION_NEXT_CLONES = common dso_local global i64 0, align 8
@SPA_VERSION_DIR_CLONES = common dso_local global i64 0, align 8
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_CHECKSUM_SALT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*)* @spa_sync_upgrades to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_upgrades(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* @RW_WRITER, align 4
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i32 @rrw_enter(i32* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPA_VERSION_ORIGIN, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPA_VERSION_ORIGIN, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @dsl_pool_create_origin(%struct.TYPE_18__* %36, i32* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 3
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %28, %2
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @dsl_pool_upgrade_clones(%struct.TYPE_18__* %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %50, %43
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @dsl_pool_upgrade_dir_clones(%struct.TYPE_18__* %76, i32* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %68, %61
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @spa_feature_create_zap_objects(%struct.TYPE_17__* %98, i32* %99)
  br label %101

101:                                              ; preds = %97, %90, %83
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %101
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %111 = call i64 @spa_feature_is_enabled(%struct.TYPE_17__* %109, i32 %110)
  store i64 %111, i64* %6, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %114 = call i64 @spa_feature_is_active(%struct.TYPE_17__* %112, i32 %113)
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @spa_feature_incr(%struct.TYPE_17__* %121, i32 %122, i32* %123)
  br label %125

125:                                              ; preds = %120, %117, %108
  br label %126

126:                                              ; preds = %125, %101
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %131 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %132 = call i64 @zap_contains(i32 %129, i32 %130, i32 %131)
  %133 = load i64, i64* @ENOENT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %126
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %140 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @zap_add(i32 %138, i32 %139, i32 %140, i32 1, i32 4, i32 %144, i32* %145)
  %147 = call i32 @VERIFY0(i32 %146)
  br label %148

148:                                              ; preds = %135, %126
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* @FTAG, align 4
  %152 = call i32 @rrw_exit(i32* %150, i32 %151)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @dsl_pool_create_origin(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @dsl_pool_upgrade_clones(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @dsl_pool_upgrade_dir_clones(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @spa_feature_create_zap_objects(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @spa_feature_incr(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i64 @zap_contains(i32, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
