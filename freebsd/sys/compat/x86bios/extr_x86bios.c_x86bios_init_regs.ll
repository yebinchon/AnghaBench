; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_init_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86regs = type { i64, i32 }

@x86bios_seg_phys = common dso_local global i32 0, align 4
@X86BIOS_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86bios_init_regs(%struct.x86regs* %0) #0 {
  %2 = alloca %struct.x86regs*, align 8
  store %struct.x86regs* %0, %struct.x86regs** %2, align 8
  %3 = load %struct.x86regs*, %struct.x86regs** %2, align 8
  %4 = call i32 @bzero(%struct.x86regs* %3, i32 16)
  %5 = load i32, i32* @x86bios_seg_phys, align 4
  %6 = call i32 @X86BIOS_PHYSTOSEG(i32 %5)
  %7 = load %struct.x86regs*, %struct.x86regs** %2, align 8
  %8 = getelementptr inbounds %struct.x86regs, %struct.x86regs* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load i64, i64* @X86BIOS_PAGE_SIZE, align 8
  %10 = sub nsw i64 %9, 2
  %11 = load %struct.x86regs*, %struct.x86regs** %2, align 8
  %12 = getelementptr inbounds %struct.x86regs, %struct.x86regs* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.x86regs*, i32) #1

declare dso_local i32 @X86BIOS_PHYSTOSEG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
