; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_softc = type { i64*, i32 }
%struct.iic_msg = type { i64, i64*, i64, i32 }

@TWL_MAX_IIC_DATA_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TWL_INVALID_CHIP_ID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"iicbus write failed (adr:0x%02x, reg:0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl_write(i32 %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.twl_softc*, align 8
  %13 = alloca %struct.iic_msg, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @TWL_MAX_IIC_DATA_SIZE, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @TWL_MAX_IIC_DATA_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %76

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %30, i64* %31, align 16
  %32 = getelementptr inbounds i64, i64* %23, i64 1
  %33 = load i64*, i64** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @memcpy(i64* %32, i64* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.twl_softc* @device_get_softc(i32 %36)
  store %struct.twl_softc* %37, %struct.twl_softc** %12, align 8
  %38 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %39 = call i32 @TWL_LOCK(%struct.twl_softc* %38)
  %40 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %41 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %14, align 8
  %46 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %47 = call i32 @TWL_UNLOCK(%struct.twl_softc* %46)
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @TWL_INVALID_CHIP_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %76

53:                                               ; preds = %29
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @IIC_M_WR, align 4
  %57 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  store i64* %23, i64** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @iicbus_transfer(i32 %63, %struct.iic_msg* %13, i32 1)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %69 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %72)
  %74 = load i32, i32* @EIO, align 4
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %76

75:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %76

76:                                               ; preds = %75, %67, %51, %27
  %77 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local %struct.twl_softc* @device_get_softc(i32) #2

declare dso_local i32 @TWL_LOCK(%struct.twl_softc*) #2

declare dso_local i32 @TWL_UNLOCK(%struct.twl_softc*) #2

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
