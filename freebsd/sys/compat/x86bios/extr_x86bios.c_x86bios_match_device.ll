; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_match_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PCIR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86bios_match_device(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64* @x86bios_get_orm(i32 %12)
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 24
  %20 = bitcast i64* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16toh(i32 %21)
  %23 = load i64*, i64** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64* %25, i64** %6, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = call i64 @bcmp(i64* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %17
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 10
  %32 = bitcast i64* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16toh(i32 %33)
  %35 = icmp slt i32 %34, 24
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 20
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29, %17
  store i32 0, i32* %3, align 4
  br label %88

42:                                               ; preds = %36
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  %45 = bitcast i64* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16toh(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 6
  %50 = bitcast i64* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16toh(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i64*, i64** %6, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 13
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 14
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 15
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @pci_get_vendor(i32 %63)
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %42
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @pci_get_device(i32 %68)
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @pci_get_class(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @pci_get_subclass(i32 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @pci_get_progif(i32 %83)
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %76, %71, %66, %42
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %41, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64* @x86bios_get_orm(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @bcmp(i64*, i8*, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @pci_get_progif(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
