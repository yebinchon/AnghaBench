; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_zfetch.c_dmu_zfetch_stream_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_zfetch.c_dmu_zfetch_stream_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i8* }

@NANOSEC = common dso_local global i32 0, align 4
@zfetch_min_sec_reap = common dso_local global i32 0, align 4
@zfetch_max_streams = common dso_local global i32 0, align 4
@zfetch_max_distance = common dso_local global i32 0, align 4
@zfetchstat_max_streams = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @dmu_zfetch_stream_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_zfetch_stream_create(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = call i32 @RW_WRITE_HELD(i32* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_13__* @list_head(i32* %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  br label %17

17:                                               ; preds = %42, %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = call %struct.TYPE_13__* @list_next(i32* %22, %struct.TYPE_13__* %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = call i32 (...) @gethrtime()
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load i32, i32* @NANOSEC, align 4
  %31 = sdiv i32 %29, %30
  %32 = load i32, i32* @zfetch_min_sec_reap, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = call i32 @dmu_zfetch_stream_remove(%struct.TYPE_14__* %35, %struct.TYPE_13__* %36)
  br label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %7, align 8
  br label %17

44:                                               ; preds = %17
  %45 = load i32, i32* @zfetch_max_streams, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %50, %55
  %57 = load i32, i32* @zfetch_max_distance, align 4
  %58 = sdiv i32 %56, %57
  %59 = call i32 @MIN(i32 %45, i32 %58)
  %60 = call i32 @MAX(i32 1, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load i32, i32* @zfetchstat_max_streams, align 4
  %66 = call i32 @ZFETCHSTAT_BUMP(i32 %65)
  br label %90

67:                                               ; preds = %44
  %68 = load i32, i32* @KM_SLEEP, align 4
  %69 = call %struct.TYPE_13__* @kmem_zalloc(i32 32, i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %9, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = call i32 (...) @gethrtime()
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* @MUTEX_DEFAULT, align 4
  %85 = call i32 @mutex_init(i32* %83, i32* null, i32 %84, i32* null)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = call i32 @list_insert_head(i32* %87, %struct.TYPE_13__* %88)
  br label %90

90:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_13__* @list_head(i32*) #1

declare dso_local %struct.TYPE_13__* @list_next(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @dmu_zfetch_stream_remove(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ZFETCHSTAT_BUMP(i32) #1

declare dso_local %struct.TYPE_13__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
