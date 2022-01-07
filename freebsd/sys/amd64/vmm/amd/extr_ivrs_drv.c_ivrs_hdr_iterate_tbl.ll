; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivrs_hdr_iterate_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_ivrs_drv.c_ivrs_hdr_iterate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ACPI_SIG_IVRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AMD-Vi:IVHD/IVMD is corrupted, length : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"AMD-Vi:Not IVHD/IVMD type(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.TYPE_7__*, i8*)*, i8*)* @ivrs_hdr_iterate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivrs_hdr_iterate_tbl(i32 (%struct.TYPE_7__*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.TYPE_7__*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32 (%struct.TYPE_7__*, i8*)* %0, i32 (%struct.TYPE_7__*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @ACPI_SIG_IVRS, align 4
  %10 = bitcast %struct.TYPE_8__** %5 to i32**
  %11 = call i32 @AcpiGetTable(i32 %9, i32 1, i32** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %89

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 1
  %26 = bitcast %struct.TYPE_8__* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = bitcast %struct.TYPE_8__* %27 to i8*
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = bitcast i8* %33 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  br label %35

35:                                               ; preds = %80, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = icmp ult %struct.TYPE_7__* %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = bitcast %struct.TYPE_7__* %40 to i32*
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = bitcast %struct.TYPE_7__* %47 to i32*
  %49 = icmp ugt i32* %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %89

55:                                               ; preds = %39
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %75 [
    i32 129, label %59
    i32 130, label %59
    i32 128, label %59
    i32 133, label %67
    i32 132, label %67
    i32 131, label %67
  ]

59:                                               ; preds = %55, %55, %55
  %60 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %3, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 %60(%struct.TYPE_7__* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %89

66:                                               ; preds = %59
  br label %80

67:                                               ; preds = %55, %55, %55
  %68 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %3, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 %68(%struct.TYPE_7__* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %89

74:                                               ; preds = %67
  br label %80

75:                                               ; preds = %55
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %74, %66
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = bitcast %struct.TYPE_7__* %81 to i32*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = bitcast i32* %87 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %6, align 8
  br label %35

89:                                               ; preds = %15, %22, %65, %73, %50, %35
  ret void
}

declare dso_local i32 @AcpiGetTable(i32, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
