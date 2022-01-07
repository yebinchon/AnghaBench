; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_last_used_pkey_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_last_used_pkey_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32* }

@IB_NUM_PKEY_ELEMENTS_IN_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64*)* @last_used_pkey_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_used_pkey_index(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = call i32 @CL_ASSERT(i64* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call %struct.TYPE_14__* @osm_pkey_tbl_new_block_get(%struct.TYPE_13__* %13, i64 %17)
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @cl_ntoh16(i32 %36)
  %38 = load i64, i64* @IB_NUM_PKEY_ELEMENTS_IN_BLOCK, align 8
  %39 = urem i64 %37, %38
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %30, %22
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* @IB_NUM_PKEY_ELEMENTS_IN_BLOCK, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %60, %45
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ib_pkey_is_invalid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %63

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %47, label %63

63:                                               ; preds = %60, %58
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @CL_ASSERT(i64*) #1

declare dso_local %struct.TYPE_14__* @osm_pkey_tbl_new_block_get(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @ib_pkey_is_invalid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
