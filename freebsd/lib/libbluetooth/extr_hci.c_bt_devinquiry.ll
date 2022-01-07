; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devinquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devinquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_devinquiry = type { i32, i32, i32, i32, i32 }
%struct.bt_devfilter = type { i32 }
%struct.TYPE_8__ = type { i32*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@HCI_DEVNAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@bt_devany_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_INQUIRY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devinquiry(i8* %0, i32 %1, i32 %2, %struct.bt_devinquiry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bt_devinquiry**, align 8
  %10 = alloca [320 x i8*], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bt_devfilter, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.bt_devinquiry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bt_devinquiry** %3, %struct.bt_devinquiry*** %9, align 8
  %22 = load i32, i32* @HCI_DEVNAME_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = getelementptr inbounds [320 x i8*], [320 x i8*]* %10, i64 0, i64 0
  %27 = bitcast i8** %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %14, align 8
  %28 = getelementptr inbounds [320 x i8*], [320 x i8*]* %10, i64 0, i64 0
  %29 = bitcast i8** %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %15, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 1
  %32 = bitcast %struct.TYPE_9__* %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %16, align 8
  %33 = load %struct.bt_devinquiry**, %struct.bt_devinquiry*** %9, align 8
  %34 = icmp eq %struct.bt_devinquiry** %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

37:                                               ; preds = %4
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = trunc i64 %23 to i32
  %42 = call i32 @memset(i8* %25, i32 0, i32 %41)
  store i8* %25, i8** %6, align 8
  %43 = load i32, i32* @bt_devany_cb, align 4
  %44 = call i32 @bt_devenum(i32 %43, i8* %25)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.bt_devinquiry**, %struct.bt_devinquiry*** %9, align 8
  store %struct.bt_devinquiry* null, %struct.bt_devinquiry** %51, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @bt_devopen(i8* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

61:                                               ; preds = %55
  %62 = load i32, i32* %19, align 4
  %63 = call i64 @bt_devfilter(i32 %62, %struct.bt_devfilter* null, %struct.bt_devfilter* %13)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %19, align 4
  %67 = call i32 @bt_devclose(i32 %66)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

68:                                               ; preds = %61
  %69 = call i32 @bt_devfilter_evt_set(%struct.bt_devfilter* %13, i32 129)
  %70 = call i32 @bt_devfilter_evt_set(%struct.bt_devfilter* %13, i32 128)
  %71 = load i32, i32* %19, align 4
  %72 = call i64 @bt_devfilter(i32 %71, %struct.bt_devfilter* %13, %struct.bt_devfilter* null)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @bt_devclose(i32 %75)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

77:                                               ; preds = %68
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 51, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 139, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 158, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  store i32 5, i32* %7, align 4
  br label %103

93:                                               ; preds = %77
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 2, i32* %7, align 4
  br label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %98, 62
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 62, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 100
  %106 = sdiv i32 %105, 128
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %114, 255
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %103
  store i32 8, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call %struct.bt_devinquiry* @calloc(i32 %123, i32 20)
  %125 = load %struct.bt_devinquiry**, %struct.bt_devinquiry*** %9, align 8
  store %struct.bt_devinquiry* %124, %struct.bt_devinquiry** %125, align 8
  store %struct.bt_devinquiry* %124, %struct.bt_devinquiry** %18, align 8
  %126 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %127 = icmp eq %struct.bt_devinquiry* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @bt_devclose(i32 %129)
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

132:                                              ; preds = %117
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %135 = load i32, i32* @NG_HCI_OCF_INQUIRY, align 4
  %136 = call i32 @NG_HCI_OPCODE(i32 %134, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %138 = call i64 @bt_devsend(i32 %133, i32 %136, %struct.TYPE_8__* %137, i32 24)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %142 = call i32 @free(%struct.bt_devinquiry* %141)
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @bt_devclose(i32 %143)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %224, %145
  %147 = load i32, i32* %19, align 4
  %148 = getelementptr inbounds [320 x i8*], [320 x i8*]* %10, i64 0, i64 0
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @bt_devrecv(i32 %147, i8** %148, i32 2560, i32 %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %155 = call i32 @free(%struct.bt_devinquiry* %154)
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @bt_devclose(i32 %156)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

158:                                              ; preds = %146
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ult i64 %160, 4
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %164 = call i32 @free(%struct.bt_devinquiry* %163)
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @bt_devclose(i32 %165)
  %167 = load i32, i32* @EIO, align 4
  store i32 %167, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

168:                                              ; preds = %158
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %224 [
    i32 129, label %172
    i32 128, label %173
  ]

172:                                              ; preds = %168
  br label %225

173:                                              ; preds = %168
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 1
  %176 = bitcast %struct.TYPE_6__* %175 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %17, align 8
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %220, %173
  %178 = load i32, i32* %20, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @MIN(i32 %181, i32 %182)
  %184 = icmp slt i32 %178, %183
  br i1 %184, label %185, label %223

185:                                              ; preds = %177
  %186 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %187 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %186, i32 0, i32 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 4
  %190 = call i32 @bdaddr_copy(i32* %187, i32* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %195 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %200 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %202 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @memcpy(i32 %203, i32 %206, i32 4)
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le16toh(i32 %210)
  %212 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %213 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 1
  store %struct.TYPE_7__* %215, %struct.TYPE_7__** %17, align 8
  %216 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %217 = getelementptr inbounds %struct.bt_devinquiry, %struct.bt_devinquiry* %216, i32 1
  store %struct.bt_devinquiry* %217, %struct.bt_devinquiry** %18, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %185
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %177

223:                                              ; preds = %177
  br label %224

224:                                              ; preds = %168, %223
  br label %146

225:                                              ; preds = %172
  %226 = load i32, i32* %19, align 4
  %227 = call i32 @bt_devclose(i32 %226)
  %228 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %18, align 8
  %229 = load %struct.bt_devinquiry**, %struct.bt_devinquiry*** %9, align 8
  %230 = load %struct.bt_devinquiry*, %struct.bt_devinquiry** %229, align 8
  %231 = ptrtoint %struct.bt_devinquiry* %228 to i64
  %232 = ptrtoint %struct.bt_devinquiry* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 20
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %236

236:                                              ; preds = %225, %162, %153, %140, %128, %74, %65, %60, %52, %35
  %237 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @bt_devenum(i32, i8*) #2

declare dso_local i32 @bt_devopen(i8*) #2

declare dso_local i64 @bt_devfilter(i32, %struct.bt_devfilter*, %struct.bt_devfilter*) #2

declare dso_local i32 @bt_devclose(i32) #2

declare dso_local i32 @bt_devfilter_evt_set(%struct.bt_devfilter*, i32) #2

declare dso_local %struct.bt_devinquiry* @calloc(i32, i32) #2

declare dso_local i64 @bt_devsend(i32, i32, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #2

declare dso_local i32 @free(%struct.bt_devinquiry*) #2

declare dso_local i32 @bt_devrecv(i32, i8**, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @bdaddr_copy(i32*, i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @le16toh(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
