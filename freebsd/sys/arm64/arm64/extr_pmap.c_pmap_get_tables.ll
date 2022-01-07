; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_get_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_get_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L0_TABLE = common dso_local global i32 0, align 4
@L1_BLOCK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_get_tables(%struct.TYPE_4__* %0, i32 %1, i32** %2, i32** %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %85

22:                                               ; preds = %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @pmap_l0(%struct.TYPE_4__* %23, i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32**, i32*** %10, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @pmap_load(i32* %28)
  %30 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @L0_TABLE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %85

35:                                               ; preds = %22
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @pmap_l0_to_l1(i32* %36, i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32**, i32*** %11, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @pmap_load(i32* %41)
  %43 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @L1_BLOCK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32**, i32*** %12, align 8
  store i32* null, i32** %48, align 8
  %49 = load i32**, i32*** %13, align 8
  store i32* null, i32** %49, align 8
  store i32 1, i32* %7, align 4
  br label %85

50:                                               ; preds = %35
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @pmap_load(i32* %51)
  %53 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @L1_TABLE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %85

58:                                               ; preds = %50
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32* @pmap_l1_to_l2(i32* %59, i32 %60)
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32**, i32*** %12, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @pmap_load(i32* %64)
  %66 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @L2_BLOCK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32**, i32*** %13, align 8
  store i32* null, i32** %71, align 8
  store i32 1, i32* %7, align 4
  br label %85

72:                                               ; preds = %58
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @pmap_load(i32* %73)
  %75 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @L2_TABLE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %85

80:                                               ; preds = %72
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32* @pmap_l2_to_l3(i32* %81, i32 %82)
  %84 = load i32**, i32*** %13, align 8
  store i32* %83, i32** %84, align 8
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %79, %70, %57, %47, %34, %21
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32* @pmap_l0(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
