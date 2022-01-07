; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_wmi.c_acpi_wmi_hex_to_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_wmi.c_acpi_wmi_hex_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @acpi_wmi_hex_to_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wmi_hex_to_int(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ule i32 48, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ule i32 %17, 57
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 48
  store i32 %21, i32* %6, align 4
  br label %43

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ule i32 65, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp ule i32 %26, 70
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 55
  store i32 %30, i32* %6, align 4
  br label %42

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ule i32 97, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ule i32 %35, 102
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, 87
  store i32 %39, i32* %6, align 4
  br label %41

40:                                               ; preds = %34, %31
  store i32 1, i32* %3, align 4
  br label %79

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %7, align 4
  %45 = icmp ule i32 48, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp ule i32 %47, 57
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %50, 48
  store i32 %51, i32* %7, align 4
  br label %73

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp ule i32 65, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ule i32 %56, 70
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 55
  store i32 %60, i32* %7, align 4
  br label %72

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %7, align 4
  %63 = icmp ule i32 97, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp ule i32 %65, 102
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = sub i32 %68, 87
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %64, %61
  store i32 1, i32* %3, align 4
  br label %79

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 4
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %75, %76
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %70, %40
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
