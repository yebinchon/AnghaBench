; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_update_tmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_update_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vioapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vlapic = type { i32 }

@REDIR_ENTRIES = common dso_local global i32 0, align 4
@IOART_TRGRLVL = common dso_local global i32 0, align 4
@IOART_DESTMOD = common dso_local global i32 0, align 4
@IOART_DESTPHY = common dso_local global i32 0, align 4
@IOART_DELMOD = common dso_local global i32 0, align 4
@IOART_INTVEC = common dso_local global i32 0, align 4
@APIC_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32, i8*)* @vioapic_update_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_update_tmr(%struct.vm* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vioapic*, align 8
  %8 = alloca %struct.vlapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load %struct.vm*, %struct.vm** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.vlapic* @vm_lapic(%struct.vm* %17, i32 %18)
  store %struct.vlapic* %19, %struct.vlapic** %8, align 8
  %20 = load %struct.vm*, %struct.vm** %4, align 8
  %21 = call %struct.vioapic* @vm_ioapic(%struct.vm* %20)
  store %struct.vioapic* %21, %struct.vioapic** %7, align 8
  %22 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %23 = call i32 @VIOAPIC_LOCK(%struct.vioapic* %22)
  %24 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %25 = call i32 @vlapic_reset_tmr(%struct.vlapic* %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %79, %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @REDIR_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %32 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %40 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @IOART_TRGRLVL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %30
  br label %79

57:                                               ; preds = %30
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @IOART_DESTMOD, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @IOART_DESTPHY, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IOART_DELMOD, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @IOART_INTVEC, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @APIC_ID_SHIFT, align 4
  %72 = ashr i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.vlapic*, %struct.vlapic** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @vlapic_set_tmr_level(%struct.vlapic* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %57, %56
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %26

82:                                               ; preds = %26
  %83 = load %struct.vioapic*, %struct.vioapic** %7, align 8
  %84 = call i32 @VIOAPIC_UNLOCK(%struct.vioapic* %83)
  ret void
}

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local %struct.vioapic* @vm_ioapic(%struct.vm*) #1

declare dso_local i32 @VIOAPIC_LOCK(%struct.vioapic*) #1

declare dso_local i32 @vlapic_reset_tmr(%struct.vlapic*) #1

declare dso_local i32 @vlapic_set_tmr_level(%struct.vlapic*, i32, i32, i32, i32) #1

declare dso_local i32 @VIOAPIC_UNLOCK(%struct.vioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
