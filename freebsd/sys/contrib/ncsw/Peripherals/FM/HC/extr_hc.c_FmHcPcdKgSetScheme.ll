; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgSetScheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgSetScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_kg_scheme_regs = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__, i32, i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_KG_SCM = common dso_local global i32 0, align 4
@HC_HCOR_KG_SCHEME_REGS_MASK = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdKgSetScheme(i64 %0, i64 %1, %struct.fman_kg_scheme_regs* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fman_kg_scheme_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.fman_kg_scheme_regs* %2, %struct.fman_kg_scheme_regs** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i64, i64* @E_OK, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_8__* @GetBuf(i32* %18, i8** %14)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @MINOR, align 4
  %24 = load i64, i64* @E_NO_MEMORY, align 8
  %25 = call i32 @RETURN_ERROR(i32 %23, i64 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @FmPcdKgGetSchemeId(i64 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = call i32 @memset(%struct.TYPE_8__* %29, i32 0, i32 40)
  %31 = load i32, i32* @HC_HCOR_GBL, align 4
  %32 = load i32, i32* @HC_HCOR_OPCODE_KG_SCM, align 4
  %33 = or i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FmPcdKgBuildWriteSchemeActionReg(i32 %38, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @HC_HCOR_KG_SCHEME_REGS_MASK, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %7, align 8
  %50 = call i32 @memcpy(%struct.TYPE_9__* %48, %struct.fman_kg_scheme_regs* %49, i32 16)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %26
  %54 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %7, align 8
  %55 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 4
  %61 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %7, align 8
  %62 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %7, align 8
  %69 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  %75 = load %struct.fman_kg_scheme_regs*, %struct.fman_kg_scheme_regs** %7, align 8
  %76 = getelementptr inbounds %struct.fman_kg_scheme_regs, %struct.fman_kg_scheme_regs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  br label %82

82:                                               ; preds = %53, %26
  %83 = load i8*, i8** %14, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = call i32 @BUILD_FD(i32 40)
  %87 = load i32*, i32** %9, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i64 @EnQFrm(i32* %87, i32* %12, i8* %88)
  store i64 %89, i64* %10, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @PutBuf(i32* %90, %struct.TYPE_8__* %91, i8* %92)
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @E_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* @MINOR, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i8*, i8** @NO_MSG, align 8
  %101 = call i32 @RETURN_ERROR(i32 %98, i64 %99, i8* %100)
  br label %102

102:                                              ; preds = %97, %82
  %103 = load i64, i64* @E_OK, align 8
  ret i64 %103
}

declare dso_local %struct.TYPE_8__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @FmPcdKgGetSchemeId(i64) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWriteSchemeActionReg(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.fman_kg_scheme_regs*, i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
