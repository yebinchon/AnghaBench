; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitMappingInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmapoutput.c_MpEmitMappingInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_MapfileFlag = common dso_local global i32 0, align 4
@AslGbl_GpioList = common dso_local global i32* null, align 8
@ASL_FILE_MAP_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0ANo GPIO devices found\0A\00", align 1
@AslGbl_SerialList = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"\0ANo Serial devices found (I2C/SPI/UART)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\0AResource Descriptor Connectivity Map\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MpEmitMappingInfo() #0 {
  %1 = load i32, i32* @AslGbl_MapfileFlag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %31

4:                                                ; preds = %0
  %5 = load i32*, i32** @AslGbl_GpioList, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %9 = call i32 @FlPrintFile(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i32*, i32** @AslGbl_SerialList, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %15 = call i32 @FlPrintFile(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** @AslGbl_GpioList, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** @AslGbl_SerialList, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %31

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %25 = call i32 @FlPrintFile(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ASL_FILE_MAP_OUTPUT, align 4
  %27 = call i32 @FlPrintFile(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 (...) @MpEmitGpioInfo()
  %29 = call i32 (...) @MpEmitSerialInfo()
  %30 = call i32 (...) @MpEmitDeviceTree()
  store i32* null, i32** @AslGbl_SerialList, align 8
  store i32* null, i32** @AslGbl_GpioList, align 8
  br label %31

31:                                               ; preds = %23, %22, %3
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*) #1

declare dso_local i32 @MpEmitGpioInfo(...) #1

declare dso_local i32 @MpEmitSerialInfo(...) #1

declare dso_local i32 @MpEmitDeviceTree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
