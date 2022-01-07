; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_devreq = type { i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.bt_devfilter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_PKT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devreq(i32 %0, %struct.bt_devreq* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt_devreq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [320 x i32], align 16
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.bt_devfilter, align 4
  %13 = alloca %struct.bt_devfilter, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.bt_devreq* %1, %struct.bt_devreq** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 0
  %19 = bitcast i32* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 1
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %11, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %28 = icmp eq %struct.bt_devreq* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %242

34:                                               ; preds = %29
  %35 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %36 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %41 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %46 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %51 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %39
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %242

56:                                               ; preds = %49, %44
  %57 = call i32 @memset(%struct.bt_devfilter* %13, i32 0, i32 4)
  %58 = load i64, i64* @NG_HCI_EVENT_PKT, align 8
  %59 = call i32 @bt_devfilter_pkt_set(%struct.bt_devfilter* %13, i64 %58)
  %60 = call i32 @bt_devfilter_evt_set(%struct.bt_devfilter* %13, i32 129)
  %61 = call i32 @bt_devfilter_evt_set(%struct.bt_devfilter* %13, i32 128)
  %62 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %63 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %68 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bt_devfilter_evt_set(%struct.bt_devfilter* %13, i32 %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @bt_devfilter(i32 %72, %struct.bt_devfilter* %13, %struct.bt_devfilter* %12)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %242

76:                                               ; preds = %71
  store i32 0, i32* %17, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %79 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %82 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %85 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @bt_devsend(i32 %77, i32 %80, i32 %83, i32 %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i32, i32* @errno, align 4
  store i32 %91, i32* %17, align 4
  br label %234

92:                                               ; preds = %76
  %93 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %94 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @htole16(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = call i64 @time(i32* null)
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %97, %98
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %229, %92
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @time(i32* null)
  %103 = sub nsw i64 %101, %102
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i64 0, i64* %7, align 8
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i32, i32* %5, align 4
  %109 = getelementptr inbounds [320 x i32], [320 x i32]* %8, i64 0, i64 0
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @bt_devrecv(i32 %108, i32* %109, i32 1280, i64 %110)
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @errno, align 4
  store i32 %115, i32* %17, align 4
  br label %234

116:                                              ; preds = %107
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NG_HCI_EVENT_PKT, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @EIO, align 4
  store i32 %123, i32* %17, align 4
  br label %234

124:                                              ; preds = %116
  %125 = load i64, i64* %16, align 8
  %126 = sub i64 %125, 24
  store i64 %126, i64* %16, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %199 [
    i32 129, label %130
    i32 128, label %159
  ]

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %130
  %137 = load i64, i64* %16, align 8
  %138 = sub i64 %137, 24
  store i64 %138, i64* %16, align 8
  %139 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %140 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %136
  %145 = load i64, i64* %16, align 8
  %146 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %147 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %149 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 1
  %153 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %154 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @memcpy(i32* %150, %struct.TYPE_5__* %152, i64 %155)
  br label %157

157:                                              ; preds = %144, %136
  br label %234

158:                                              ; preds = %130
  br label %228

159:                                              ; preds = %124
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %198

165:                                              ; preds = %159
  %166 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %167 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 128
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @EIO, align 4
  store i32 %176, i32* %17, align 4
  br label %234

177:                                              ; preds = %170
  br label %197

178:                                              ; preds = %165
  %179 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %180 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %16, align 8
  %183 = icmp sge i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %178
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %187 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %189 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %192 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %193 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @memcpy(i32* %190, %struct.TYPE_5__* %191, i64 %194)
  br label %196

196:                                              ; preds = %184, %178
  br label %234

197:                                              ; preds = %177
  br label %198

198:                                              ; preds = %197, %159
  br label %228

199:                                              ; preds = %124
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %204 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %199
  %208 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %209 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %16, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %207
  %214 = load i64, i64* %16, align 8
  %215 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %216 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %218 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 1
  %222 = load %struct.bt_devreq*, %struct.bt_devreq** %6, align 8
  %223 = getelementptr inbounds %struct.bt_devreq, %struct.bt_devreq* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @memcpy(i32* %219, %struct.TYPE_5__* %221, i64 %224)
  br label %226

226:                                              ; preds = %213, %207
  br label %234

227:                                              ; preds = %199
  br label %228

228:                                              ; preds = %227, %198, %158
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %7, align 8
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %100, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %233, i32* %17, align 4
  br label %234

234:                                              ; preds = %232, %226, %196, %175, %157, %122, %114, %90
  %235 = load i32, i32* %5, align 4
  %236 = call i64 @bt_devfilter(i32 %235, %struct.bt_devfilter* %12, %struct.bt_devfilter* null)
  %237 = load i32, i32* %17, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load i32, i32* %17, align 4
  store i32 %240, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %242

241:                                              ; preds = %234
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %241, %239, %75, %54, %32
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i32 @memset(%struct.bt_devfilter*, i32, i32) #1

declare dso_local i32 @bt_devfilter_pkt_set(%struct.bt_devfilter*, i64) #1

declare dso_local i32 @bt_devfilter_evt_set(%struct.bt_devfilter*, i32) #1

declare dso_local i64 @bt_devfilter(i32, %struct.bt_devfilter*, %struct.bt_devfilter*) #1

declare dso_local i64 @bt_devsend(i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @bt_devrecv(i32, i32*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
