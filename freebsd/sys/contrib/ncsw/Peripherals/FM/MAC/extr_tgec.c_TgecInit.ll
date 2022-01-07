; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgec_cfg = type { i32, i64, %struct.tgec_cfg*, i32, %struct.TYPE_3__, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tgec_cfg*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@CheckInitParameters = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"This TGEC version does not support the required i/f mode\00", align 1
@e_FM_MAC_10G = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"allocation hash table is FAILED\00", align 1
@e_FM_MOD_10G_MAC = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@TgecErrException = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8
@TgecException = common dso_local global i32 0, align 4
@TGEC_IMASK_LOC_FAULT = common dso_local global i32 0, align 4
@TGEC_IMASK_REM_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @TgecInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TgecInit(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tgec_cfg*, align 8
  %4 = alloca %struct.tgec_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.tgec_cfg*
  store %struct.tgec_cfg* %8, %struct.tgec_cfg** %3, align 8
  %9 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.tgec_cfg* %9, i32 %10)
  %12 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %12, i32 0, i32 2
  %14 = load %struct.tgec_cfg*, %struct.tgec_cfg** %13, align 8
  %15 = load i32, i32* @E_INVALID_STATE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.tgec_cfg* %14, i32 %15)
  %17 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %18 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.tgec_cfg*, %struct.tgec_cfg** %19, align 8
  %21 = load i32, i32* @E_INVALID_HANDLE, align 4
  %22 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.tgec_cfg* %20, i32 %21)
  %23 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %24 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.tgec_cfg*, %struct.tgec_cfg** %25, align 8
  %27 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @FM_GetRevision(%struct.tgec_cfg* %26, %struct.TYPE_4__* %29)
  %31 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %32 = load i32, i32* @CheckInitParameters, align 4
  %33 = call i32 @CHECK_INIT_PARAMETERS(%struct.tgec_cfg* %31, i32 %32)
  %34 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %35 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %34, i32 0, i32 2
  %36 = load %struct.tgec_cfg*, %struct.tgec_cfg** %35, align 8
  store %struct.tgec_cfg* %36, %struct.tgec_cfg** %4, align 8
  %37 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %38 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @MAKE_ENET_ADDR_FROM_UINT64(i32 %39, i64 %40)
  %42 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %43 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @fman_tgec_set_mac_address(i32 %44, i32* %46)
  %48 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tgec_cfg*, %struct.tgec_cfg** %4, align 8
  %52 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @fman_tgec_init(i32 %50, %struct.tgec_cfg* %51, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %1
  %59 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %60 = call i32 @FreeInitResources(%struct.tgec_cfg* %59)
  %61 = load i32, i32* @MAJOR, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @RETURN_ERROR(i32 %61, i64 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %1
  %65 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %66 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load %struct.tgec_cfg*, %struct.tgec_cfg** %67, align 8
  %69 = load i32, i32* @e_FM_MAC_10G, align 4
  %70 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %71 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tgec_cfg*, %struct.tgec_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @FmSetMacMaxFrame(%struct.tgec_cfg* %68, i32 %69, i32 %73, i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @E_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %64
  %82 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %83 = call i32 @FreeInitResources(%struct.tgec_cfg* %82)
  %84 = load i32, i32* @MINOR, align 4
  %85 = load i64, i64* %6, align 8
  %86 = load i8*, i8** @NO_MSG, align 8
  %87 = call i32 @RETURN_ERROR(i32 %84, i64 %85, i8* %86)
  br label %88

88:                                               ; preds = %81, %64
  %89 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %90 = call i8* @AllocHashTable(i32 %89)
  %91 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %92 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %94 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %93, i32 0, i32 6
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %99 = call i32 @FreeInitResources(%struct.tgec_cfg* %98)
  %100 = load i32, i32* @MAJOR, align 4
  %101 = load i64, i64* @E_NO_MEMORY, align 8
  %102 = call i32 @RETURN_ERROR(i32 %100, i64 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %88
  %104 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %105 = call i8* @AllocHashTable(i32 %104)
  %106 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %107 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %109 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %103
  %113 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %114 = call i32 @FreeInitResources(%struct.tgec_cfg* %113)
  %115 = load i32, i32* @MAJOR, align 4
  %116 = load i64, i64* @E_NO_MEMORY, align 8
  %117 = call i32 @RETURN_ERROR(i32 %115, i64 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %112, %103
  %119 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %120 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load %struct.tgec_cfg*, %struct.tgec_cfg** %121, align 8
  %123 = load i32, i32* @e_FM_MOD_10G_MAC, align 4
  %124 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %125 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @e_FM_INTR_TYPE_ERR, align 4
  %128 = load i32, i32* @TgecErrException, align 4
  %129 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %130 = call i32 @FmRegisterIntr(%struct.tgec_cfg* %122, i32 %123, i32 %126, i32 %127, i32 %128, %struct.tgec_cfg* %129)
  %131 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %132 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NO_IRQ, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %118
  %137 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %138 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @TgecException, align 4
  %141 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %142 = call i32 @XX_SetIntr(i64 %139, i32 %140, %struct.tgec_cfg* %141)
  %143 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %144 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @XX_EnableIntr(i64 %145)
  br label %147

147:                                              ; preds = %136, %118
  %148 = load %struct.tgec_cfg*, %struct.tgec_cfg** %4, align 8
  %149 = call i32 @XX_Free(%struct.tgec_cfg* %148)
  %150 = load %struct.tgec_cfg*, %struct.tgec_cfg** %3, align 8
  %151 = getelementptr inbounds %struct.tgec_cfg, %struct.tgec_cfg* %150, i32 0, i32 2
  store %struct.tgec_cfg* null, %struct.tgec_cfg** %151, align 8
  %152 = load i64, i64* @E_OK, align 8
  ret i64 %152
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.tgec_cfg*, i32) #1

declare dso_local i32 @FM_GetRevision(%struct.tgec_cfg*, %struct.TYPE_4__*) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.tgec_cfg*, i32) #1

declare dso_local i32 @MAKE_ENET_ADDR_FROM_UINT64(i32, i64) #1

declare dso_local i32 @fman_tgec_set_mac_address(i32, i32*) #1

declare dso_local i64 @fman_tgec_init(i32, %struct.tgec_cfg*, i32) #1

declare dso_local i32 @FreeInitResources(%struct.tgec_cfg*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @FmSetMacMaxFrame(%struct.tgec_cfg*, i32, i32, i32) #1

declare dso_local i8* @AllocHashTable(i32) #1

declare dso_local i32 @FmRegisterIntr(%struct.tgec_cfg*, i32, i32, i32, i32, %struct.tgec_cfg*) #1

declare dso_local i32 @XX_SetIntr(i64, i32, %struct.tgec_cfg*) #1

declare dso_local i32 @XX_EnableIntr(i64) #1

declare dso_local i32 @XX_Free(%struct.tgec_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
