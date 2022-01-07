; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_metaslab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_metaslab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32**, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@SCL_ALLOC = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unable to read the metaslab array [error=%d]\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"metaslab_init failed [error=%d]\00", align 1
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_metaslab_init(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = ashr i64 %25, %28
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i32, i32* @SCL_ALLOC, align 4
  %35 = load i32, i32* @RW_WRITER, align 4
  %36 = call i64 @spa_config_held(%struct.TYPE_9__* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %2
  %39 = phi i1 [ true, %2 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %172

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sle i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 %60, 8
  %62 = load i32, i32* @KM_SLEEP, align 4
  %63 = call i32** @kmem_zalloc(i64 %61, i32 %62)
  store i32** %63, i32*** %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %47
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32**, i32*** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = mul i64 %71, 8
  %73 = call i32 @bcopy(i32** %69, i32** %70, i64 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = mul i64 %77, 8
  %79 = call i32 @kmem_free(i32** %76, i64 %78)
  br label %80

80:                                               ; preds = %66, %47
  %81 = load i32**, i32*** %11, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  store i32** %81, i32*** %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %138, %80
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %88
  store i64 0, i64* %13, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = mul i64 %105, 8
  %107 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %108 = call i32 @dmu_read(i32* %101, i32 %104, i64 %106, i32 8, i64* %13, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @vdev_dbgmsg(%struct.TYPE_8__* %112, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %3, align 4
  br label %172

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116, %95, %92
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  %126 = load i32**, i32*** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  %129 = call i32 @metaslab_init(i32 %120, i64 %121, i64 %122, i64 %123, i32** %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @vdev_dbgmsg(%struct.TYPE_8__* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %3, align 4
  br label %172

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %8, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %8, align 8
  br label %88

141:                                              ; preds = %88
  %142 = load i64, i64* %5, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = load i32, i32* @SCL_ALLOC, align 4
  %147 = load i32, i32* @FTAG, align 4
  %148 = load i32, i32* @RW_WRITER, align 4
  %149 = call i32 @spa_config_enter(%struct.TYPE_9__* %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i64, i64* %9, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @metaslab_group_activate(i32 %161)
  br label %163

163:                                              ; preds = %158, %153, %150
  %164 = load i64, i64* %5, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = load i32, i32* @SCL_ALLOC, align 4
  %169 = load i32, i32* @FTAG, align 4
  %170 = call i32 @spa_config_exit(%struct.TYPE_9__* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %132, %111, %46
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32** @kmem_zalloc(i64, i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i64) #1

declare dso_local i32 @kmem_free(i32**, i64) #1

declare dso_local i32 @dmu_read(i32*, i32, i64, i32, i64*, i32) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @metaslab_init(i32, i64, i64, i64, i32**) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @metaslab_group_activate(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
