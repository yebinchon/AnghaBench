; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_reloc_jmpslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_reloc_jmpslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reloc_jmpslots: sym not found\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown relocation type %u in PLT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_jmpslots(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = bitcast %struct.TYPE_10__* %15 to i8*
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  br label %26

26:                                               ; preds = %75, %3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = icmp ult %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ELF_R_TYPE(i32 %33)
  switch i32 %34, label %68 [
    i32 128, label %35
  ]

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ELF_R_SYM(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %7, align 8
  %45 = call %struct.TYPE_9__* @find_symdef(i32 %39, %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, i32 %43, i32* null, i32* %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = icmp eq %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %79

50:                                               ; preds = %35
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %12, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %12, align 8
  store i32 %66, i32* %67, align 4
  br label %74

68:                                               ; preds = %30
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ELF_R_TYPE(i32 %71)
  %73 = call i32 @_rtld_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %4, align 4
  br label %79

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 1
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %10, align 8
  br label %26

78:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %68, %48
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_9__* @find_symdef(i32, %struct.TYPE_8__*, %struct.TYPE_8__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @_rtld_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
