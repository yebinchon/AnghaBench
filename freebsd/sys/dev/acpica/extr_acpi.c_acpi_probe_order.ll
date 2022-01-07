; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_probe_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_probe_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PNP0C01\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0C02\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PNP0100\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PNP0103\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PNP0B00\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PNP0C09\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"PNP0C0F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @acpi_probe_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_probe_order(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @AcpiGetType(i32 %6, i64* %5)
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @acpi_MatchHid(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @acpi_MatchHid(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = load i32*, i32** %4, align 8
  store i32 1, i32* %22, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @acpi_MatchHid(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @acpi_MatchHid(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @acpi_MatchHid(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27, %23
  %36 = load i32*, i32** %4, align 8
  store i32 2, i32* %36, align 4
  br label %51

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @acpi_MatchHid(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  store i32 3, i32* %42, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @acpi_MatchHid(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  store i32 4, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %21
  br label %53

53:                                               ; preds = %52, %11
  ret void
}

declare dso_local i32 @AcpiGetType(i32, i64*) #1

declare dso_local i64 @acpi_MatchHid(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
