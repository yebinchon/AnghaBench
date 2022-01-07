; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@named_block_num_blocks = common dso_local global i32 0, align 4
@named_block_name_len = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@named_block_array_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_named_block_find(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @__cvmx_bootmem_lock(i32 %15)
  %17 = call i32 @__cvmx_bootmem_check_version(i32 3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %78, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @named_block_num_blocks, align 4
  %23 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @named_block_name_len, align 4
  %25 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %74, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @size, align 4
  %34 = call i32 @CVMX_BOOTMEM_NAMED_GET_FIELD(i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %12, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @CVMX_BOOTMEM_NAMED_GET_NAME(i32 %45, i8* %44, i32 %46)
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @strncmp(i8* %48, i8* %44, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  store i32 2, i32* %14, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %14, align 4
  switch i32 %58, label %82 [
    i32 0, label %59
    i32 2, label %77
  ]

59:                                               ; preds = %56
  br label %69

60:                                               ; preds = %37, %31
  %61 = load i8*, i8** %3, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %77

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %27

77:                                               ; preds = %66, %56, %27
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @__cvmx_bootmem_unlock(i32 %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81

82:                                               ; preds = %56
  unreachable
}

declare dso_local i32 @__cvmx_bootmem_lock(i32) #1

declare dso_local i32 @__cvmx_bootmem_check_version(i32) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i32 @CVMX_BOOTMEM_NAMED_GET_FIELD(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CVMX_BOOTMEM_NAMED_GET_NAME(i32, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @__cvmx_bootmem_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
