; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_config_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_config_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__**, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }

@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_config_dirty(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 @spa_writeable(%struct.TYPE_13__* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %100

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %35, i64 %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = icmp eq %struct.TYPE_12__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @B_TRUE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  br label %167

61:                                               ; preds = %47
  %62 = load i64, i64* @B_TRUE, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %69 = call i64 @nvlist_lookup_nvlist_array(i32 %67, i32 %68, i32*** %7, i32* %8)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %76 = call i64 @nvlist_lookup_nvlist_array(i32 %74, i32 %75, i32*** %7, i32* %8)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  br label %80

80:                                               ; preds = %71, %61
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load i32**, i32*** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @nvlist_free(i32* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = load i64, i64* @B_TRUE, align 8
  %95 = call i32* @vdev_config_generate(%struct.TYPE_13__* %92, %struct.TYPE_12__* %93, i64 %94, i32 0)
  %96 = load i32**, i32*** %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* %95, i32** %99, align 8
  br label %167

100:                                              ; preds = %1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load i32, i32* @SCL_CONFIG, align 4
  %103 = load i32, i32* @RW_WRITER, align 4
  %104 = call i64 @spa_config_held(%struct.TYPE_13__* %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = call i32 @spa_get_dsl(%struct.TYPE_13__* %107)
  %109 = call i64 @dsl_pool_sync_context(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = load i32, i32* @SCL_CONFIG, align 4
  %114 = load i32, i32* @RW_READER, align 4
  %115 = call i64 @spa_config_held(%struct.TYPE_13__* %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %111, %106
  %118 = phi i1 [ false, %106 ], [ %116, %111 ]
  br label %119

119:                                              ; preds = %117, %100
  %120 = phi i1 [ true, %100 ], [ %118, %117 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = icmp eq %struct.TYPE_12__* %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %136, i64 %138
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  call void @vdev_config_dirty(%struct.TYPE_12__* %140)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %127

144:                                              ; preds = %127
  br label %167

145:                                              ; preds = %119
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = icmp eq %struct.TYPE_12__* %146, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ASSERT(i32 %151)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = call i32 @list_link_active(i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %145
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %159 = call i64 @vdev_is_concrete(%struct.TYPE_12__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %165 = call i32 @list_insert_head(i32* %163, %struct.TYPE_12__* %164)
  br label %166

166:                                              ; preds = %161, %157, %145
  br label %167

167:                                              ; preds = %53, %80, %166, %144
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_13__*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32, i32, i32***, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32* @vdev_config_generate(%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @spa_get_dsl(%struct.TYPE_13__*) #1

declare dso_local i32 @list_link_active(i32*) #1

declare dso_local i64 @vdev_is_concrete(%struct.TYPE_12__*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
