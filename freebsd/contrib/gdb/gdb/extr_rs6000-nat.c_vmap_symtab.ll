; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_vmap_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32 }
%struct.vmap = type { i64, i64, i64, i64, i32, %struct.objfile* }
%struct.section_offsets = type { i64* }

@symfile_objfile = common dso_local global %struct.objfile* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmap*)* @vmap_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmap_symtab(%struct.vmap* %0) #0 {
  %2 = alloca %struct.vmap*, align 8
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.section_offsets*, align 8
  %5 = alloca i32, align 4
  store %struct.vmap* %0, %struct.vmap** %2, align 8
  %6 = load %struct.vmap*, %struct.vmap** %2, align 8
  %7 = getelementptr inbounds %struct.vmap, %struct.vmap* %6, i32 0, i32 5
  %8 = load %struct.objfile*, %struct.objfile** %7, align 8
  store %struct.objfile* %8, %struct.objfile** %3, align 8
  %9 = load %struct.objfile*, %struct.objfile** %3, align 8
  %10 = icmp eq %struct.objfile* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %13 = icmp eq %struct.objfile* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %95

15:                                               ; preds = %11
  %16 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  store %struct.objfile* %16, %struct.objfile** %3, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.vmap*, %struct.vmap** %2, align 8
  %19 = getelementptr inbounds %struct.vmap, %struct.vmap* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %95

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.objfile*, %struct.objfile** %3, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %27)
  %29 = call i64 @alloca(i32 %28)
  %30 = inttoptr i64 %29 to %struct.section_offsets*
  store %struct.section_offsets* %30, %struct.section_offsets** %4, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %49, %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.objfile*, %struct.objfile** %3, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.objfile*, %struct.objfile** %3, align 8
  %39 = getelementptr inbounds %struct.objfile, %struct.objfile* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @ANOFFSET(i32 %40, i32 %41)
  %43 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %44 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %42, i64* %48, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load %struct.vmap*, %struct.vmap** %2, align 8
  %54 = getelementptr inbounds %struct.vmap, %struct.vmap* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vmap*, %struct.vmap** %2, align 8
  %57 = getelementptr inbounds %struct.vmap, %struct.vmap* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %61 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.objfile*, %struct.objfile** %3, align 8
  %64 = call i64 @SECT_OFF_TEXT(%struct.objfile* %63)
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  %66 = load %struct.vmap*, %struct.vmap** %2, align 8
  %67 = getelementptr inbounds %struct.vmap, %struct.vmap* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vmap*, %struct.vmap** %2, align 8
  %70 = getelementptr inbounds %struct.vmap, %struct.vmap* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %74 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.objfile*, %struct.objfile** %3, align 8
  %77 = call i64 @SECT_OFF_DATA(%struct.objfile* %76)
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 %72, i64* %78, align 8
  %79 = load %struct.vmap*, %struct.vmap** %2, align 8
  %80 = getelementptr inbounds %struct.vmap, %struct.vmap* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.vmap*, %struct.vmap** %2, align 8
  %83 = getelementptr inbounds %struct.vmap, %struct.vmap* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %87 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.objfile*, %struct.objfile** %3, align 8
  %90 = call i64 @SECT_OFF_BSS(%struct.objfile* %89)
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %85, i64* %91, align 8
  %92 = load %struct.objfile*, %struct.objfile** %3, align 8
  %93 = load %struct.section_offsets*, %struct.section_offsets** %4, align 8
  %94 = call i32 @objfile_relocate(%struct.objfile* %92, %struct.section_offsets* %93)
  br label %95

95:                                               ; preds = %52, %22, %14
  ret void
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i64 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i64 @SECT_OFF_DATA(%struct.objfile*) #1

declare dso_local i64 @SECT_OFF_BSS(%struct.objfile*) #1

declare dso_local i32 @objfile_relocate(%struct.objfile*, %struct.section_offsets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
