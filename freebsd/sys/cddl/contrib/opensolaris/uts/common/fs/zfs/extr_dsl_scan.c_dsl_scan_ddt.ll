; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_ddt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_ddt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i64, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"visiting ddb=%llu/%llu/%llu/%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"scanned %llu ddt entries with class_max = %u; suspending=%u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*)* @dsl_scan_ddt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_ddt(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %5, align 8
  %13 = bitcast %struct.TYPE_19__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %81, %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %21 = call i32 @ddt_walk(%struct.TYPE_14__* %19, %struct.TYPE_20__* %20, %struct.TYPE_19__* %6)
  store i32 %21, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %14
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %82

33:                                               ; preds = %23
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %9, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = call i32* @avl_first(i32* %64)
  %66 = icmp eq i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @dsl_scan_ddt_entry(%struct.TYPE_17__* %69, i64 %72, %struct.TYPE_19__* %6, i32* %73)
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i64 @dsl_scan_check_suspend(%struct.TYPE_17__* %77, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %33
  br label %82

81:                                               ; preds = %33
  br label %14

82:                                               ; preds = %80, %32, %14
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %89, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ENOENT, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %97, %82
  %102 = phi i1 [ true, %82 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @ENOENT, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %117, label %108

108:                                              ; preds = %101
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %111, %115
  br label %117

117:                                              ; preds = %108, %101
  %118 = phi i1 [ true, %101 ], [ %116, %108 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @ASSERT(i32 %119)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ddt_walk(%struct.TYPE_14__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @dprintf(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32* @avl_first(i32*) #2

declare dso_local i32 @dsl_scan_ddt_entry(%struct.TYPE_17__*, i64, %struct.TYPE_19__*, i32*) #2

declare dso_local i64 @dsl_scan_check_suspend(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
