; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_unmap_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_unmap_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86bios_map = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@x86bios_ivt = common dso_local global i32* null, align 8
@x86bios_rom = common dso_local global i32* null, align 8
@X86BIOS_ROM_SIZE = common dso_local global i32 0, align 4
@x86bios_seg = common dso_local global i32* null, align 8
@X86BIOS_SEG_SIZE = common dso_local global i32 0, align 4
@X86BIOS_IVT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x86bios_unmap_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86bios_unmap_mem() #0 {
  %1 = load i32*, i32** @x86bios_map, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32*, i32** @x86bios_map, align 8
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = call i32 @free(i32* %4, i32 %5)
  store i32* null, i32** @x86bios_map, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i32*, i32** @x86bios_ivt, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32*, i32** @x86bios_ivt, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @free(i32* %11, i32 %12)
  store i32* null, i32** @x86bios_ivt, align 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32*, i32** @x86bios_rom, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** @x86bios_rom, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = load i32, i32* @X86BIOS_ROM_SIZE, align 4
  %21 = call i32 @pmap_unmapdev(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32*, i32** @x86bios_seg, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** @x86bios_seg, align 8
  %27 = load i32, i32* @X86BIOS_SEG_SIZE, align 4
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @contigfree(i32* %26, i32 %27, i32 %28)
  store i32* null, i32** @x86bios_seg, align 8
  br label %30

30:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i32 @contigfree(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
