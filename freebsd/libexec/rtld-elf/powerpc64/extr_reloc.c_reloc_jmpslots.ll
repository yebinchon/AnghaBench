; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc64/extr_reloc.c_reloc_jmpslots.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc64/extr_reloc.c_reloc_jmpslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }

@R_PPC_JMP_SLOT = common dso_local global i64 0, align 8
@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reloc_jmpslots: sym not found\00", align 1
@sym_zero = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reloc_jmpslots(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = bitcast %struct.TYPE_13__* %16 to i8*
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = bitcast i8* %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  br label %27

27:                                               ; preds = %84, %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = icmp ult %struct.TYPE_13__* %28, %29
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ELF_R_TYPE(i32 %34)
  %36 = load i64, i64* @R_PPC_JMP_SLOT, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = inttoptr i64 %46 to i64*
  store i64* %47, i64** %12, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ELF_R_SYM(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %7, align 8
  %57 = call %struct.TYPE_12__* @find_symdef(i32 %51, %struct.TYPE_11__* %52, %struct.TYPE_11__** %8, i32 %55, i32* null, i32* %56)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %11, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %59 = icmp eq %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %31
  %61 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %90

62:                                               ; preds = %31
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  store i64 %69, i64* %13, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %71 = icmp eq %struct.TYPE_12__* %70, @sym_zero
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i64*, i64** %12, align 8
  %74 = call i32 @bzero(i64* %73, i32 4)
  br label %83

75:                                               ; preds = %62
  %76 = load i64*, i64** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = bitcast %struct.TYPE_13__* %80 to i32*
  %82 = call i32 @reloc_jmpslot(i64* %76, i64 %77, %struct.TYPE_11__* %78, %struct.TYPE_11__* %79, i32* %81)
  br label %83

83:                                               ; preds = %75, %72
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 1
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %10, align 8
  br label %27

87:                                               ; preds = %27
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %60
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_12__* @find_symdef(i32, %struct.TYPE_11__*, %struct.TYPE_11__**, i32, i32*, i32*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i32 @reloc_jmpslot(i64*, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
