; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslresource.c_RsDoOneResourceDescriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslresource.c_RsDoOneResourceDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_89__ = type { i64, i32 }
%struct.TYPE_90__ = type { %struct.TYPE_92__*, i32 }
%struct.TYPE_92__ = type { %struct.TYPE_88__ }
%struct.TYPE_88__ = type { i32, i8*, i32, i32, %struct.TYPE_87__, i32 }
%struct.TYPE_87__ = type { i32 }
%struct.TYPE_91__ = type { i32 }

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_MISSING_STARTDEPENDENT = common dso_local global i32 0, align 4
@ASL_MSG_DEPENDENT_NESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unknown resource descriptor type [%s]\0A\00", align 1
@OP_IS_RESOURCE_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_89__* @RsDoOneResourceDescriptor(%struct.TYPE_90__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_90__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_89__*, align 8
  store %struct.TYPE_90__* %0, %struct.TYPE_90__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_89__* null, %struct.TYPE_89__** %5, align 8
  %6 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_92__*, %struct.TYPE_92__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %178 [
    i32 169, label %12
    i32 160, label %15
    i32 168, label %18
    i32 167, label %21
    i32 166, label %24
    i32 165, label %27
    i32 164, label %50
    i32 163, label %53
    i32 162, label %56
    i32 161, label %59
    i32 159, label %62
    i32 154, label %65
    i32 153, label %68
    i32 152, label %71
    i32 151, label %74
    i32 150, label %77
    i32 149, label %80
    i32 148, label %83
    i32 142, label %86
    i32 141, label %89
    i32 140, label %92
    i32 139, label %95
    i32 136, label %98
    i32 135, label %115
    i32 132, label %132
    i32 131, label %135
    i32 130, label %138
    i32 129, label %141
    i32 128, label %144
    i32 158, label %147
    i32 157, label %150
    i32 156, label %153
    i32 155, label %153
    i32 138, label %156
    i32 137, label %156
    i32 134, label %159
    i32 133, label %159
    i32 147, label %162
    i32 146, label %165
    i32 145, label %168
    i32 143, label %171
    i32 144, label %174
    i32 170, label %177
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %14 = call %struct.TYPE_89__* @RsDoDmaDescriptor(%struct.TYPE_90__* %13)
  store %struct.TYPE_89__* %14, %struct.TYPE_89__** %5, align 8
  br label %186

15:                                               ; preds = %2
  %16 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %17 = call %struct.TYPE_89__* @RsDoFixedDmaDescriptor(%struct.TYPE_90__* %16)
  store %struct.TYPE_89__* %17, %struct.TYPE_89__** %5, align 8
  br label %186

18:                                               ; preds = %2
  %19 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %20 = call %struct.TYPE_89__* @RsDoDwordIoDescriptor(%struct.TYPE_90__* %19)
  store %struct.TYPE_89__* %20, %struct.TYPE_89__** %5, align 8
  br label %186

21:                                               ; preds = %2
  %22 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %23 = call %struct.TYPE_89__* @RsDoDwordMemoryDescriptor(%struct.TYPE_90__* %22)
  store %struct.TYPE_89__* %23, %struct.TYPE_89__** %5, align 8
  br label %186

24:                                               ; preds = %2
  %25 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %26 = call %struct.TYPE_89__* @RsDoDwordSpaceDescriptor(%struct.TYPE_90__* %25)
  store %struct.TYPE_89__* %26, %struct.TYPE_89__** %5, align 8
  br label %186

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %45 [
    i32 172, label %30
    i32 171, label %37
    i32 173, label %44
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @ASL_ERROR, align 4
  %32 = load i32, i32* @ASL_MSG_MISSING_STARTDEPENDENT, align 4
  %33 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_92__*, %struct.TYPE_92__** %34, align 8
  %36 = call i32 @AslError(i32 %31, i32 %32, %struct.TYPE_92__* %35, i32* null)
  br label %46

37:                                               ; preds = %27
  %38 = load i32, i32* @ASL_ERROR, align 4
  %39 = load i32, i32* @ASL_MSG_DEPENDENT_NESTING, align 4
  %40 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_92__*, %struct.TYPE_92__** %41, align 8
  %43 = call i32 @AslError(i32 %38, i32 %39, %struct.TYPE_92__* %42, i32* null)
  br label %46

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %27, %44
  br label %46

46:                                               ; preds = %45, %37, %30
  %47 = load i32*, i32** %4, align 8
  store i32 172, i32* %47, align 4
  %48 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %49 = call %struct.TYPE_89__* @RsDoEndDependentDescriptor(%struct.TYPE_90__* %48)
  store %struct.TYPE_89__* %49, %struct.TYPE_89__** %5, align 8
  br label %186

50:                                               ; preds = %2
  %51 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %52 = call %struct.TYPE_89__* @RsDoEndTagDescriptor(%struct.TYPE_90__* %51)
  store %struct.TYPE_89__* %52, %struct.TYPE_89__** %5, align 8
  br label %186

53:                                               ; preds = %2
  %54 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %55 = call %struct.TYPE_89__* @RsDoExtendedIoDescriptor(%struct.TYPE_90__* %54)
  store %struct.TYPE_89__* %55, %struct.TYPE_89__** %5, align 8
  br label %186

56:                                               ; preds = %2
  %57 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %58 = call %struct.TYPE_89__* @RsDoExtendedMemoryDescriptor(%struct.TYPE_90__* %57)
  store %struct.TYPE_89__* %58, %struct.TYPE_89__** %5, align 8
  br label %186

59:                                               ; preds = %2
  %60 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %61 = call %struct.TYPE_89__* @RsDoExtendedSpaceDescriptor(%struct.TYPE_90__* %60)
  store %struct.TYPE_89__* %61, %struct.TYPE_89__** %5, align 8
  br label %186

62:                                               ; preds = %2
  %63 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %64 = call %struct.TYPE_89__* @RsDoFixedIoDescriptor(%struct.TYPE_90__* %63)
  store %struct.TYPE_89__* %64, %struct.TYPE_89__** %5, align 8
  br label %186

65:                                               ; preds = %2
  %66 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %67 = call %struct.TYPE_89__* @RsDoInterruptDescriptor(%struct.TYPE_90__* %66)
  store %struct.TYPE_89__* %67, %struct.TYPE_89__** %5, align 8
  br label %186

68:                                               ; preds = %2
  %69 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %70 = call %struct.TYPE_89__* @RsDoIoDescriptor(%struct.TYPE_90__* %69)
  store %struct.TYPE_89__* %70, %struct.TYPE_89__** %5, align 8
  br label %186

71:                                               ; preds = %2
  %72 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %73 = call %struct.TYPE_89__* @RsDoIrqDescriptor(%struct.TYPE_90__* %72)
  store %struct.TYPE_89__* %73, %struct.TYPE_89__** %5, align 8
  br label %186

74:                                               ; preds = %2
  %75 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %76 = call %struct.TYPE_89__* @RsDoIrqNoFlagsDescriptor(%struct.TYPE_90__* %75)
  store %struct.TYPE_89__* %76, %struct.TYPE_89__** %5, align 8
  br label %186

77:                                               ; preds = %2
  %78 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %79 = call %struct.TYPE_89__* @RsDoMemory24Descriptor(%struct.TYPE_90__* %78)
  store %struct.TYPE_89__* %79, %struct.TYPE_89__** %5, align 8
  br label %186

80:                                               ; preds = %2
  %81 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %82 = call %struct.TYPE_89__* @RsDoMemory32Descriptor(%struct.TYPE_90__* %81)
  store %struct.TYPE_89__* %82, %struct.TYPE_89__** %5, align 8
  br label %186

83:                                               ; preds = %2
  %84 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %85 = call %struct.TYPE_89__* @RsDoMemory32FixedDescriptor(%struct.TYPE_90__* %84)
  store %struct.TYPE_89__* %85, %struct.TYPE_89__** %5, align 8
  br label %186

86:                                               ; preds = %2
  %87 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %88 = call %struct.TYPE_89__* @RsDoQwordIoDescriptor(%struct.TYPE_90__* %87)
  store %struct.TYPE_89__* %88, %struct.TYPE_89__** %5, align 8
  br label %186

89:                                               ; preds = %2
  %90 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %91 = call %struct.TYPE_89__* @RsDoQwordMemoryDescriptor(%struct.TYPE_90__* %90)
  store %struct.TYPE_89__* %91, %struct.TYPE_89__** %5, align 8
  br label %186

92:                                               ; preds = %2
  %93 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %94 = call %struct.TYPE_89__* @RsDoQwordSpaceDescriptor(%struct.TYPE_90__* %93)
  store %struct.TYPE_89__* %94, %struct.TYPE_89__** %5, align 8
  br label %186

95:                                               ; preds = %2
  %96 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %97 = call %struct.TYPE_89__* @RsDoGeneralRegisterDescriptor(%struct.TYPE_90__* %96)
  store %struct.TYPE_89__* %97, %struct.TYPE_89__** %5, align 8
  br label %186

98:                                               ; preds = %2
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %109 [
    i32 171, label %101
    i32 172, label %108
    i32 173, label %108
  ]

101:                                              ; preds = %98
  %102 = load i32, i32* @ASL_ERROR, align 4
  %103 = load i32, i32* @ASL_MSG_DEPENDENT_NESTING, align 4
  %104 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_92__*, %struct.TYPE_92__** %105, align 8
  %107 = call i32 @AslError(i32 %102, i32 %103, %struct.TYPE_92__* %106, i32* null)
  br label %110

108:                                              ; preds = %98, %98
  br label %109

109:                                              ; preds = %98, %108
  br label %110

110:                                              ; preds = %109, %101
  %111 = load i32*, i32** %4, align 8
  store i32 171, i32* %111, align 4
  %112 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %113 = call %struct.TYPE_89__* @RsDoStartDependentDescriptor(%struct.TYPE_90__* %112)
  store %struct.TYPE_89__* %113, %struct.TYPE_89__** %5, align 8
  %114 = load i32*, i32** %4, align 8
  store i32 173, i32* %114, align 4
  br label %186

115:                                              ; preds = %2
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %126 [
    i32 171, label %118
    i32 172, label %125
    i32 173, label %125
  ]

118:                                              ; preds = %115
  %119 = load i32, i32* @ASL_ERROR, align 4
  %120 = load i32, i32* @ASL_MSG_DEPENDENT_NESTING, align 4
  %121 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_92__*, %struct.TYPE_92__** %122, align 8
  %124 = call i32 @AslError(i32 %119, i32 %120, %struct.TYPE_92__* %123, i32* null)
  br label %127

125:                                              ; preds = %115, %115
  br label %126

126:                                              ; preds = %115, %125
  br label %127

127:                                              ; preds = %126, %118
  %128 = load i32*, i32** %4, align 8
  store i32 171, i32* %128, align 4
  %129 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %130 = call %struct.TYPE_89__* @RsDoStartDependentNoPriDescriptor(%struct.TYPE_90__* %129)
  store %struct.TYPE_89__* %130, %struct.TYPE_89__** %5, align 8
  %131 = load i32*, i32** %4, align 8
  store i32 173, i32* %131, align 4
  br label %186

132:                                              ; preds = %2
  %133 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %134 = call %struct.TYPE_89__* @RsDoVendorLargeDescriptor(%struct.TYPE_90__* %133)
  store %struct.TYPE_89__* %134, %struct.TYPE_89__** %5, align 8
  br label %186

135:                                              ; preds = %2
  %136 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %137 = call %struct.TYPE_89__* @RsDoVendorSmallDescriptor(%struct.TYPE_90__* %136)
  store %struct.TYPE_89__* %137, %struct.TYPE_89__** %5, align 8
  br label %186

138:                                              ; preds = %2
  %139 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %140 = call %struct.TYPE_89__* @RsDoWordBusNumberDescriptor(%struct.TYPE_90__* %139)
  store %struct.TYPE_89__* %140, %struct.TYPE_89__** %5, align 8
  br label %186

141:                                              ; preds = %2
  %142 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %143 = call %struct.TYPE_89__* @RsDoWordIoDescriptor(%struct.TYPE_90__* %142)
  store %struct.TYPE_89__* %143, %struct.TYPE_89__** %5, align 8
  br label %186

144:                                              ; preds = %2
  %145 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %146 = call %struct.TYPE_89__* @RsDoWordSpaceDescriptor(%struct.TYPE_90__* %145)
  store %struct.TYPE_89__* %146, %struct.TYPE_89__** %5, align 8
  br label %186

147:                                              ; preds = %2
  %148 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %149 = call %struct.TYPE_89__* @RsDoGpioIntDescriptor(%struct.TYPE_90__* %148)
  store %struct.TYPE_89__* %149, %struct.TYPE_89__** %5, align 8
  br label %186

150:                                              ; preds = %2
  %151 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %152 = call %struct.TYPE_89__* @RsDoGpioIoDescriptor(%struct.TYPE_90__* %151)
  store %struct.TYPE_89__* %152, %struct.TYPE_89__** %5, align 8
  br label %186

153:                                              ; preds = %2, %2
  %154 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %155 = call %struct.TYPE_89__* @RsDoI2cSerialBusDescriptor(%struct.TYPE_90__* %154)
  store %struct.TYPE_89__* %155, %struct.TYPE_89__** %5, align 8
  br label %186

156:                                              ; preds = %2, %2
  %157 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %158 = call %struct.TYPE_89__* @RsDoSpiSerialBusDescriptor(%struct.TYPE_90__* %157)
  store %struct.TYPE_89__* %158, %struct.TYPE_89__** %5, align 8
  br label %186

159:                                              ; preds = %2, %2
  %160 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %161 = call %struct.TYPE_89__* @RsDoUartSerialBusDescriptor(%struct.TYPE_90__* %160)
  store %struct.TYPE_89__* %161, %struct.TYPE_89__** %5, align 8
  br label %186

162:                                              ; preds = %2
  %163 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %164 = call %struct.TYPE_89__* @RsDoPinConfigDescriptor(%struct.TYPE_90__* %163)
  store %struct.TYPE_89__* %164, %struct.TYPE_89__** %5, align 8
  br label %186

165:                                              ; preds = %2
  %166 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %167 = call %struct.TYPE_89__* @RsDoPinFunctionDescriptor(%struct.TYPE_90__* %166)
  store %struct.TYPE_89__* %167, %struct.TYPE_89__** %5, align 8
  br label %186

168:                                              ; preds = %2
  %169 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %170 = call %struct.TYPE_89__* @RsDoPinGroupDescriptor(%struct.TYPE_90__* %169)
  store %struct.TYPE_89__* %170, %struct.TYPE_89__** %5, align 8
  br label %186

171:                                              ; preds = %2
  %172 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %173 = call %struct.TYPE_89__* @RsDoPinGroupFunctionDescriptor(%struct.TYPE_90__* %172)
  store %struct.TYPE_89__* %173, %struct.TYPE_89__** %5, align 8
  br label %186

174:                                              ; preds = %2
  %175 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %176 = call %struct.TYPE_89__* @RsDoPinGroupConfigDescriptor(%struct.TYPE_90__* %175)
  store %struct.TYPE_89__* %176, %struct.TYPE_89__** %5, align 8
  br label %186

177:                                              ; preds = %2
  br label %186

178:                                              ; preds = %2
  %179 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_92__*, %struct.TYPE_92__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %178, %177, %174, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %127, %110, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %46, %24, %21, %18, %15, %12
  %187 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_92__*, %struct.TYPE_92__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %190, i32 0, i32 0
  store i32 170, i32* %191, align 8
  %192 = load i32, i32* @OP_IS_RESOURCE_DESC, align 4
  %193 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_92__*, %struct.TYPE_92__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %196, i32 0, i32 5
  store i32 %192, i32* %197, align 4
  %198 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_92__*, %struct.TYPE_92__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %205, i32 0, i32 0
  store i32 %200, i32* %206, align 8
  %207 = load %struct.TYPE_89__*, %struct.TYPE_89__** %5, align 8
  %208 = icmp ne %struct.TYPE_89__* %207, null
  br i1 %208, label %209, label %229

209:                                              ; preds = %186
  %210 = load %struct.TYPE_89__*, %struct.TYPE_89__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_92__*, %struct.TYPE_92__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %216, i32 0, i32 3
  store i32 %212, i32* %217, align 4
  %218 = load %struct.TYPE_89__*, %struct.TYPE_89__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to %struct.TYPE_91__*
  %222 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_90__*, %struct.TYPE_90__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_92__*, %struct.TYPE_92__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %227, i32 0, i32 2
  store i32 %223, i32* %228, align 8
  br label %229

229:                                              ; preds = %209, %186
  %230 = load %struct.TYPE_89__*, %struct.TYPE_89__** %5, align 8
  ret %struct.TYPE_89__* %230
}

declare dso_local %struct.TYPE_89__* @RsDoDmaDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoFixedDmaDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoDwordIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoDwordMemoryDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoDwordSpaceDescriptor(%struct.TYPE_90__*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_92__*, i32*) #1

declare dso_local %struct.TYPE_89__* @RsDoEndDependentDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoEndTagDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoExtendedIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoExtendedMemoryDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoExtendedSpaceDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoFixedIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoInterruptDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoIrqDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoIrqNoFlagsDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoMemory24Descriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoMemory32Descriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoMemory32FixedDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoQwordIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoQwordMemoryDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoQwordSpaceDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoGeneralRegisterDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoStartDependentDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoStartDependentNoPriDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoVendorLargeDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoVendorSmallDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoWordBusNumberDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoWordIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoWordSpaceDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoGpioIntDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoGpioIoDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoI2cSerialBusDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoSpiSerialBusDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoUartSerialBusDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoPinConfigDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoPinFunctionDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoPinGroupDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoPinGroupFunctionDescriptor(%struct.TYPE_90__*) #1

declare dso_local %struct.TYPE_89__* @RsDoPinGroupConfigDescriptor(%struct.TYPE_90__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
