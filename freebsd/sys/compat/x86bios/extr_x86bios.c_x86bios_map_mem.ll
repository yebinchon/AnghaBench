; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_map_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/x86bios/extr_x86bios.c_x86bios_map_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86BIOS_PAGES = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@x86bios_map = common dso_local global i32* null, align 8
@X86BIOS_IVT_SIZE = common dso_local global i32 0, align 4
@x86bios_ivt = common dso_local global i32* null, align 8
@X86BIOS_ROM_BASE = common dso_local global i32 0, align 4
@x86bios_rom_phys = common dso_local global i32 0, align 4
@X86BIOS_ROM_SIZE = common dso_local global i32 0, align 4
@x86bios_rom = common dso_local global i32* null, align 8
@X86BIOS_SEG_SIZE = common dso_local global i32 0, align 4
@X86BIOS_RAM_BASE = common dso_local global i32 0, align 4
@X86BIOS_PAGE_SIZE = common dso_local global i32 0, align 4
@x86bios_seg = common dso_local global i32* null, align 8
@x86bios_seg_phys = common dso_local global i32 0, align 4
@X86BIOS_IVT_BASE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"x86bios:  IVT 0x%06jx-0x%06jx at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"x86bios: SSEG 0x%06jx-0x%06jx at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"x86bios: EBDA 0x%06jx-0x%06jx at %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"x86bios:  ROM 0x%06jx-0x%06jx at %p\0A\00", align 1
@X86BIOS_MEM_SIZE = common dso_local global i64 0, align 8
@PAT_WRITE_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @x86bios_map_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86bios_map_mem() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X86BIOS_PAGES, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 4, %3
  %5 = trunc i64 %4 to i32
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @malloc(i32 %5, i32 %6, i32 %9)
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** @x86bios_map, align 8
  %12 = load i32*, i32** @x86bios_map, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %106

15:                                               ; preds = %0
  %16 = load i32, i32* @X86BIOS_IVT_SIZE, align 4
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc(i32 %16, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @x86bios_ivt, align 8
  %23 = load i32*, i32** @x86bios_ivt, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %106

26:                                               ; preds = %15
  %27 = load i32, i32* @X86BIOS_ROM_BASE, align 4
  store i32 %27, i32* @x86bios_rom_phys, align 4
  %28 = load i32, i32* @x86bios_rom_phys, align 4
  %29 = load i32, i32* @X86BIOS_ROM_SIZE, align 4
  %30 = call i32* @pmap_mapdev(i32 %28, i32 %29)
  store i32* %30, i32** @x86bios_rom, align 8
  %31 = load i32*, i32** @x86bios_rom, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %106

34:                                               ; preds = %26
  %35 = load i32, i32* @X86BIOS_SEG_SIZE, align 4
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @X86BIOS_RAM_BASE, align 4
  %39 = load i32, i32* @x86bios_rom_phys, align 4
  %40 = load i32, i32* @X86BIOS_PAGE_SIZE, align 4
  %41 = call i32* @contigmalloc(i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 0)
  store i32* %41, i32** @x86bios_seg, align 8
  %42 = load i32*, i32** @x86bios_seg, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %106

45:                                               ; preds = %34
  %46 = load i32*, i32** @x86bios_seg, align 8
  %47 = call i32 @vtophys(i32* %46)
  store i32 %47, i32* @x86bios_seg_phys, align 4
  %48 = load i32*, i32** @x86bios_ivt, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = load i32, i32* @X86BIOS_IVT_BASE, align 4
  %51 = load i32, i32* @X86BIOS_IVT_SIZE, align 4
  %52 = call i32 @x86bios_set_pages(i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** @x86bios_rom, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = load i32, i32* @x86bios_rom_phys, align 4
  %56 = load i32, i32* @X86BIOS_ROM_SIZE, align 4
  %57 = call i32 @x86bios_set_pages(i32 %54, i32 %55, i32 %56)
  %58 = load i32*, i32** @x86bios_seg, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = load i32, i32* @x86bios_seg_phys, align 4
  %61 = load i32, i32* @X86BIOS_SEG_SIZE, align 4
  %62 = call i32 @x86bios_set_pages(i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* @bootverbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %45
  %66 = load i32, i32* @X86BIOS_IVT_BASE, align 4
  %67 = load i32, i32* @X86BIOS_IVT_SIZE, align 4
  %68 = load i32, i32* @X86BIOS_IVT_BASE, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32*, i32** @x86bios_ivt, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70, i32* %71)
  %73 = load i32, i32* @x86bios_seg_phys, align 4
  %74 = load i32, i32* @X86BIOS_SEG_SIZE, align 4
  %75 = load i32, i32* @x86bios_seg_phys, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %76, 1
  %78 = load i32*, i32** @x86bios_seg, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %77, i32* %78)
  %80 = load i32, i32* @x86bios_rom_phys, align 4
  %81 = load i32, i32* @X86BIOS_ROM_BASE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load i32, i32* @x86bios_rom_phys, align 4
  %85 = load i32, i32* @X86BIOS_ROM_BASE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32*, i32** @x86bios_rom, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %83, %65
  %90 = load i32, i32* @X86BIOS_ROM_BASE, align 4
  %91 = load i64, i64* @X86BIOS_MEM_SIZE, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @X86BIOS_SEG_SIZE, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = load i32*, i32** @x86bios_rom, align 8
  %97 = load i32, i32* @X86BIOS_ROM_BASE, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* @x86bios_rom_phys, align 4
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %95, i32* %103)
  br label %105

105:                                              ; preds = %89, %45
  store i32 0, i32* %1, align 4
  br label %108

106:                                              ; preds = %44, %33, %25, %14
  %107 = call i32 (...) @x86bios_unmap_mem()
  store i32 1, i32* %1, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @pmap_mapdev(i32, i32) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @x86bios_set_pages(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32*) #1

declare dso_local i32 @x86bios_unmap_mem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
