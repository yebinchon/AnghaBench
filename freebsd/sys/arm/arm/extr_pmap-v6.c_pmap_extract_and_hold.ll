; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE1_RO = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PTE1_OFFSET = common dso_local global i32 0, align 4
@PTE2_RO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pmap_extract_and_hold(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @PMAP_LOCK(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pmap_pte1(i32 %14, i32 %15)
  %17 = call i32 @pte1_load(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @pte1_is_section(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PTE1_RO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VM_PROT_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pte1_pa(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PTE1_OFFSET, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @PHYS_TO_VM_PAGE(i32 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @vm_page_wire_mapped(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32* null, i32** %11, align 8
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %26
  br label %83

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @pte1_is_link(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32* @pmap_pte2(i32 %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @pte2_load(i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @pmap_pte2_release(i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @pte2_is_valid(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PTE2_RO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @VM_PROT_WRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @pte2_pa(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32* @PHYS_TO_VM_PAGE(i32 %74)
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @vm_page_wire_mapped(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32* null, i32** %11, align 8
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %66, %50
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @PMAP_UNLOCK(i32 %84)
  %86 = load i32*, i32** %11, align 8
  ret i32* %86
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pte1_load(i32) #1

declare dso_local i32 @pmap_pte1(i32, i32) #1

declare dso_local i64 @pte1_is_section(i32) #1

declare dso_local i32 @pte1_pa(i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i64 @pte1_is_link(i32) #1

declare dso_local i32* @pmap_pte2(i32, i32) #1

declare dso_local i32 @pte2_load(i32*) #1

declare dso_local i32 @pmap_pte2_release(i32*) #1

declare dso_local i64 @pte2_is_valid(i32) #1

declare dso_local i32 @pte2_pa(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
