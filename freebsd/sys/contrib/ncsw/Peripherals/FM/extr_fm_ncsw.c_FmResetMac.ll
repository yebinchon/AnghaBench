; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmResetMac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmResetMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64*, %struct.TYPE_10__*, %struct.fman_fpm_regs* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.fman_fpm_regs = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_RESET_MAC = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IPC reply length mismatch\00", align 1
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Either IPC or 'baseAddress' is required!\00", align 1
@e_FM_MAC_10G = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@E_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Illegal MAC ID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmResetMac(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fman_fpm_regs*, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  %19 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %18, align 8
  store %struct.fman_fpm_regs* %19, %struct.fman_fpm_regs** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NCSW_MASTER_ID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %30
  %38 = call i32 @memset(%struct.TYPE_11__* %12, i32 0, i32 16)
  %39 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 16)
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @FM_RESET_MAC, align 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i32 %48, %struct.TYPE_12__* %11, i32 8)
  store i32 4, i32* %14, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %struct.TYPE_11__* %12 to i32*
  %56 = bitcast %struct.TYPE_11__* %13 to i32*
  %57 = call i32 @XX_IpcSendMessage(i64 %54, i32* %55, i32 12, i32* %56, i32* %14, i32* null, i32* null)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @E_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %37
  %62 = load i32, i32* @MINOR, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** @NO_MSG, align 8
  %65 = call i32 @RETURN_ERROR(i32 %62, i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %37
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @MAJOR, align 4
  %72 = load i32, i32* @E_INVALID_VALUE, align 4
  %73 = call i32 @RETURN_ERROR(i32 %71, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %116

78:                                               ; preds = %30, %25, %3
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @MINOR, align 4
  %85 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %86 = call i32 @RETURN_ERROR(i32 %84, i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @e_FM_MAC_10G, align 8
  %93 = icmp eq i64 %91, %92
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @fman_reset_mac(%struct.fman_fpm_regs* %89, i32 %90, i32 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i32, i32* @E_TIMEOUT, align 4
  %105 = call i32 @ERROR_CODE(i32 %104)
  store i32 %105, i32* %4, align 4
  br label %116

106:                                              ; preds = %88
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @MAJOR, align 4
  %111 = load i32, i32* @E_INVALID_VALUE, align 4
  %112 = call i32 @RETURN_ERROR(i32 %110, i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* @E_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %103, %74
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @fman_reset_mac(%struct.fman_fpm_regs*, i32, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
