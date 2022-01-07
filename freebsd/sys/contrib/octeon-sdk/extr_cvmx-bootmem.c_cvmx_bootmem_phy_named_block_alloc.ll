; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@named_block_name_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_named_block_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i64 @__cvmx_bootmem_check_version(i32 3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %79

19:                                               ; preds = %6
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @__cvmx_bootmem_lock(i32 %20)
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @cvmx_bootmem_phy_named_block_find(i8* %22, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @__cvmx_bootmem_unlock(i32 %30)
  store i32 -1, i32* %7, align 4
  br label %79

32:                                               ; preds = %19
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cvmx_bootmem_phy_named_block_find(i8* null, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @__cvmx_bootmem_unlock(i32 %40)
  store i32 -1, i32* %7, align 4
  br label %79

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @cvmx_bootmem_phy_alloc(i32 %51, i32 %52, i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %42
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @base_addr, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @named_block_name_len, align 4
  %73 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %72)
  %74 = call i32 @CVMX_BOOTMEM_NAMED_SET_NAME(i32 %70, i8* %71, i32 %73)
  br label %75

75:                                               ; preds = %61, %42
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @__cvmx_bootmem_unlock(i32 %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %39, %29, %18
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i64 @__cvmx_bootmem_check_version(i32) #1

declare dso_local i32 @__cvmx_bootmem_lock(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_named_block_find(i8*, i32) #1

declare dso_local i32 @__cvmx_bootmem_unlock(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @CVMX_BOOTMEM_NAMED_SET_NAME(i32, i8*, i32) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
