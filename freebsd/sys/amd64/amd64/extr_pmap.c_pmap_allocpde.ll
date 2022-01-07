; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allocpde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allocpde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@PG_FRAME = common dso_local global i32 0, align 4
@NPDPEPGSHIFT = common dso_local global i32 0, align 4
@NUPDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, %struct.rwlock**)* @pmap_allocpde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pmap_allocpde(i32 %0, i32 %1, %struct.rwlock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rwlock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rwlock** %2, %struct.rwlock*** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pmap_valid_bit(i32 %12)
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %54, %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @pmap_pdpe(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PG_FRAME, align 4
  %30 = and i32 %28, %29
  %31 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %56

36:                                               ; preds = %20, %14
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pmap_pde_pindex(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NPDPEPGSHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i64, i64* @NUPDE, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %48 = call %struct.TYPE_5__* @_pmap_allocpte(i32 %42, i64 %46, %struct.rwlock** %47)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %11, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = icmp eq %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.rwlock**, %struct.rwlock*** %6, align 8
  %53 = icmp ne %struct.rwlock** %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %14

55:                                               ; preds = %51, %36
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %57
}

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32* @pmap_pdpe(i32, i32) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_pde_pindex(i32) #1

declare dso_local %struct.TYPE_5__* @_pmap_allocpte(i32, i64, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
