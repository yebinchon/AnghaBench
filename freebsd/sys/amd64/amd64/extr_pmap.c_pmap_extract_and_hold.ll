; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_PS = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pmap_extract_and_hold(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pmap_rw_bit(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pmap_valid_bit(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PMAP_LOCK(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @pmap_pde(i32 %19, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %87

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PG_PS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VM_PROT_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PG_PS_FRAME, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PDRMASK, align 4
  %49 = and i32 %47, %48
  %50 = or i32 %46, %49
  %51 = call i32* @PHYS_TO_VM_PAGE(i32 %50)
  store i32* %51, i32** %12, align 8
  br label %52

52:                                               ; preds = %43, %38
  br label %78

53:                                               ; preds = %28
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32* @pmap_pde_to_pte(i32* %54, i32 %55)
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @VM_PROT_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PG_FRAME, align 4
  %75 = and i32 %73, %74
  %76 = call i32* @PHYS_TO_VM_PAGE(i32 %75)
  store i32* %76, i32** %12, align 8
  br label %77

77:                                               ; preds = %72, %67, %53
  br label %78

78:                                               ; preds = %77, %52
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @vm_page_wire_mapped(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  store i32* null, i32** %12, align 8
  br label %86

86:                                               ; preds = %85, %81, %78
  br label %87

87:                                               ; preds = %86, %24, %3
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @PMAP_UNLOCK(i32 %88)
  %90 = load i32*, i32** %12, align 8
  ret i32* %90
}

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
