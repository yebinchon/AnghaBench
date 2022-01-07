; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcKgWriteCpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcKgWriteCpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i32, i32, i8* }
%struct.TYPE_6__ = type { i8* }

@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_KG_SCM = common dso_local global i32 0, align 4
@HC_HCOR_KG_SCHEME_REGS_MASK = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcKgWriteCpp(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* @E_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ASSERT_COND(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_7__* @GetBuf(i32* %17, i8** %11)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @MINOR, align 4
  %23 = load i64, i64* @E_NO_MEMORY, align 8
  %24 = call i32 @RETURN_ERROR(i32 %22, i64 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = call i32 @memset(%struct.TYPE_7__* %26, i32 0, i32 32)
  %28 = load i32, i32* @HC_HCOR_GBL, align 4
  %29 = load i32, i32* @HC_HCOR_OPCODE_KG_SCM, align 4
  %30 = or i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FmPcdKgBuildWritePortClsPlanBindActionReg(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @HC_HCOR_KG_SCHEME_REGS_MASK, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = call i32 @BUILD_FD(i32 32)
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @EnQFrm(i32* %50, i32* %9, i8* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @PutBuf(i32* %53, %struct.TYPE_7__* %54, i8* %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @E_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %25
  %61 = load i32, i32* @MINOR, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i8*, i8** @NO_MSG, align 8
  %64 = call i32 @RETURN_ERROR(i32 %61, i64 %62, i8* %63)
  br label %65

65:                                               ; preds = %60, %25
  %66 = load i64, i64* @E_OK, align 8
  ret i64 %66
}

declare dso_local i32 @ASSERT_COND(i32*) #1

declare dso_local %struct.TYPE_7__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWritePortClsPlanBindActionReg(i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
