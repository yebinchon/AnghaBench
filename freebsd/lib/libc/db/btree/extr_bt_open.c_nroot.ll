; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_open.c_nroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_open.c_nroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@RET_SUCCESS = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@MPOOL_PAGE_NEXT = common dso_local global i32 0, align 4
@P_ROOT = common dso_local global i64 0, align 8
@P_INVALID = common dso_local global i32 0, align 4
@BTDATAOFF = common dso_local global i64 0, align 8
@P_BLEAF = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @nroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nroot(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_9__* @mpool_get(i32 %9, i32 1, i32 0)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i32 @mpool_delete(i32 %32, %struct.TYPE_9__* %33)
  %35 = load i64, i64* @EINVAL, align 8
  store i64 %35, i64* @errno, align 8
  br label %43

36:                                               ; preds = %22, %17, %12
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i32 @mpool_put(i32 %39, %struct.TYPE_9__* %40, i32 0)
  %42 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %112

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINVAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @RET_ERROR, align 4
  store i32 %49, i32* %2, align 4
  br label %112

50:                                               ; preds = %44
  store i64 0, i64* @errno, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MPOOL_PAGE_NEXT, align 4
  %55 = call %struct.TYPE_9__* @mpool_new(i32 %53, i64* %6, i32 %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %4, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @RET_ERROR, align 4
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MPOOL_PAGE_NEXT, align 4
  %64 = call %struct.TYPE_9__* @mpool_new(i32 %62, i64* %6, i32 %63)
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %5, align 8
  %65 = icmp eq %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @RET_ERROR, align 4
  store i32 %67, i32* %2, align 4
  br label %112

68:                                               ; preds = %59
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @P_ROOT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @RET_ERROR, align 4
  store i32 %73, i32* %2, align 4
  br label %112

74:                                               ; preds = %68
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @P_INVALID, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 6
  store i32 %78, i32* %82, align 4
  %83 = load i64, i64* @BTDATAOFF, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @P_BLEAF, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memset(%struct.TYPE_9__* %94, i32 0, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = load i32, i32* @MPOOL_DIRTY, align 4
  %104 = call i32 @mpool_put(i32 %101, %struct.TYPE_9__* %102, i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load i32, i32* @MPOOL_DIRTY, align 4
  %110 = call i32 @mpool_put(i32 %107, %struct.TYPE_9__* %108, i32 %109)
  %111 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %74, %72, %66, %57, %48, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_9__* @mpool_get(i32, i32, i32) #1

declare dso_local i32 @mpool_delete(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @mpool_new(i32, i64*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
