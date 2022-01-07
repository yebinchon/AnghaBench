; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmCheckForHardwareId.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmbuffer.c_AcpiDmCheckForHardwareId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }

@METHOD_NAME__HID = common dso_local global i32 0, align 4
@METHOD_NAME__CID = common dso_local global i32 0, align 4
@AML_PACKAGE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmCheckForHardwareId(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @AcpiPsGetName(%struct.TYPE_9__* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call %struct.TYPE_9__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_9__* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %59

16:                                               ; preds = %10
  %17 = load i32, i32* @METHOD_NAME__HID, align 4
  %18 = call i64 @ACPI_COMPARE_NAMESEG(i32* %3, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @AcpiDmGetHardwareIdType(%struct.TYPE_9__* %21)
  br label %59

23:                                               ; preds = %16
  %24 = load i32, i32* @METHOD_NAME__CID, align 4
  %25 = call i64 @ACPI_COMPARE_NAMESEG(i32* %3, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %59

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AML_PACKAGE_OP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i32 @AcpiDmGetHardwareIdType(%struct.TYPE_9__* %36)
  br label %59

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call %struct.TYPE_9__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_9__* %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %4, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %4, align 8
  br label %49

49:                                               ; preds = %52, %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = call i32 @AcpiDmGetHardwareIdType(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %4, align 8
  br label %49

59:                                               ; preds = %9, %15, %20, %27, %35, %43, %49
  ret void
}

declare dso_local i32 @AcpiPsGetName(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @AcpiPsGetDepthNext(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32*, i32) #1

declare dso_local i32 @AcpiDmGetHardwareIdType(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
