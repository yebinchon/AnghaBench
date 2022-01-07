; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/amd64/extr_reloc.c_reloc_jmpslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/amd64/extr_reloc.c_reloc_jmpslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown relocation type %x in PLT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_jmpslots(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
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
  br label %108

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
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %9, align 8
  br label %33

33:                                               ; preds = %102, %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = icmp ult %struct.TYPE_12__* %34, %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ELF_R_TYPE(i32 %40)
  switch i32 %41, label %95 [
    i32 128, label %42
    i32 129, label %94
  ]

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ELF_R_SYM(i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.TYPE_11__* @find_symdef(i32 %54, %struct.TYPE_10__* %55, %struct.TYPE_10__** %13, i32 %58, i32* null, i32* %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %12, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = icmp eq %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %108

64:                                               ; preds = %42
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
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
  br label %102

74:                                               ; preds = %64
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = bitcast %struct.TYPE_12__* %91 to i32*
  %93 = call i32 @reloc_jmpslot(i32* %87, i32 %88, %struct.TYPE_10__* %89, %struct.TYPE_10__* %90, i32* %92)
  br label %101

94:                                               ; preds = %37
  br label %101

95:                                               ; preds = %37
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ELF_R_TYPE(i32 %98)
  %100 = call i32 @_rtld_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %4, align 4
  br label %108

101:                                              ; preds = %94, %74
  br label %102

102:                                              ; preds = %101, %71
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 1
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %9, align 8
  br label %33

105:                                              ; preds = %33
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %95, %63, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_11__* @find_symdef(i32, %struct.TYPE_10__*, %struct.TYPE_10__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @reloc_jmpslot(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @_rtld_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
