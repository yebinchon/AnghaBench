; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_allocpte2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_allocpte2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32, i32)* @pmap_allocpte2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_allocpte2(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pte1_index(i32 %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %55, %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @pte1_load(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @pte1_is_section(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pmap_demote_pte1(%struct.TYPE_5__* %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @pte1_load(i32* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %25, %13
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @pte1_is_link(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @pte1_link_pa(i32 %37)
  %39 = call i32* @PHYS_TO_VM_PAGE(i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pt2_wirecount_inc(i32* %40, i32 %41)
  br label %57

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32* @_pmap_allocpte2(%struct.TYPE_5__* %44, i32 %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %13

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32*, i32** %10, align 8
  ret i32* %58
}

declare dso_local i32 @pte1_index(i32) #1

declare dso_local i32 @pte1_load(i32*) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @pmap_demote_pte1(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i64 @pte1_is_link(i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pte1_link_pa(i32) #1

declare dso_local i32 @pt2_wirecount_inc(i32*, i32) #1

declare dso_local i32* @_pmap_allocpte2(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
