; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_id_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_device_id_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_MATCHHID_NOMATCH = common dso_local global i32 0, align 4
@ACPI_MATCHHID_HID = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@BUS_PROBE_LOW_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i8**)* @acpi_device_id_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_id_probe(i32 %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @acpi_get_handle(i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i8**, i8*** %8, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @acpi_get_type(i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %5, align 4
  br label %80

35:                                               ; preds = %29, %23
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %75, %35
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load i32*, i32** %10, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @acpi_MatchHid(i32* %44, i8* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ACPI_MATCHHID_NOMATCH, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %75

55:                                               ; preds = %43
  %56 = load i8**, i8*** %9, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i8**, i8*** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @ACPI_MATCHHID_HID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @BUS_PROBE_LOW_PRIORITY, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 4
  br label %80

75:                                               ; preds = %54
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %36

78:                                               ; preds = %36
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %73, %33, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_get_type(i32) #1

declare dso_local i32 @acpi_MatchHid(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
