; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_clear_accum_pkey_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_pkey_mgr.c_clear_accum_pkey_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @clear_accum_pkey_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_accum_pkey_index(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i64 @cl_map_head(i32* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %51, %2
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i64 @cl_map_end(i32* %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @cl_map_next(i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @cl_map_obj(i64 %25)
  %27 = inttoptr i64 %26 to i64*
  %28 = bitcast i64* %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @CL_ASSERT(i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @cl_map_remove_item(i32* %39, i64 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = call i32 @osm_pkey_find_last_accum_pkey_index(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %47, %37
  br label %53

51:                                               ; preds = %22
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %9, align 8
  br label %16

53:                                               ; preds = %50, %16
  ret void
}

declare dso_local i64 @cl_map_head(i32*) #1

declare dso_local i64 @cl_map_end(i32*) #1

declare dso_local i64 @cl_map_next(i64) #1

declare dso_local i64 @cl_map_obj(i64) #1

declare dso_local i32 @CL_ASSERT(i8*) #1

declare dso_local i32 @cl_map_remove_item(i32*, i64) #1

declare dso_local i32 @osm_pkey_find_last_accum_pkey_index(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
