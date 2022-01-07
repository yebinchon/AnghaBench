; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_buf_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_buf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__, %struct.TYPE_15__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ARC_STATE_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_buf_info(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = call i32 @memset(%struct.TYPE_18__* %14, i32 0, i32 52)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %115

19:                                               ; preds = %3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = call i64 @HDR_HAS_L1HDR(%struct.TYPE_19__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %10, align 8
  br label %34

34:                                               ; preds = %28, %19
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = call i64 @HDR_HAS_L2HDR(%struct.TYPE_19__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %9, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %80

44:                                               ; preds = %41
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = call i32 @zfs_refcount_count(i32* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %44, %41
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = icmp ne %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %83, %80
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @ARC_STATE_ANON, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %100, %97 ], [ %102, %101 ]
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = call i32 @arc_buf_type(%struct.TYPE_19__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %112 = call i32 @arc_hdr_size(%struct.TYPE_19__* %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %18
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @HDR_HAS_L1HDR(%struct.TYPE_19__*) #1

declare dso_local i64 @HDR_HAS_L2HDR(%struct.TYPE_19__*) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

declare dso_local i32 @arc_buf_type(%struct.TYPE_19__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
