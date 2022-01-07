; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_DEVBUF = common dso_local global i32 0, align 4
@X86BIOS_RAM_BASE = common dso_local global i32 0, align 4
@x86bios_rom_phys = common dso_local global i32 0, align 4
@X86BIOS_PAGE_SIZE = common dso_local global i32 0, align 4
@x86bios_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x86bios_alloc(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i8* null, i8** %4, align 8
  br label %39

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @X86BIOS_RAM_BASE, align 4
  %20 = load i32, i32* @x86bios_rom_phys, align 4
  %21 = load i32, i32* @X86BIOS_PAGE_SIZE, align 4
  %22 = call i8* @contigmalloc(i64 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 0)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @vtophys(i8* %26)
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = call i32 @mtx_lock(i32* @x86bios_lock)
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @x86bios_set_pages(i32 %31, i32 %33, i64 %34)
  %36 = call i32 @mtx_unlock(i32* @x86bios_lock)
  br label %37

37:                                               ; preds = %25, %15
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local i8* @contigmalloc(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @x86bios_set_pages(i32, i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
