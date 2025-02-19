; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@Ln_ENTRIES_SHIFT = common dso_local global i32 0, align 4
@NUL2E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, %struct.rwlock**)* @pmap_alloc_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pmap_alloc_l2(i32 %0, i32 %1, %struct.rwlock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rwlock**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rwlock** %2, %struct.rwlock*** %6, align 8
  br label %10

10:                                               ; preds = %51, %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @pmap_l1(i32 %11, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @pmap_load(i32* %17)
  %19 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @L1_TABLE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @pmap_load(i32* %24)
  %26 = load i32, i32* @ATTR_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %53

34:                                               ; preds = %16, %10
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pmap_l2_pindex(i32 %35)
  %37 = load i32, i32* @Ln_ENTRIES_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* @NUL2E, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %45 = call %struct.TYPE_5__* @_pmap_alloc_l3(i32 %39, i64 %43, %struct.rwlock** %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %8, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = icmp eq %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %50 = icmp ne %struct.rwlock** %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %10

52:                                               ; preds = %48, %34
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  ret %struct.TYPE_5__* %54
}

declare dso_local i32* @pmap_l1(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_l2_pindex(i32) #1

declare dso_local %struct.TYPE_5__* @_pmap_alloc_l3(i32, i64, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
