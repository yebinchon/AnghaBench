; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_unhookirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_unhookirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intrupt = type { i64, i32, i32, i32, i32 }

@intrupts = common dso_local global %struct.intrupt* null, align 8
@ICU_MASK = common dso_local global i32 0, align 4
@icu_oldmask = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intrupt*)* @dos_unhookirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos_unhookirq(%struct.intrupt* %0) #0 {
  %2 = alloca %struct.intrupt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.intrupt* %0, %struct.intrupt** %2, align 8
  %6 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %7 = load %struct.intrupt*, %struct.intrupt** @intrupts, align 8
  %8 = ptrtoint %struct.intrupt* %6 to i64
  %9 = ptrtoint %struct.intrupt* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add i32 8, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = call i32 (...) @disable()
  %19 = load i32, i32* @ICU_MASK, align 4
  %20 = load i32, i32* @ICU_MASK, align 4
  %21 = call zeroext i8 @inportb(i32 %20)
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @icu_oldmask, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = or i32 %22, %27
  %29 = trunc i32 %28 to i8
  %30 = call i32 @outportb(i32 %19, i8 zeroext %29)
  %31 = call i32 (...) @enable()
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %34 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %33, i32 0, i32 4
  %35 = call i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32 %32, i32* %34)
  %36 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %37 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %36, i32 0, i32 3
  %38 = call i32 @_go32_dpmi_free_real_mode_callback(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %41 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %40, i32 0, i32 2
  %42 = call i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32 %39, i32* %41)
  %43 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %44 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %43, i32 0, i32 1
  %45 = call i32 @_go32_dpmi_free_iret_wrapper(i32* %44)
  %46 = load %struct.intrupt*, %struct.intrupt** %2, align 8
  %47 = getelementptr inbounds %struct.intrupt, %struct.intrupt* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32 @disable(...) #1

declare dso_local i32 @outportb(i32, i8 zeroext) #1

declare dso_local zeroext i8 @inportb(i32) #1

declare dso_local i32 @enable(...) #1

declare dso_local i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_free_real_mode_callback(i32*) #1

declare dso_local i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_free_iret_wrapper(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
