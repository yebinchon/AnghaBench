; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_dfr_write_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_dfr_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, %struct.LAPIC* }
%struct.LAPIC = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ignoring write to DFR in x2apic mode: %#x\00", align 1
@APIC_DFR_MODEL_MASK = common dso_local global i32 0, align 4
@APIC_DFR_RESERVED = common dso_local global i32 0, align 4
@APIC_DFR_MODEL_FLAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"vlapic DFR in Flat Model\00", align 1
@APIC_DFR_MODEL_CLUSTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"vlapic DFR in Cluster Model\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DFR in Unknown Model %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_dfr_write_handler(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %4, i32 0, i32 1
  %6 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  store %struct.LAPIC* %6, %struct.LAPIC** %3, align 8
  %7 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %8 = call i64 @x2apic(%struct.vlapic* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %12 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %15 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @VM_CTR1(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %19 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %22 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %23 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @APIC_DFR_RESERVED, align 4
  %27 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %28 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %32 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @APIC_DFR_MODEL_FLAT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %40 = call i32 @VLAPIC_CTR0(%struct.vlapic* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %59

41:                                               ; preds = %20
  %42 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %43 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @APIC_DFR_MODEL_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @APIC_DFR_MODEL_CLUSTER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %51 = call i32 @VLAPIC_CTR0(%struct.vlapic* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %58

52:                                               ; preds = %41
  %53 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %54 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %55 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @VLAPIC_CTR1(%struct.vlapic* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %10, %58, %38
  ret void
}

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @VLAPIC_CTR0(%struct.vlapic*, i8*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
