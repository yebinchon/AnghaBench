; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_select_uberblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_select_uberblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32, i32*, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"no valid uberblock found\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"using uberblock with txg=%llu\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"version %llu is not supported\00", align 1
@VDEV_AUX_VERSION_NEWER = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"label config unavailable\00", align 1
@ZPOOL_CONFIG_FEATURES_FOR_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid label: '%s' missing\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZPOOL_CONFIG_UNSUP_FEAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"some features are unsupported\00", align 1
@VDEV_AUX_UNSUP_FEAT = common dso_local global i32 0, align 4
@SPA_IMPORT_ASSEMBLE = common dso_local global i64 0, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64)* @spa_ld_select_uberblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_select_uberblock(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call i64 @spa_importing_readonly_checkpoint(%struct.TYPE_14__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = call i32 @spa_ld_select_uberblock_done(%struct.TYPE_14__* %26, %struct.TYPE_13__* %27)
  store i32 0, i32* %3, align 4
  br label %215

29:                                               ; preds = %21, %2
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = call i32 @vdev_uberblock_load(i32* %30, %struct.TYPE_13__* %31, i32** %7)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @nvlist_free(i32* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call i32 (%struct.TYPE_14__*, i8*, ...) @spa_load_failed(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %44 = load i32, i32* @ENXIO, align 4
  %45 = call i32 @spa_vdev_err(i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %215

46:                                               ; preds = %29
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @spa_load_note(%struct.TYPE_14__* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %46
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @nvlist_free(i32* %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (%struct.TYPE_14__*, i8*, ...) @spa_load_failed(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @VDEV_AUX_VERSION_NEWER, align 4
  %69 = load i32, i32* @ENOTSUP, align 4
  %70 = call i32 @spa_vdev_err(i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %215

71:                                               ; preds = %46
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = call i32 (%struct.TYPE_14__*, i8*, ...) @spa_load_failed(%struct.TYPE_14__* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %85 = load i32, i32* @ENXIO, align 4
  %86 = call i32 @spa_vdev_err(i32* %83, i32 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %215

87:                                               ; preds = %77
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %90 = call i64 @nvlist_lookup_nvlist(i32* %88, i32 %89, i32** %9)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @nvlist_free(i32* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %97 = call i32 (%struct.TYPE_14__*, i8*, ...) @spa_load_failed(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %100 = load i32, i32* @ENXIO, align 4
  %101 = call i32 @spa_vdev_err(i32* %98, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %215

102:                                              ; preds = %87
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nvlist_free(i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = call i64 @nvlist_dup(i32* %107, i32** %109, i32 0)
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @VERIFY(i32 %112)
  br label %114

114:                                              ; preds = %102, %71
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @nvlist_free(i32* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %181

122:                                              ; preds = %114
  %123 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %124 = load i32, i32* @KM_SLEEP, align 4
  %125 = call i64 @nvlist_alloc(i32** %10, i32 %123, i32 %124)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @VERIFY(i32 %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32* @nvlist_next_nvpair(i32* %131, i32* null)
  store i32* %132, i32** %11, align 8
  br label %133

133:                                              ; preds = %150, %122
  %134 = load i32*, i32** %11, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @nvpair_name(i32* %137)
  %139 = call i32 @zfeature_is_supported(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @nvpair_name(i32* %143)
  %145 = call i64 @nvlist_add_string(i32* %142, i32 %144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @VERIFY(i32 %147)
  br label %149

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i32* @nvlist_next_nvpair(i32* %153, i32* %154)
  store i32* %155, i32** %11, align 8
  br label %133

156:                                              ; preds = %133
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @nvlist_empty(i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ZPOOL_CONFIG_UNSUP_FEAT, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = call i64 @nvlist_add_nvlist(i32 %163, i32 %164, i32* %165)
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @VERIFY(i32 %168)
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @nvlist_free(i32* %170)
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = call i32 (%struct.TYPE_14__*, i8*, ...) @spa_load_failed(%struct.TYPE_14__* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* @VDEV_AUX_UNSUP_FEAT, align 4
  %176 = load i32, i32* @ENOTSUP, align 4
  %177 = call i32 @spa_vdev_err(i32* %174, i32 %175, i32 %176)
  store i32 %177, i32* %3, align 4
  br label %215

178:                                              ; preds = %156
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @nvlist_free(i32* %179)
  br label %181

181:                                              ; preds = %178, %114
  %182 = load i64, i64* %5, align 8
  %183 = load i64, i64* @SPA_IMPORT_ASSEMBLE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %211

190:                                              ; preds = %185
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = load i32, i32* @SCL_ALL, align 4
  %193 = load i32, i32* @FTAG, align 4
  %194 = load i32, i32* @RW_WRITER, align 4
  %195 = call i32 @spa_config_enter(%struct.TYPE_14__* %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @spa_try_repair(%struct.TYPE_14__* %196, i32 %199)
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = load i32, i32* @SCL_ALL, align 4
  %203 = load i32, i32* @FTAG, align 4
  %204 = call i32 @spa_config_exit(%struct.TYPE_14__* %201, i32 %202, i32 %203)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @nvlist_free(i32* %207)
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32* null, i32** %210, align 8
  br label %211

211:                                              ; preds = %190, %185, %181
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %214 = call i32 @spa_ld_select_uberblock_done(%struct.TYPE_14__* %212, %struct.TYPE_13__* %213)
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %160, %92, %80, %58, %37, %25
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @spa_importing_readonly_checkpoint(%struct.TYPE_14__*) #1

declare dso_local i32 @spa_ld_select_uberblock_done(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_uberblock_load(i32*, %struct.TYPE_13__*, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @zfeature_is_supported(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @nvlist_add_nvlist(i32, i32, i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @spa_try_repair(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
