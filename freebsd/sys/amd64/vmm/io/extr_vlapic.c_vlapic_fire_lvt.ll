; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_fire_lvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_fire_lvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, i32* }

@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_LVT_VECTOR = common dso_local global i32 0, align 4
@APIC_LVT_DM = common dso_local global i32 0, align 4
@APIC_ESR_SEND_ILLEGAL_VECTOR = common dso_local global i32 0, align 4
@APIC_LVT_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlapic*, i64)* @vlapic_fire_lvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlapic_fire_lvt(%struct.vlapic* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %10 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @atomic_load_acq_32(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @APIC_LVT_M, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @APIC_LVT_VECTOR, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @APIC_LVT_DM, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %69 [
    i32 129, label %28
    i32 128, label %53
    i32 130, label %61
  ]

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %33 = load i32, i32* @APIC_ESR_SEND_ILLEGAL_VECTOR, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @APIC_LVT_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @vlapic_set_error(%struct.vlapic* %32, i32 %33, i32 %37)
  store i32 0, i32* %3, align 4
  br label %71

39:                                               ; preds = %28
  %40 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @vlapic_set_intr_ready(%struct.vlapic* %40, i32 %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %46 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %49 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vcpu_notify_event(i32 %47, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %44, %39
  br label %70

53:                                               ; preds = %20
  %54 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %55 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %58 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @vm_inject_nmi(i32 %56, i32 %59)
  br label %70

61:                                               ; preds = %20
  %62 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %63 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %66 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vm_inject_extint(i32 %64, i32 %67)
  br label %70

69:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %61, %53, %52
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %31, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @atomic_load_acq_32(i32*) #1

declare dso_local i32 @vlapic_set_error(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @vlapic_set_intr_ready(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @vcpu_notify_event(i32, i32, i32) #1

declare dso_local i32 @vm_inject_nmi(i32, i32) #1

declare dso_local i32 @vm_inject_extint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
