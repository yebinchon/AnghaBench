; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec_mii_acc.c_TGEC_MII_WritePhyReg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec_mii_acc.c_TGEC_MII_WritePhyReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MIIMCOM_DIV_MASK = common dso_local global i32 0, align 4
@MIIMCOM_DIV_SHIFT = common dso_local global i32 0, align 4
@MIIMIND_BUSY = common dso_local global i32 0, align 4
@MIIDATA_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TGEC_MII_WritePhyReg(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = load i32, i32* @E_INVALID_HANDLE, align 4
  %16 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_6__* %14, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* @E_INVALID_HANDLE, align 4
  %21 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_6__* %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GET_UINT32(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @MIIMCOM_DIV_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 10
  %38 = sdiv i32 %37, 2
  %39 = sdiv i32 %38, 25
  %40 = load i32, i32* @MIIMCOM_DIV_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @WRITE_UINT32(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %57, %4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GET_UINT32(i32 %52)
  %54 = load i32, i32* @MIIMIND_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @XX_UDelay(i32 1)
  br label %49

59:                                               ; preds = %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WRITE_UINT32(i32 %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @WRITE_UINT32(i32 %67, i32 %68)
  %70 = call i32 (...) @CORE_MemoryBarrier()
  br label %71

71:                                               ; preds = %79, %59
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @GET_UINT32(i32 %74)
  %76 = load i32, i32* @MIIMIND_BUSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @XX_UDelay(i32 1)
  br label %71

81:                                               ; preds = %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @WRITE_UINT32(i32 %84, i32 %85)
  %87 = call i32 (...) @CORE_MemoryBarrier()
  br label %88

88:                                               ; preds = %96, %81
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @GET_UINT32(i32 %91)
  %93 = load i32, i32* @MIIDATA_BUSY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call i32 @XX_UDelay(i32 1)
  br label %88

98:                                               ; preds = %88
  %99 = load i32, i32* @E_OK, align 4
  ret i32 %99
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i32 @XX_UDelay(i32) #1

declare dso_local i32 @CORE_MemoryBarrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
