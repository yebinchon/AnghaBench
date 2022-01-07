; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i8* }

@VDEV_LABELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Reading config from %s...\00", align 1
@BIO_READ = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@VDEV_SKIP_SIZE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, i32**)* @vdev_geom_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_geom_read_config(%struct.g_consumer* %0, i32** %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store i32** %1, i32*** %4, align 8
  %21 = load i32, i32* @VDEV_LABELS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca %struct.TYPE_4__*, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @VDEV_LABELS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i32, i32* @VDEV_LABELS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i32, i32* @VDEV_LABELS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  %34 = load i32, i32* @VDEV_LABELS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %37 = call i32 (...) @g_topology_assert_not()
  %38 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %39 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %38, i32 0, i32 0
  %40 = load %struct.g_provider*, %struct.g_provider** %39, align 8
  store %struct.g_provider* %40, %struct.g_provider** %5, align 8
  %41 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @P2ALIGN(i64 %48, i64 4)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 8, %53
  %55 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = urem i64 7, %58
  %60 = sub i64 %54, %59
  %61 = sub i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %15, align 4
  store i64 8, i64* %10, align 8
  store i32 0, i32* %19, align 4
  br label %63

63:                                               ; preds = %104, %2
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @VDEV_LABELS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %63
  %68 = load i32, i32* @BIO_READ, align 4
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %33, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @KM_SLEEP, align 4
  %74 = call %struct.TYPE_4__* @kmem_alloc(i32 %72, i32 %73)
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %76
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @vdev_label_offset(i64 %78, i32 %79, i32 0)
  %81 = load i32, i32* @VDEV_SKIP_SIZE, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %27, i64 %84
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %30, i64 %88
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %36, i64 %91
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %27, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %98 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = srem i32 %96, %99
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  br label %104

104:                                              ; preds = %67
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %63

107:                                              ; preds = %63
  %108 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %109 = bitcast %struct.TYPE_4__** %24 to i8**
  %110 = load i32, i32* @VDEV_LABELS, align 4
  %111 = call i32 @vdev_geom_io(%struct.g_consumer* %108, i32* %33, i8** %109, i32* %27, i32* %30, i32* %36, i32 %110)
  %112 = load i32**, i32*** %4, align 8
  store i32* null, i32** %112, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %180, %107
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @VDEV_LABELS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %183

117:                                              ; preds = %113
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %36, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %180

124:                                              ; preds = %117
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @nvlist_unpack(i8* %131, i64 %132, i32** %6, i32 0)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %180

136:                                              ; preds = %124
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %139 = call i64 @nvlist_lookup_uint64(i32* %137, i32 %138, i64* %12)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %136
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @nvlist_free(i32* %146)
  br label %180

148:                                              ; preds = %141
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @POOL_STATE_SPARE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %159 = call i64 @nvlist_lookup_uint64(i32* %157, i32 %158, i64* %13)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i64, i64* %13, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %156
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @nvlist_free(i32* %165)
  br label %180

167:                                              ; preds = %161, %152, %148
  %168 = load i32**, i32*** %4, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32**, i32*** %4, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @nvlist_free(i32* %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32*, i32** %6, align 8
  %177 = load i32**, i32*** %4, align 8
  store i32* %176, i32** %177, align 8
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %175, %164, %145, %135, %123
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %113

183:                                              ; preds = %113
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %195, %183
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* @VDEV_LABELS, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %184
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @kmem_free(%struct.TYPE_4__* %192, i32 %193)
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %19, align 4
  br label %184

198:                                              ; preds = %184
  %199 = load i32, i32* %20, align 4
  %200 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_topology_assert_not(...) #2

declare dso_local i32 @ZFS_LOG(i32, i8*, i32) #2

declare dso_local i64 @P2ALIGN(i64, i64) #2

declare dso_local %struct.TYPE_4__* @kmem_alloc(i32, i32) #2

declare dso_local i32 @vdev_label_offset(i64, i32, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @vdev_geom_io(%struct.g_consumer*, i32*, i8**, i32*, i32*, i32*, i32) #2

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @kmem_free(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
