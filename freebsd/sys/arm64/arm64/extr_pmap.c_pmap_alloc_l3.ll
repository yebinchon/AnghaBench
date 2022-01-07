; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_alloc_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rwlock = type { i32 }

@ATTR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pmap_alloc_l3: Invalid level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, %struct.rwlock**)* @pmap_alloc_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pmap_alloc_l3(i32 %0, i32 %1, %struct.rwlock** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwlock**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.rwlock** %2, %struct.rwlock*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pmap_l2_pindex(i32 %13)
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @pmap_pde(i32 %16, i32 %17, i32* %12)
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %40 [
    i32 -1, label %20
    i32 0, label %21
    i32 1, label %22
    i32 2, label %23
  ]

20:                                               ; preds = %15
  br label %43

21:                                               ; preds = %15
  br label %43

22:                                               ; preds = %15
  br label %43

23:                                               ; preds = %15
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @pmap_load(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ATTR_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %4, align 8
  br label %56

39:                                               ; preds = %23
  br label %43

40:                                               ; preds = %15
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %39, %22, %21, %20
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %47 = call %struct.TYPE_5__* @_pmap_alloc_l3(i32 %44, i32 %45, %struct.rwlock** %46)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %11, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = icmp eq %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %52 = icmp ne %struct.rwlock** %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %15

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  br label %56

56:                                               ; preds = %54, %28
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %57
}

declare dso_local i32 @pmap_l2_pindex(i32) #1

declare dso_local i32* @pmap_pde(i32, i32, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @_pmap_alloc_l3(i32, i32, %struct.rwlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
