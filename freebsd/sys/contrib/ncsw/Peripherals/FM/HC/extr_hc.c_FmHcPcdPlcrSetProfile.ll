; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdPlcrSetProfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdPlcrSetProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_PLCR_PRFL = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdPlcrSetProfile(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i64, i64* @E_OK, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_7__* @GetBuf(i32* %16, i8** %12)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @MINOR, align 4
  %22 = load i64, i64* @E_NO_MEMORY, align 8
  %23 = call i32 @RETURN_ERROR(i32 %21, i64 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @FmPcdPlcrProfileGetAbsoluteId(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = call i32 @memset(%struct.TYPE_7__* %27, i32 0, i32 32)
  %29 = load i32, i32* @HC_HCOR_GBL, align 4
  %30 = load i32, i32* @HC_HCOR_OPCODE_PLCR_PRFL, align 4
  %31 = or i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @FmPcdPlcrBuildWritePlcrActionRegs(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 32768, i32* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 4)
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = call i32 @BUILD_FD(i32 32)
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @EnQFrm(i32* %51, i32* %11, i8* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @PutBuf(i32* %54, %struct.TYPE_7__* %55, i8* %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @E_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %24
  %62 = load i32, i32* @MINOR, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i8*, i8** @NO_MSG, align 8
  %65 = call i32 @RETURN_ERROR(i32 %62, i64 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %24
  %67 = load i64, i64* @E_OK, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_7__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @FmPcdPlcrProfileGetAbsoluteId(i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @FmPcdPlcrBuildWritePlcrActionRegs(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i64 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
