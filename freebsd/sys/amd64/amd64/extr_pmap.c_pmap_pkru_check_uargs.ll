; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_check_uargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pkru_check_uargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@PT_X86 = common dso_local global i64 0, align 8
@PMAP_MAX_PKRU_IDX = common dso_local global i64 0, align 8
@AMD64_PKRU_PERSIST = common dso_local global i32 0, align 4
@AMD64_PKRU_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64, i64, i32)* @pmap_pkru_check_uargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pkru_check_uargs(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PT_X86, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @PMAP_MAX_PKRU_IDX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @AMD64_PKRU_PERSIST, align 4
  %24 = load i32, i32* @AMD64_PKRU_EXCL, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %17, %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %49

31:                                               ; preds = %21
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %6, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load i32, i32* @cpu_stdext_feature2, align 4
  %43 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOTSUP, align 4
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %46, %39, %29
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
