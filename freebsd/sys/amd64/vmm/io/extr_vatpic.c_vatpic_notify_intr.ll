; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_notify_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_notify_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32, %struct.atpic* }
%struct.atpic = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"vatpic_notify_intr not locked\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"atpic slave notify pin = %d (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"atpic slave no eligible interrupts (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"atpic master notify pin = %d (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@APIC_LVT_LINT0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"atpic master no eligible interrupts (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vatpic*)* @vatpic_notify_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpic_notify_intr(%struct.vatpic* %0) #0 {
  %2 = alloca %struct.vatpic*, align 8
  %3 = alloca %struct.atpic*, align 8
  %4 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %2, align 8
  %5 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %6 = call i32 @VATPIC_LOCKED(%struct.vatpic* %5)
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %9 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %8, i32 0, i32 1
  %10 = load %struct.atpic*, %struct.atpic** %9, align 8
  %11 = getelementptr inbounds %struct.atpic, %struct.atpic* %10, i64 1
  store %struct.atpic* %11, %struct.atpic** %3, align 8
  %12 = load %struct.atpic*, %struct.atpic** %3, align 8
  %13 = getelementptr inbounds %struct.atpic, %struct.atpic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %1
  %17 = load %struct.atpic*, %struct.atpic** %3, align 8
  %18 = call i32 @vatpic_get_highest_irrpin(%struct.atpic* %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.atpic*, %struct.atpic** %3, align 8
  %24 = getelementptr inbounds %struct.atpic, %struct.atpic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atpic*, %struct.atpic** %3, align 8
  %27 = getelementptr inbounds %struct.atpic, %struct.atpic* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atpic*, %struct.atpic** %3, align 8
  %30 = getelementptr inbounds %struct.atpic, %struct.atpic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VATPIC_CTR4(%struct.vatpic* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.atpic*, %struct.atpic** %3, align 8
  %34 = getelementptr inbounds %struct.atpic, %struct.atpic* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %36 = call i32 @vatpic_set_pinstate(%struct.vatpic* %35, i32 2, i32 1)
  %37 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %38 = call i32 @vatpic_set_pinstate(%struct.vatpic* %37, i32 2, i32 0)
  br label %51

39:                                               ; preds = %16, %1
  %40 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %41 = load %struct.atpic*, %struct.atpic** %3, align 8
  %42 = getelementptr inbounds %struct.atpic, %struct.atpic* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atpic*, %struct.atpic** %3, align 8
  %45 = getelementptr inbounds %struct.atpic, %struct.atpic* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.atpic*, %struct.atpic** %3, align 8
  %48 = getelementptr inbounds %struct.atpic, %struct.atpic* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @VATPIC_CTR3(%struct.vatpic* %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %20
  %52 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %53 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %52, i32 0, i32 1
  %54 = load %struct.atpic*, %struct.atpic** %53, align 8
  %55 = getelementptr inbounds %struct.atpic, %struct.atpic* %54, i64 0
  store %struct.atpic* %55, %struct.atpic** %3, align 8
  %56 = load %struct.atpic*, %struct.atpic** %3, align 8
  %57 = getelementptr inbounds %struct.atpic, %struct.atpic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %51
  %61 = load %struct.atpic*, %struct.atpic** %3, align 8
  %62 = call i32 @vatpic_get_highest_irrpin(%struct.atpic* %61)
  store i32 %62, i32* %4, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.atpic*, %struct.atpic** %3, align 8
  %68 = getelementptr inbounds %struct.atpic, %struct.atpic* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.atpic*, %struct.atpic** %3, align 8
  %71 = getelementptr inbounds %struct.atpic, %struct.atpic* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.atpic*, %struct.atpic** %3, align 8
  %74 = getelementptr inbounds %struct.atpic, %struct.atpic* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @VATPIC_CTR4(%struct.vatpic* %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.atpic*, %struct.atpic** %3, align 8
  %78 = getelementptr inbounds %struct.atpic, %struct.atpic* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %80 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @APIC_LVT_LINT0, align 4
  %83 = call i32 @lapic_set_local_intr(i32 %81, i32 -1, i32 %82)
  %84 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %85 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @vioapic_pulse_irq(i32 %86, i32 0)
  br label %100

88:                                               ; preds = %60, %51
  %89 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %90 = load %struct.atpic*, %struct.atpic** %3, align 8
  %91 = getelementptr inbounds %struct.atpic, %struct.atpic* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.atpic*, %struct.atpic** %3, align 8
  %94 = getelementptr inbounds %struct.atpic, %struct.atpic* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.atpic*, %struct.atpic** %3, align 8
  %97 = getelementptr inbounds %struct.atpic, %struct.atpic* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VATPIC_CTR3(%struct.vatpic* %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %88, %64
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VATPIC_LOCKED(%struct.vatpic*) #1

declare dso_local i32 @vatpic_get_highest_irrpin(%struct.atpic*) #1

declare dso_local i32 @VATPIC_CTR4(%struct.vatpic*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vatpic_set_pinstate(%struct.vatpic*, i32, i32) #1

declare dso_local i32 @VATPIC_CTR3(%struct.vatpic*, i8*, i32, i32, i32) #1

declare dso_local i32 @lapic_set_local_intr(i32, i32, i32) #1

declare dso_local i32 @vioapic_pulse_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
