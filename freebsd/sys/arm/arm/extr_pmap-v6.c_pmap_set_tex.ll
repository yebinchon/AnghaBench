; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_set_tex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_set_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VM_MEMATTR_WB_WA = common dso_local global i32 0, align 4
@pt_memattr = common dso_local global i32 0, align 4
@ttb_flags = common dso_local global i32 0, align 4
@tex_class = common dso_local global i32* null, align 8
@TEXDEF_TYPE_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_TYPE_MASK = common dso_local global i32 0, align 4
@TEXDEF_INNER_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_INNER_MASK = common dso_local global i32 0, align 4
@TEXDEF_OUTER_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_OUTER_MASK = common dso_local global i32 0, align 4
@TEXDEF_NOS_SHIFT = common dso_local global i32 0, align 4
@TEXDEF_NOS_MASK = common dso_local global i32 0, align 4
@PRRR_DS0 = common dso_local global i32 0, align 4
@PRRR_DS1 = common dso_local global i32 0, align 4
@PRRR_NS1 = common dso_local global i32 0, align 4
@VM_MEMATTR_NOCACHE = common dso_local global i32 0, align 4
@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_set_tex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @VM_MEMATTR_WB_WA, align 4
  store i32 %8, i32* @pt_memattr, align 4
  %9 = call i32 @encode_ttb_flags(i32 0)
  store i32 %9, i32* @ttb_flags, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %75, %0
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %78

13:                                               ; preds = %10
  %14 = load i32*, i32** @tex_class, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TEXDEF_TYPE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @TEXDEF_TYPE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32*, i32** @tex_class, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TEXDEF_INNER_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @TEXDEF_INNER_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** @tex_class, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TEXDEF_OUTER_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @TEXDEF_OUTER_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** @tex_class, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TEXDEF_NOS_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32, i32* @TEXDEF_NOS_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 2
  %53 = shl i32 %50, %52
  %54 = load i32, i32* %1, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 24
  %59 = shl i32 %56, %58
  %60 = load i32, i32* %1, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 2
  %65 = shl i32 %62, %64
  %66 = load i32, i32* %2, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 2
  %71 = add nsw i32 %70, 16
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %2, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %13
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %10

78:                                               ; preds = %10
  %79 = load i32, i32* @PRRR_DS0, align 4
  %80 = load i32, i32* @PRRR_DS1, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %1, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @cp15_prrr_set(i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @cp15_nmrr_set(i32 %86)
  %88 = call i32 (...) @tlb_flush_all_local()
  ret void
}

declare dso_local i32 @encode_ttb_flags(i32) #1

declare dso_local i32 @cp15_prrr_set(i32) #1

declare dso_local i32 @cp15_nmrr_set(i32) #1

declare dso_local i32 @tlb_flush_all_local(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
