; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_load_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_load_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32*, i32, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.symsort_thunk = type { %struct.symtab*, i32* }

@symvalcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.symtab*, i64)* @load_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_symtab(i32* %0, %struct.symtab* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symtab*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.symsort_thunk, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.symtab* %1, %struct.symtab** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @gelf_getehdr(i32* %14, i32* %8)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  store i32* null, i32** %11, align 8
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @elf_nextscn(i32* %20, i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @gelf_getshdr(i32* %25, %struct.TYPE_3__* %9)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %33

32:                                               ; preds = %24
  br label %19

33:                                               ; preds = %31, %19
  %34 = load i32*, i32** %11, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %97

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %39, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 1048576
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %97

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @elf_getdata(i32* %47, i32* null)
  %49 = load %struct.symtab*, %struct.symtab** %6, align 8
  %50 = getelementptr inbounds %struct.symtab, %struct.symtab* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = icmp eq i32* %48, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %97

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = call i32* @calloc(i32 %54, i32 4)
  %56 = load %struct.symtab*, %struct.symtab** %6, align 8
  %57 = getelementptr inbounds %struct.symtab, %struct.symtab* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.symtab*, %struct.symtab** %6, align 8
  %59 = getelementptr inbounds %struct.symtab, %struct.symtab* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %97

63:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.symtab*, %struct.symtab** %6, align 8
  %71 = getelementptr inbounds %struct.symtab, %struct.symtab* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %64

79:                                               ; preds = %64
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.symtab*, %struct.symtab** %6, align 8
  %82 = getelementptr inbounds %struct.symtab, %struct.symtab* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.symtab*, %struct.symtab** %6, align 8
  %86 = getelementptr inbounds %struct.symtab, %struct.symtab* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %10, i32 0, i32 1
  store i32* %87, i32** %88, align 8
  %89 = load %struct.symtab*, %struct.symtab** %6, align 8
  %90 = getelementptr inbounds %struct.symsort_thunk, %struct.symsort_thunk* %10, i32 0, i32 0
  store %struct.symtab* %89, %struct.symtab** %90, align 8
  %91 = load %struct.symtab*, %struct.symtab** %6, align 8
  %92 = getelementptr inbounds %struct.symtab, %struct.symtab* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @symvalcmp, align 4
  %96 = call i32 @qsort_r(i32* %93, i32 %94, i32 4, %struct.symsort_thunk* %10, i32 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %79, %62, %52, %45, %36, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32* @gelf_getehdr(i32*, i32*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @elf_getdata(i32*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @qsort_r(i32*, i32, i32, %struct.symsort_thunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
