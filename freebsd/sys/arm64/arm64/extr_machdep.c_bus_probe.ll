; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"kern.cfg.order\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@ARM64_BUS_ACPI = common dso_local global i64 0, align 8
@arm64_bus_method = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"fdt\00", align 1
@ARM64_BUS_FDT = common dso_local global i64 0, align 8
@ARM64_BUS_NONE = common dso_local global i64 0, align 8
@ACPI_SIG_SPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %6 = call i8* @kern_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %67

9:                                                ; preds = %0
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %56, %9
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 44
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21
  %34 = load i64, i64* @ARM64_BUS_ACPI, align 8
  store i64 %34, i64* @arm64_bus_method, align 8
  br label %59

35:                                               ; preds = %27, %17, %14
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %42
  %55 = load i64, i64* @ARM64_BUS_FDT, align 8
  store i64 %55, i64* @arm64_bus_method, align 8
  br label %59

56:                                               ; preds = %48, %38, %35
  %57 = load i8*, i8** %4, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 44)
  store i8* %58, i8** %4, align 8
  br label %11

59:                                               ; preds = %54, %33, %11
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @freeenv(i8* %60)
  %62 = load i64, i64* @arm64_bus_method, align 8
  %63 = load i64, i64* @ARM64_BUS_NONE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  br label %87

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %0
  %68 = load i64, i64* @arm64_bus_method, align 8
  %69 = load i64, i64* @ARM64_BUS_NONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* @ARM64_BUS_FDT, align 8
  store i64 %75, i64* @arm64_bus_method, align 8
  br label %82

76:                                               ; preds = %71
  %77 = load i32, i32* %2, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* @ARM64_BUS_ACPI, align 8
  store i64 %80, i64* @arm64_bus_method, align 8
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i8*, i8** %5, align 8
  %85 = icmp eq i8* %84, null
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %83, %65
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
