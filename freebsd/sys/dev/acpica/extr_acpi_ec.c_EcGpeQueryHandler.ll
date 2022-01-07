; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcGpeQueryHandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_ec.c_EcGpeQueryHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec_softc = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"EcGpeQueryHandler called with NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @EcGpeQueryHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EcGpeQueryHandler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_ec_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.acpi_ec_softc*
  store %struct.acpi_ec_softc* %6, %struct.acpi_ec_softc** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %17, %1
  %12 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %12, i32 0, i32 0
  %14 = call i32 @atomic_load_acq_int(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %3, align 8
  %16 = call i32 @EcGpeQueryHandlerSub(%struct.acpi_ec_softc* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.acpi_ec_softc*, %struct.acpi_ec_softc** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_ec_softc, %struct.acpi_ec_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @atomic_cmpset_int(i32* %19, i32 %20, i32 0)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %11, label %24

24:                                               ; preds = %17
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @EcGpeQueryHandlerSub(%struct.acpi_ec_softc*) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
