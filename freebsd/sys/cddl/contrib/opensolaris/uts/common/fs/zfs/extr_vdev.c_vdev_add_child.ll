; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__**, i32* }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_add_child(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* @SCL_ALL, align 8
  %18 = load i32, i32* @RW_WRITER, align 4
  %19 = call i64 @spa_config_held(i32* %16, i64 %17, i32 %18)
  %20 = load i64, i64* @SCL_ALL, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %140

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp eq %struct.TYPE_8__* %48, null
  br label %50

50:                                               ; preds = %42, %36
  %51 = phi i1 [ true, %36 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 8
  store i64 %57, i64* %5, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @MAX(i32 %61, i64 %63)
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = mul i64 %70, 8
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* @KM_SLEEP, align 4
  %74 = call %struct.TYPE_8__** @kmem_zalloc(i64 %72, i32 %73)
  store %struct.TYPE_8__** %74, %struct.TYPE_8__*** %8, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %76, align 8
  %78 = icmp ne %struct.TYPE_8__** %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %50
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %81, align 8
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @bcopy(%struct.TYPE_8__** %82, %struct.TYPE_8__** %83, i64 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @kmem_free(%struct.TYPE_8__** %88, i64 %89)
  br label %91

91:                                               ; preds = %79, %50
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  store %struct.TYPE_8__** %92, %struct.TYPE_8__*** %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %98, i64 %99
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  br label %111

109:                                              ; preds = %91
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi %struct.TYPE_8__* [ %108, %105 ], [ %110, %109 ]
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = icmp eq %struct.TYPE_8__* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @ASSERT(i32 %123)
  br label %125

125:                                              ; preds = %136, %111
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = icmp ne %struct.TYPE_8__* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %128
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %3, align 8
  br label %125

140:                                              ; preds = %35, %125
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local %struct.TYPE_8__** @kmem_zalloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_8__**, %struct.TYPE_8__**, i64) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
