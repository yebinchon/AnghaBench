; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_get_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_get_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_get_mapping(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pmap_valid_bit(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PMAP_LOCK(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32* @pmap_pml4e(i32 %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %92

35:                                               ; preds = %4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @pmap_pml4e_to_pdpe(i32* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %35
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PG_PS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %35
  br label %92

58:                                               ; preds = %51
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @pmap_pdpe_to_pde(i32* %59, i32 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %58
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PG_PS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %58
  br label %92

81:                                               ; preds = %74
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32* @pmap_pde_to_pte(i32* %82, i32 %83)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %80, %57, %34
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @PMAP_UNLOCK(i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  ret void
}

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pml4e(i32, i32) #1

declare dso_local i32* @pmap_pml4e_to_pdpe(i32*, i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
