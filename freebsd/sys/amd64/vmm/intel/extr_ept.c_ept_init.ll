; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_ept.c_ept_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_ept.c_ept_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_VMX_EPT_VPID_CAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMAP_NESTED_IPIMASK = common dso_local global i32 0, align 4
@ept_pmap_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hw.vmm.ept.use_superpages\00", align 1
@PMAP_PDE_SUPERPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"hw.vmm.ept.use_hw_ad_bits\00", align 1
@ept_enable_ad_bits = common dso_local global i32 0, align 4
@PMAP_EMULATE_AD_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"hw.vmm.ept.use_exec_only\00", align 1
@PMAP_SUPPORTS_EXEC_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ept_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @MSR_VMX_EPT_VPID_CAP, align 4
  %9 = call i32 @rdmsr(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @EPT_PWL4(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @EPT_MEMORY_TYPE_WB(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @INVVPID_SUPPORTED(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @INVVPID_ALL_TYPES_SUPPORTED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @INVEPT_SUPPORTED(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @INVEPT_ALL_TYPES_SUPPORTED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %25, %21, %17, %13, %1
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PMAP_NESTED_IPIMASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* @ept_pmap_flags, align 4
  store i32 1, i32* %5, align 4
  %39 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @EPT_PDE_SUPERPAGE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @PMAP_PDE_SUPERPAGE, align 4
  %48 = load i32, i32* @ept_pmap_flags, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @ept_pmap_flags, align 4
  br label %50

50:                                               ; preds = %46, %42, %35
  store i32 1, i32* %4, align 4
  %51 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @AD_BITS_SUPPORTED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* @ept_enable_ad_bits, align 4
  br label %63

59:                                               ; preds = %54, %50
  %60 = load i32, i32* @PMAP_EMULATE_AD_BITS, align 4
  %61 = load i32, i32* @ept_pmap_flags, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @ept_pmap_flags, align 4
  br label %63

63:                                               ; preds = %59, %58
  store i32 1, i32* %6, align 4
  %64 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @EPT_SUPPORTS_EXEC_ONLY(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @PMAP_SUPPORTS_EXEC_ONLY, align 4
  %73 = load i32, i32* @ept_pmap_flags, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @ept_pmap_flags, align 4
  br label %75

75:                                               ; preds = %71, %67, %63
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @EPT_PWL4(i32) #1

declare dso_local i32 @EPT_MEMORY_TYPE_WB(i32) #1

declare dso_local i32 @INVVPID_SUPPORTED(i32) #1

declare dso_local i32 @INVVPID_ALL_TYPES_SUPPORTED(i32) #1

declare dso_local i32 @INVEPT_SUPPORTED(i32) #1

declare dso_local i32 @INVEPT_ALL_TYPES_SUPPORTED(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i64 @EPT_PDE_SUPERPAGE(i32) #1

declare dso_local i64 @AD_BITS_SUPPORTED(i32) #1

declare dso_local i64 @EPT_SUPPORTS_EXEC_ONLY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
