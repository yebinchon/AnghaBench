; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/resources/extr_rsdump.c_AcpiRsDumpAddressCommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/resources/extr_rsdump.c_AcpiRsDumpAddressCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AcpiRsDumpMemoryFlags = common dso_local global i32 0, align 4
@AcpiRsDumpIoFlags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Resource Type\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Bus Number Range\00", align 1
@AcpiRsDumpGeneralFlags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @AcpiRsDumpAddressCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiRsDumpAddressCommon(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %12
    i32 130, label %16
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @AcpiRsDumpMemoryFlags, align 4
  %11 = call i32 @AcpiRsDumpDescriptor(%struct.TYPE_6__* %9, i32 %10)
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = load i32, i32* @AcpiRsDumpIoFlags, align 4
  %15 = call i32 @AcpiRsDumpDescriptor(%struct.TYPE_6__* %13, i32 %14)
  br label %24

16:                                               ; preds = %1
  %17 = call i32 @AcpiRsOutString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AcpiRsOutInteger8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %16, %12, %8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = load i32, i32* @AcpiRsDumpGeneralFlags, align 4
  %27 = call i32 @AcpiRsDumpDescriptor(%struct.TYPE_6__* %25, i32 %26)
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @AcpiRsDumpDescriptor(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @AcpiRsOutString(i8*, i8*) #1

declare dso_local i32 @AcpiRsOutInteger8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
