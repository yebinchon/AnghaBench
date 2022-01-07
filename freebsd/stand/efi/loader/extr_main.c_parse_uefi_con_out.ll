; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_parse_uefi_con_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_parse_uefi_con_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ConOut\00", align 1
@EFI_SUCCESS = common dso_local global i32 0, align 4
@RB_SERIAL = common dso_local global i32 0, align 4
@ACPI_DEVICE_PATH = common dso_local global i64 0, align 8
@ACPI_DP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"efi_8250_uid\00", align 1
@MESSAGING_DEVICE_PATH = common dso_local global i64 0, align 8
@MSG_UART_DP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"efi_com_speed\00", align 1
@ACPI_ADR_DP = common dso_local global i64 0, align 8
@HARDWARE_DEVICE_PATH = common dso_local global i64 0, align 8
@HW_PCI_DP = common dso_local global i64 0, align 8
@RB_MULTIPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_uefi_con_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  store i64 4096, i64* %6, align 8
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %14 = call i32 @efi_global_getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13, i64* %6)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @EFI_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @RB_SERIAL, align 4
  store i32 %19, i32* %1, align 4
  br label %142

20:                                               ; preds = %0
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %8, align 8
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %9, align 8
  br label %26

26:                                               ; preds = %103, %20
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %106

31:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @DevicePathType(i32* %32)
  %34 = load i64, i64* @ACPI_DEVICE_PATH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @DevicePathSubType(i32* %37)
  %39 = load i64, i64* @ACPI_DP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = bitcast i8* %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EISA_ID_TO_NUM(i32 %47)
  %49 = icmp eq i32 %48, 1281
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @setenv_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %41
  br label %103

58:                                               ; preds = %36, %31
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @DevicePathType(i32* %59)
  %61 = load i64, i64* @MESSAGING_DEVICE_PATH, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @DevicePathSubType(i32* %64)
  %66 = load i64, i64* @MSG_UART_DP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = bitcast i8* %70 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %11, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @setenv_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %102

76:                                               ; preds = %63, %58
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @DevicePathType(i32* %77)
  %79 = load i64, i64* @ACPI_DEVICE_PATH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @DevicePathSubType(i32* %82)
  %84 = load i64, i64* @ACPI_ADR_DP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  store i32 %88, i32* %3, align 4
  br label %101

89:                                               ; preds = %81, %76
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @DevicePathType(i32* %90)
  %92 = load i64, i64* @HARDWARE_DEVICE_PATH, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @DevicePathSubType(i32* %95)
  %97 = load i64, i64* @HW_PCI_DP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %94, %89
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %68
  br label %103

103:                                              ; preds = %102, %57
  %104 = load i32*, i32** %9, align 8
  %105 = call i32* @NextDevicePathNode(i32* %104)
  store i32* %105, i32** %9, align 8
  br label %26

106:                                              ; preds = %26
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %109, %106
  store i32 0, i32* %1, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32, i32* @RB_MULTIPLE, align 4
  %123 = load i32, i32* %1, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @RB_SERIAL, align 4
  %130 = load i32, i32* %1, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %1, align 4
  br label %132

132:                                              ; preds = %128, %121
  br label %141

133:                                              ; preds = %118, %115
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @RB_SERIAL, align 4
  %138 = load i32, i32* %1, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %1, align 4
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141, %18
  %143 = load i32, i32* %1, align 4
  ret i32 %143
}

declare dso_local i32 @efi_global_getenv(i8*, i8*, i64*) #1

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i32 @EISA_ID_TO_NUM(i32) #1

declare dso_local i32 @setenv_int(i8*, i32) #1

declare dso_local i32* @NextDevicePathNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
