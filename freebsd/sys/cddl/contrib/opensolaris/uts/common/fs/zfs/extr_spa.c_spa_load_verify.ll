; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, %struct.TYPE_15__, i32, i32, i32, i32, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_NEVER_REWIND = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@verify_dataset_name_len = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@spa_load_verify_metadata = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [156 x i8] c"performing a complete scan of the pool since extreme rewind is on. This may take a very long time.\0A  (spa_load_verify_data=%u, spa_load_verify_metadata=%u)\00", align 1
@spa_load_verify_data = common dso_local global i64 0, align 8
@TRAVERSE_PRE = common dso_local global i32 0, align 4
@TRAVERSE_PREFETCH_METADATA = common dso_local global i32 0, align 4
@spa_load_verify_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"spa_load_verify found %llu metadata errors and %llu data errors\00", align 1
@spa_load_verify_dryrun = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_LOAD_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REWIND_TIME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_DATA_ERRORS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @spa_load_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load_verify(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %10 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @zpool_get_load_policy(i32 %14, %struct.TYPE_16__* %6)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ZPOOL_NEVER_REWIND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %206

22:                                               ; preds = %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 10
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @dsl_pool_config_enter(%struct.TYPE_14__* %25, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @verify_dataset_name_len, align 4
  %37 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %38 = call i32 @dmu_objset_find_dp(%struct.TYPE_14__* %30, i32 %35, i32 %36, i32* null, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_pool_config_exit(%struct.TYPE_14__* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %206

48:                                               ; preds = %22
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %51 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %52 = or i32 %50, %51
  %53 = call i32* @zio_root(%struct.TYPE_17__* %49, i32* null, %struct.TYPE_18__* %5, i32 %52)
  store i32* %53, i32** %4, align 8
  %54 = load i64, i64* @spa_load_verify_metadata, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load i64, i64* @spa_load_verify_data, align 8
  %64 = load i64, i64* @spa_load_verify_metadata, align 8
  %65 = call i32 @spa_load_note(%struct.TYPE_17__* %62, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TRAVERSE_PRE, align 4
  %72 = load i32, i32* @TRAVERSE_PREFETCH_METADATA, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @spa_load_verify_cb, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @traverse_pool(%struct.TYPE_17__* %67, i32 %70, i32 %73, i32 %74, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %66, %48
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @zio_wait(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %77
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @spa_load_note(%struct.TYPE_17__* %96, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %100)
  br label %102

102:                                              ; preds = %95, %91
  %103 = load i64, i64* @spa_load_verify_dryrun, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %171, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %110, %112
  br i1 %113, label %114, label %171

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %116, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %114, %102
  store i64 0, i64* %9, align 8
  %121 = load i64, i64* @B_TRUE, align 8
  store i64 %121, i64* %7, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  store i64 %140, i64* %9, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ZPOOL_CONFIG_LOAD_TIME, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @nvlist_add_uint64(i32 %143, i32 %144, i64 %147)
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @VERIFY(i32 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ZPOOL_CONFIG_REWIND_TIME, align 4
  %156 = load i64, i64* %9, align 8
  %157 = call i64 @nvlist_add_int64(i32 %154, i32 %155, i64 %156)
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @VERIFY(i32 %159)
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ZPOOL_CONFIG_LOAD_DATA_ERRORS, align 4
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @nvlist_add_uint64(i32 %163, i32 %164, i64 %166)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @VERIFY(i32 %169)
  br label %178

171:                                              ; preds = %114, %108, %105
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %171, %120
  %179 = load i64, i64* @spa_load_verify_dryrun, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %206

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %182
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @ENXIO, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @EIO, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @EIO, align 4
  %195 = call i32 @SET_ERROR(i32 %194)
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %193, %189, %185
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %2, align 4
  br label %206

198:                                              ; preds = %182
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  br label %204

202:                                              ; preds = %198
  %203 = load i32, i32* @EIO, align 4
  br label %204

204:                                              ; preds = %202, %201
  %205 = phi i32 [ 0, %201 ], [ %203, %202 ]
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %196, %181, %46, %21
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zpool_get_load_policy(i32, %struct.TYPE_16__*) #2

declare dso_local i32 @dsl_pool_config_enter(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @dmu_objset_find_dp(%struct.TYPE_14__*, i32, i32, i32*, i32) #2

declare dso_local i32 @dsl_pool_config_exit(%struct.TYPE_14__*, i32) #2

declare dso_local i32* @zio_root(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @spa_load_note(%struct.TYPE_17__*, i8*, i64, i64) #2

declare dso_local i32 @traverse_pool(%struct.TYPE_17__*, i32, i32, i32, i32*) #2

declare dso_local i32 @zio_wait(i32*) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_add_uint64(i32, i32, i64) #2

declare dso_local i64 @nvlist_add_int64(i32, i32, i64) #2

declare dso_local i32 @SET_ERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
