; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_new_pkey_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_new_pkey_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64* }

@IB_NUM_PKEY_ELEMENTS_IN_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @new_pkey_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_pkey_exists(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i64 @cl_ptr_vector_get_size(i32* %11)
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %44, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.TYPE_7__* @osm_pkey_tbl_new_block_get(%struct.TYPE_6__* %18, i64 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %44

24:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @IB_NUM_PKEY_ELEMENTS_IN_BLOCK, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %48

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %13

47:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @cl_ptr_vector_get_size(i32*) #1

declare dso_local %struct.TYPE_7__* @osm_pkey_tbl_new_block_get(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
