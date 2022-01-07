; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdCcIpFragScratchPollCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdCcIpFragScratchPollCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"HC Frame object\00", align 1
@HC_HCOR_GBL = common dso_local global i32 0, align 4
@HC_HCOR_OPCODE_CC_IP_FRAG_INITIALIZATION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HC_HCOR_ACTION_REG_IP_FRAG_SCRATCH_POOL_CMD_SHIFT = common dso_local global i32 0, align 4
@HC_HCOR_ACTION_REG_IP_FRAG_SCRATCH_POOL_BPID = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmHcPcdCcIpFragScratchPollCmd(i64 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @E_INVALID_HANDLE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_VALUE(i64 %14, i32 %15, i32 0)
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_7__* @GetBuf(i32* %17, i8** %11)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @MINOR, align 4
  %23 = load i32, i32* @E_NO_MEMORY, align 4
  %24 = call i32 @RETURN_ERROR(i32 %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = call i32 @memset(%struct.TYPE_7__* %26, i32 0, i32 24)
  %28 = load i32, i32* @HC_HCOR_GBL, align 4
  %29 = load i32, i32* @HC_HCOR_OPCODE_CC_IP_FRAG_INITIALIZATION, align 4
  %30 = or i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 1
  %40 = load i32, i32* @HC_HCOR_ACTION_REG_IP_FRAG_SCRATCH_POOL_CMD_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HC_HCOR_ACTION_REG_IP_FRAG_SCRATCH_POOL_BPID, align 4
  %51 = shl i32 %49, %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %25
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %25
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = call i32 @BUILD_FD(i32 24)
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @EnQFrm(i32* %70, i32* %9, i8* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @E_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @PutBuf(i32* %76, %struct.TYPE_7__* %77, i8* %78)
  %80 = load i32, i32* @MINOR, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** @NO_MSG, align 8
  %83 = call i32 @RETURN_ERROR(i32 %80, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %75, %65
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @PutBuf(i32* %90, %struct.TYPE_7__* %91, i8* %92)
  %94 = load i32, i32* @E_OK, align 4
  ret i32 %94
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(i64, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GetBuf(i32*, i8**) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @BUILD_FD(i32) #1

declare dso_local i32 @EnQFrm(i32*, i32*, i8*) #1

declare dso_local i32 @PutBuf(i32*, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
