; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_load_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_load_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DMU_READ_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32**)* @load_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_nvlist(%struct.TYPE_6__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32**, i32*** %7, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @FTAG, align 4
  %18 = call i32 @dmu_bonus_hold(i32 %15, i64 %16, i32 %17, %struct.TYPE_7__** %8)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dmu_buf_rele(%struct.TYPE_7__* %29, i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_alloc(i64 %32, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %42 = call i32 @dmu_read(i32 %37, i64 %38, i32 0, i64 %39, i8* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %23
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32**, i32*** %7, align 8
  %49 = call i32 @nvlist_unpack(i8* %46, i64 %47, i32** %48, i32 0)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %23
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @kmem_free(i8* %51, i64 %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @dmu_bonus_hold(i32, i64, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @dmu_read(i32, i64, i32, i64, i8*, i32) #1

declare dso_local i32 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
