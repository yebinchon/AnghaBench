; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/aarch64/extr_reloc.c_reloc_jmpslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/aarch64/extr_reloc.c_reloc_jmpslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_jmpslots(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = bitcast %struct.TYPE_12__* %22 to i8*
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %10, align 8
  br label %33

33:                                               ; preds = %91, %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = icmp ult %struct.TYPE_12__* %34, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %12, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ELF_R_TYPE(i32 %48)
  switch i32 %49, label %90 [
    i32 128, label %50
  ]

50:                                               ; preds = %37
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ELF_R_SYM(i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_11__* @find_symdef(i32 %54, %struct.TYPE_10__* %55, %struct.TYPE_10__** %8, i32 %58, i32* null, i32* %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %11, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = icmp eq %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %97

64:                                               ; preds = %50
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ELF_ST_TYPE(i32 %67)
  %69 = load i32, i32* @STT_GNU_IFUNC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  br label %91

74:                                               ; preds = %64
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = bitcast %struct.TYPE_12__* %87 to i32*
  %89 = call i32 @reloc_jmpslot(i32* %83, i32 %84, %struct.TYPE_10__* %85, %struct.TYPE_10__* %86, i32* %88)
  br label %90

90:                                               ; preds = %37, %74
  br label %91

91:                                               ; preds = %90, %71
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 1
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %10, align 8
  br label %33

94:                                               ; preds = %33
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %63, %18
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_11__* @find_symdef(i32, %struct.TYPE_10__*, %struct.TYPE_10__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @reloc_jmpslot(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
