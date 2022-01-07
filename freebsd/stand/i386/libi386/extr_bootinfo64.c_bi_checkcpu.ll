; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo64.c_bi_checkcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo64.c_bi_checkcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSL_ID = common dso_local global i32 0, align 4
@INTEL_VENDOR_ID = common dso_local global i32 0, align 4
@AMD_VENDOR_ID = common dso_local global i32 0, align 4
@CENTAUR_VENDOR_ID = common dso_local global i32 0, align 4
@AMDID_LM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bi_checkcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bi_checkcpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = call i32 (...) @read_eflags()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PSL_ID, align 4
  %9 = xor i32 %7, %8
  %10 = call i32 @write_eflags(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (...) @read_eflags()
  %13 = xor i32 %11, %12
  %14 = load i32, i32* @PSL_ID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %61

18:                                               ; preds = %0
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %20 = call i32 @do_cpuid(i32 0, i32* %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* @INTEL_VENDOR_ID, align 4
  %34 = call i64 @strncmp(i8* %32, i32 %33, i32 12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %18
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* @AMD_VENDOR_ID, align 4
  %39 = call i64 @strncmp(i8* %37, i32 %38, i32 12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* @CENTAUR_VENDOR_ID, align 4
  %44 = call i64 @strncmp(i8* %42, i32 %43, i32 12)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %61

47:                                               ; preds = %41, %36, %18
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %49 = call i32 @do_cpuid(i32 -2147483648, i32* %48)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp uge i32 %51, -2147483647
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %61

54:                                               ; preds = %47
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %56 = call i32 @do_cpuid(i32 -2147483647, i32* %55)
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AMDID_LM, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %54, %53, %46, %17
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @read_eflags(...) #1

declare dso_local i32 @write_eflags(i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
