; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_DeletePCD.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_DeletePCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32*, i32, i64, i32, i32, i32, i64, i32 }

@E_OK = common dso_local global i64 0, align 8
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_OPERATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"available for non-independant mode ports only\00", align 1
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"available for Rx and offline parsing ports only\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"FM Port Try Lock - BUSY\00", align 1
@E_BUSY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@FM_PCD_PRS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Try LockAll - BUSY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PORT_DeletePCD(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load i64, i64* @E_OK, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %10, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @E_INVALID_STATE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %18, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i64, i64* @E_INVALID_OPERATION, align 8
  %28 = call i32 @RETURN_ERROR(i32 %26, i64 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @MAJOR, align 4
  %49 = load i64, i64* @E_INVALID_OPERATION, align 8
  %50 = call i32 @RETURN_ERROR(i32 %48, i64 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %41, %35, %29
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = call i32 @TRY_LOCK(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @TRACE, align 4
  %61 = call i32 @DBG(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @E_BUSY, align 4
  %63 = call i64 @ERROR_CODE(i32 %62)
  store i64 %63, i64* %2, align 8
  br label %172

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @DetachPCD(i32 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @RELEASE_LOCK(i32 %72)
  %74 = load i32, i32* @MAJOR, align 4
  %75 = load i64, i64* %5, align 8
  %76 = load i8*, i8** @NO_MSG, align 8
  %77 = call i32 @RETURN_ERROR(i32 %74, i64 %75, i8* %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @FmPcdDecNetEnvOwners(i32 %81, i32 %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @FM_PCD_PRS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %78
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @FALSE, align 8
  %105 = call i32 @FmPcdPrsIncludePortInStatistics(i32 %100, i32 %103, i64 %104)
  %106 = load i64, i64* @FALSE, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %97, %92, %78
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @FmPcdLockTryLockAll(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @RELEASE_LOCK(i32 %118)
  %120 = load i32, i32* @TRACE, align 4
  %121 = call i32 @DBG(i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @E_BUSY, align 4
  %123 = call i64 @ERROR_CODE(i32 %122)
  store i64 %123, i64* %2, align 8
  br label %172

124:                                              ; preds = %109
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @DeletePcd(i32 %125)
  store i64 %126, i64* %5, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @FmPcdLockUnlockAll(i32 %129)
  %131 = load i64, i64* %5, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %124
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @RELEASE_LOCK(i32 %136)
  %138 = load i32, i32* @MAJOR, align 4
  %139 = load i64, i64* %5, align 8
  %140 = load i8*, i8** @NO_MSG, align 8
  %141 = call i32 @RETURN_ERROR(i32 %138, i64 %139, i8* %140)
  br label %142

142:                                              ; preds = %133, %124
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %142
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @FM_PCD_CcRootDelete(i32* %150)
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @RELEASE_LOCK(i32 %157)
  %159 = load i32, i32* @MAJOR, align 4
  %160 = load i64, i64* %5, align 8
  %161 = load i8*, i8** @NO_MSG, align 8
  %162 = call i32 @RETURN_ERROR(i32 %159, i64 %160, i8* %161)
  br label %163

163:                                              ; preds = %154, %147
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %163, %142
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @RELEASE_LOCK(i32 %169)
  %171 = load i64, i64* %5, align 8
  store i64 %171, i64* %2, align 8
  br label %172

172:                                              ; preds = %166, %115, %59
  %173 = load i64, i64* %2, align 8
  ret i64 %173
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @TRY_LOCK(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i64 @DetachPCD(i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @FmPcdDecNetEnvOwners(i32, i32) #1

declare dso_local i32 @FmPcdPrsIncludePortInStatistics(i32, i32, i64) #1

declare dso_local i32 @FmPcdLockTryLockAll(i32) #1

declare dso_local i64 @DeletePcd(i32) #1

declare dso_local i32 @FmPcdLockUnlockAll(i32) #1

declare dso_local i64 @FM_PCD_CcRootDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
