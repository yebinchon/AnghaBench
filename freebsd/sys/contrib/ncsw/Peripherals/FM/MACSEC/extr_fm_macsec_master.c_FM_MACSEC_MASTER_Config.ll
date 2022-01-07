; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_FM_MACSEC_MASTER_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_FM_MACSEC_MASTER_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FM MACSEC driver structure\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"FM MACSEC driver parameters\00", align 1
@DEFAULT_userExceptions = common dso_local global i32 0, align 4
@DEFAULT_exceptions = common dso_local global i32 0, align 4
@DEFAULT_events = common dso_local global i32 0, align 4
@DEFAULT_unknownSciFrameTreatment = common dso_local global i32 0, align 4
@DEFAULT_invalidTagsFrameTreatment = common dso_local global i32 0, align 4
@DEFAULT_encryptWithNoChangedTextFrameTreatment = common dso_local global i32 0, align 4
@DEFAULT_untagFrameTreatment = common dso_local global i32 0, align 4
@DEFAULT_keysUnreadable = common dso_local global i32 0, align 4
@DEFAULT_sc0ReservedForPTP = common dso_local global i32 0, align 4
@DEFAULT_normalMode = common dso_local global i32 0, align 4
@DEFAULT_pnExhThr = common dso_local global i32 0, align 4
@DEFAULT_sectagOverhead = common dso_local global i32 0, align 4
@DEFAULT_mflSubtract = common dso_local global i32 0, align 4
@MODULE_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"FM-%d-MAC-%d-MACSEC-Master\00", align 1
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Sprint failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @FM_MACSEC_MASTER_Config(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = call i64 @XX_Malloc(i32 128)
  %7 = inttoptr i64 %6 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @MAJOR, align 4
  %12 = load i32, i32* @E_NO_MEMORY, align 4
  %13 = call i32 @REPORT_ERROR(i32 %11, i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %172

14:                                               ; preds = %1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @memset(%struct.TYPE_12__* %15, i32 0, i32 128)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 22
  %19 = call i32 @InitFmMacsecControllerDriver(i32* %18)
  %20 = call i64 @XX_Malloc(i32 128)
  %21 = inttoptr i64 %20 to %struct.TYPE_12__*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %14
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i32 @XX_Free(%struct.TYPE_12__* %29)
  %31 = load i32, i32* @MAJOR, align 4
  %32 = load i32, i32* @E_NO_MEMORY, align 4
  %33 = call i32 @REPORT_ERROR(i32 %31, i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %172

34:                                               ; preds = %14
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @memset(%struct.TYPE_12__* %37, i32 0, i32 128)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @UINT_TO_PTR(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 21
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 20
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 19
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @DEFAULT_userExceptions, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 18
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @DEFAULT_exceptions, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 17
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @DEFAULT_events, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 16
  store i32 %76, i32* %78, align 8
  %79 = call i8* (...) @XX_InitSpinlock()
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 15
  store i8* %79, i8** %81, align 8
  %82 = call i8* (...) @XX_InitSpinlock()
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 14
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @DEFAULT_unknownSciFrameTreatment, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 13
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @DEFAULT_invalidTagsFrameTreatment, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 12
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* @DEFAULT_encryptWithNoChangedTextFrameTreatment, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 11
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @DEFAULT_untagFrameTreatment, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 10
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* @DEFAULT_keysUnreadable, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 9
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @DEFAULT_sc0ReservedForPTP, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 8
  store i32 %110, i32* %114, align 8
  %115 = load i32, i32* @DEFAULT_normalMode, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load i32, i32* @DEFAULT_pnExhThr, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @DEFAULT_sectagOverhead, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 6
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @DEFAULT_mflSubtract, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 5
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* @MODULE_NAME_SIZE, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 1, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memset(%struct.TYPE_12__* %140, i32 0, i32 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @FM_MAC_GetId(i32 %148, i32* %5)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @FmGetId(i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @Sprint(%struct.TYPE_12__* %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 24
  br i1 %159, label %160, label %170

160:                                              ; preds = %34
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = call i32 @XX_Free(%struct.TYPE_12__* %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = call i32 @XX_Free(%struct.TYPE_12__* %165)
  %167 = load i32, i32* @MAJOR, align 4
  %168 = load i32, i32* @E_INVALID_STATE, align 4
  %169 = call i32 @REPORT_ERROR(i32 %167, i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %172

170:                                              ; preds = %34
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %171, %struct.TYPE_12__** %2, align 8
  br label %172

172:                                              ; preds = %170, %160, %28, %10
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %173
}

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @InitFmMacsecControllerDriver(i32*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_12__*) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

declare dso_local i8* @XX_InitSpinlock(...) #1

declare dso_local i32 @FM_MAC_GetId(i32, i32*) #1

declare dso_local i32 @Sprint(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @FmGetId(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
