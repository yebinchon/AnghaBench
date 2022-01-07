; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_invalidate_cache_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_invalidate_cache_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_CLFLUSHOPT = common dso_local global i32 0, align 4
@PMAP_CLFLUSH_THRESHOLD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_CLFSH = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_clflush_line_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_invalidate_cache_pages(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @cpu_stdext_feature, align 4
  %10 = load i32, i32* @CPUID_STDEXT_CLFLUSHOPT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PMAP_CLFLUSH_THRESHOLD, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sdiv i32 %15, %16
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @cpu_feature, align 4
  %21 = load i32, i32* @CPUID_CLFSH, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %2
  %28 = call i32 (...) @pmap_invalidate_cache()
  br label %93

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %41

34:                                               ; preds = %29
  %35 = load i64, i64* @cpu_vendor_id, align 8
  %36 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @mfence()
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %32
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %77, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @VM_PAGE_TO_PHYS(i32 %51)
  %53 = call i64 @PHYS_TO_DMAP(i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %72, %46
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @clflushopt(i64 %66)
  br label %71

68:                                               ; preds = %62
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @clflush(i64 %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* @cpu_clflush_line_size, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %5, align 8
  br label %58

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %42

80:                                               ; preds = %42
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %92

85:                                               ; preds = %80
  %86 = load i64, i64* @cpu_vendor_id, align 8
  %87 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (...) @mfence()
  br label %91

91:                                               ; preds = %89, %85
  br label %92

92:                                               ; preds = %91, %83
  br label %93

93:                                               ; preds = %92, %27
  ret void
}

declare dso_local i32 @pmap_invalidate_cache(...) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @clflushopt(i64) #1

declare dso_local i32 @clflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
