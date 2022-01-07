; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_reloc_jmpslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/i386/extr_reloc.c_reloc_jmpslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown relocation type %x in PLT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_jmpslots(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = bitcast %struct.TYPE_13__* %22 to i8*
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  br label %33

33:                                               ; preds = %97, %19
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = icmp ult %struct.TYPE_13__* %34, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ELF_R_TYPE(i32 %40)
  switch i32 %41, label %90 [
    i32 128, label %42
    i32 129, label %89
  ]

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ELF_R_SYM(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_12__* @find_symdef(i32 %54, %struct.TYPE_11__* %55, %struct.TYPE_11__** %13, i32 %58, i32* null, i32* %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %12, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = icmp eq %struct.TYPE_12__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %103

64:                                               ; preds = %42
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ELF_ST_TYPE(i32 %67)
  %69 = load i32, i32* @STT_GNU_IFUNC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  br label %97

74:                                               ; preds = %64
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = call i32 @reloc_jmpslot(i32* %83, i32 %84, %struct.TYPE_11__* %85, %struct.TYPE_11__* %86, %struct.TYPE_13__* %87)
  br label %96

89:                                               ; preds = %37
  br label %96

90:                                               ; preds = %37
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ELF_R_TYPE(i32 %93)
  %95 = call i32 @_rtld_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 -1, i32* %4, align 4
  br label %103

96:                                               ; preds = %89, %74
  br label %97

97:                                               ; preds = %96, %71
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 1
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %9, align 8
  br label %33

100:                                              ; preds = %33
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %90, %63, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_12__* @find_symdef(i32, %struct.TYPE_11__*, %struct.TYPE_11__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @reloc_jmpslot(i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32 @_rtld_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
