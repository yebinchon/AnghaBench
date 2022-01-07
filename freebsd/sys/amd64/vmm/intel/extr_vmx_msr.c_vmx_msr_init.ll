; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_LSTAR = common dso_local global i32 0, align 4
@host_msrs = common dso_local global i8** null, align 8
@IDX_MSR_LSTAR = common dso_local global i64 0, align 8
@MSR_CSTAR = common dso_local global i32 0, align 4
@IDX_MSR_CSTAR = common dso_local global i64 0, align 8
@MSR_STAR = common dso_local global i32 0, align 4
@IDX_MSR_STAR = common dso_local global i64 0, align 8
@MSR_SF_MASK = common dso_local global i32 0, align 4
@IDX_MSR_SF_MASK = common dso_local global i64 0, align 8
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@misc_enable = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@platform_info = common dso_local global i32 0, align 4
@turbo_ratio_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_msr_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MSR_LSTAR, align 4
  %5 = call i8* @rdmsr(i32 %4)
  %6 = load i8**, i8*** @host_msrs, align 8
  %7 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  store i8* %5, i8** %8, align 8
  %9 = load i32, i32* @MSR_CSTAR, align 4
  %10 = call i8* @rdmsr(i32 %9)
  %11 = load i8**, i8*** @host_msrs, align 8
  %12 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  store i8* %10, i8** %13, align 8
  %14 = load i32, i32* @MSR_STAR, align 4
  %15 = call i8* @rdmsr(i32 %14)
  %16 = load i8**, i8*** @host_msrs, align 8
  %17 = load i64, i64* @IDX_MSR_STAR, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @MSR_SF_MASK, align 4
  %20 = call i8* @rdmsr(i32 %19)
  %21 = load i8**, i8*** @host_msrs, align 8
  %22 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %20, i8** %23, align 8
  %24 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %25 = call i8* @rdmsr(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* @misc_enable, align 4
  %27 = load i32, i32* @misc_enable, align 4
  %28 = or i32 %27, 6144
  store i32 %28, i32* @misc_enable, align 4
  %29 = load i32, i32* @misc_enable, align 4
  %30 = and i32 %29, -327681
  store i32 %30, i32* @misc_enable, align 4
  %31 = call i64 (...) @nehalem_cpu()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %0
  %34 = call i64 (...) @westmere_cpu()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %0
  store i32 133330000, i32* %1, align 4
  br label %38

37:                                               ; preds = %33
  store i32 100000000, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* @tsc_freq, align 4
  %40 = load i32, i32* %1, align 4
  %41 = sdiv i32 %39, %40
  %42 = and i32 %41, 255
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %2, align 4
  %46 = shl i32 %45, 40
  %47 = or i32 %44, %46
  store i32 %47, i32* @platform_info, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %56, %38
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* @turbo_ratio_limit, align 4
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %2, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* @turbo_ratio_limit, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %48

59:                                               ; preds = %48
  ret void
}

declare dso_local i8* @rdmsr(i32) #1

declare dso_local i64 @nehalem_cpu(...) #1

declare dso_local i64 @westmere_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
