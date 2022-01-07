; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_has_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_has_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32, i32*, i32, i32*, i32*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@BS = common dso_local global %struct.TYPE_6__* null, align 8
@ByProtocol = common dso_local global i32 0, align 4
@inputid = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@devid = common dso_local global i32 0, align 4
@ACPI_DEVICE_PATH = common dso_local global i64 0, align 8
@ACPI_DP = common dso_local global i64 0, align 8
@ACPI_EXTENDED_DP = common dso_local global i64 0, align 8
@PNP_EISA_ID_CONST = common dso_local global i32 0, align 4
@MESSAGING_DEVICE_PATH = common dso_local global i64 0, align 8
@MSG_USB_CLASS_DP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_keyboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64 (i32, i32*, i32, i32*, i32*)*, i64 (i32, i32*, i32, i32*, i32*)** %12, align 8
  %14 = load i32, i32* @ByProtocol, align 4
  %15 = call i64 %13(i32 %14, i32* @inputid, i32 0, i32* %7, i32* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %0
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64 (i32, i32*, i32, i32*, i32*)*, i64 (i32, i32*, i32, i32*, i32*)** %24, align 8
  %26 = load i32, i32* @ByProtocol, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 %25(i32 %26, i32* @inputid, i32 0, i32* %7, i32* %27)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @EFI_ERROR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @free(i32* %33)
  br label %35

35:                                               ; preds = %32, %19
  br label %36

36:                                               ; preds = %35, %0
  %37 = load i64, i64* %2, align 8
  %38 = call i64 @EFI_ERROR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %1, align 4
  br label %145

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %6, align 8
  br label %49

49:                                               ; preds = %137, %42
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %140

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = bitcast i32** %3 to i8**
  %57 = call i64 @OpenProtocolByHandle(i32 %55, i32* @devid, i8** %56)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @EFI_ERROR(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %137

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %133, %62
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @IsDevicePathEnd(i32* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %136

68:                                               ; preds = %63
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @DevicePathType(i32* %69)
  %71 = load i64, i64* @ACPI_DEVICE_PATH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @DevicePathSubType(i32* %74)
  %76 = load i64, i64* @ACPI_DP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @DevicePathSubType(i32* %79)
  %81 = load i64, i64* @ACPI_EXTENDED_DP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %78, %73
  %84 = load i32*, i32** %3, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = bitcast i8* %85 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %9, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @EISA_ID_TO_NUM(i32 %89)
  %91 = and i32 %90, 65280
  %92 = icmp eq i32 %91, 768
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 65535
  %98 = load i32, i32* @PNP_EISA_ID_CONST, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %8, align 4
  br label %141

101:                                              ; preds = %93, %83
  br label %133

102:                                              ; preds = %78, %68
  %103 = load i32*, i32** %3, align 8
  %104 = call i64 @DevicePathType(i32* %103)
  %105 = load i64, i64* @MESSAGING_DEVICE_PATH, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %102
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @DevicePathSubType(i32* %108)
  %110 = load i64, i64* @MSG_USB_CLASS_DP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load i32*, i32** %3, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = bitcast i8* %114 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %10, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  br label %141

131:                                              ; preds = %125, %120, %112
  br label %132

132:                                              ; preds = %131, %107, %102
  br label %133

133:                                              ; preds = %132, %101
  %134 = load i32*, i32** %3, align 8
  %135 = call i32* @NextDevicePathNode(i32* %134)
  store i32* %135, i32** %3, align 8
  br label %63

136:                                              ; preds = %63
  br label %137

137:                                              ; preds = %136, %61
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %6, align 8
  br label %49

140:                                              ; preds = %49
  br label %141

141:                                              ; preds = %140, %130, %100
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @free(i32* %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %1, align 4
  br label %145

145:                                              ; preds = %141, %40
  %146 = load i32, i32* %1, align 4
  ret i32 %146
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @EFI_ERROR(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

declare dso_local i32 @IsDevicePathEnd(i32*) #1

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i32 @EISA_ID_TO_NUM(i32) #1

declare dso_local i32* @NextDevicePathNode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
