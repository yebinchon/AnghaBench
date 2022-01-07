; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_aux_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_aux_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32* }

@DMU_OT_PACKED_NVLIST = common dso_local global i32 0, align 4
@DMU_OT_PACKED_NVLIST_SIZE = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@VDEV_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i8*, i8*)* @spa_sync_aux_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_sync_aux_dev(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %147

19:                                               ; preds = %5
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMU_OT_PACKED_NVLIST, align 4
  %29 = load i32, i32* @DMU_OT_PACKED_NVLIST_SIZE, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @dmu_object_alloc(i32 %27, i32 %28, i32 16384, i32 %29, i32 4, i32* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @zap_update(i32 %36, i32 %37, i8* %38, i32 4, i32 1, i64* %40, i32* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @VERIFY(i32 %44)
  br label %46

46:                                               ; preds = %24, %19
  %47 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %48 = load i32, i32* @KM_SLEEP, align 4
  %49 = call i64 @nvlist_alloc(i32** %11, i32 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load i32*, i32** %11, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @nvlist_add_nvlist_array(i32* %58, i8* %59, i32** null, i32 0)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  br label %134

64:                                               ; preds = %46
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @KM_SLEEP, align 4
  %72 = call i32** @kmem_alloc(i32 %70, i32 %71)
  store i32** %72, i32*** %12, align 8
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %95, %64
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @B_FALSE, align 8
  %89 = load i32, i32* @VDEV_CONFIG_L2CACHE, align 4
  %90 = call i32* @vdev_config_generate(%struct.TYPE_7__* %80, i32 %87, i64 %88, i32 %89)
  %91 = load i32**, i32*** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* %90, i32** %94, align 8
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %73

98:                                               ; preds = %73
  %99 = load i32*, i32** %11, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32**, i32*** %12, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @nvlist_add_nvlist_array(i32* %99, i8* %100, i32** %101, i32 %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %122, %98
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load i32**, i32*** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @nvlist_free(i32* %120)
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %109

125:                                              ; preds = %109
  %126 = load i32**, i32*** %12, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @kmem_free(i32** %126, i32 %132)
  br label %134

134:                                              ; preds = %125, %57
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @spa_sync_nvlist(%struct.TYPE_7__* %135, i64 %138, i32* %139, i32* %140)
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @nvlist_free(i32* %142)
  %144 = load i64, i64* @B_FALSE, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %134, %18
  ret void
}

declare dso_local i64 @dmu_object_alloc(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_update(i32, i32, i8*, i32, i32, i64*, i32*) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i8*, i32**, i32) #1

declare dso_local i32** @kmem_alloc(i32, i32) #1

declare dso_local i32* @vdev_config_generate(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kmem_free(i32**, i32) #1

declare dso_local i32 @spa_sync_nvlist(%struct.TYPE_7__*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
