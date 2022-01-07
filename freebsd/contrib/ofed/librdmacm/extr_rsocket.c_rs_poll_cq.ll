; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_wc = type { i64, i32, i32, i32 }

@IBV_WC_SUCCESS = common dso_local global i64 0, align 8
@IBV_WC_WITH_IMM = common dso_local global i32 0, align 4
@RS_CTRL_DISCONNECT = common dso_local global i32 0, align 4
@rs_disconnected = common dso_local global i8* null, align 8
@RS_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@rs_readable = common dso_local global i32 0, align 4
@rs_connected = common dso_local global i32 0, align 4
@rs_error = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_poll_cq(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.ibv_wc, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %214, %26, %1
  %9 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 11
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ibv_poll_cq(i32 %13, i32 1, %struct.ibv_wc* %4)
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %215

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @rs_wr_is_recv(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %136

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %8

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @be32toh(i32 %37)
  store i64 %38, i64* %5, align 8
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %41 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = inttoptr i64 %46 to i64*
  %48 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rs_wr_data(i32 %49)
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %39, %35
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @rs_msg_op(i64 %54)
  switch i32 %55, label %100 [
    i32 129, label %56
    i32 130, label %61
    i32 131, label %62
    i32 128, label %99
  ]

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @rs_msg_data(i64 %57)
  %59 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  br label %135

61:                                               ; preds = %53
  br label %135

62:                                               ; preds = %53
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @rs_msg_data(i64 %63)
  %65 = load i32, i32* @RS_CTRL_DISCONNECT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** @rs_disconnected, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %71 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %249

72:                                               ; preds = %62
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @rs_msg_data(i64 %73)
  %75 = load i32, i32* @RS_CTRL_SHUTDOWN, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %79 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @rs_writable, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i32, i32* @rs_readable, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %88 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %96

91:                                               ; preds = %77
  %92 = load i8*, i8** @rs_disconnected, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %95 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %249

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97
  br label %135

99:                                               ; preds = %53
  br label %135

100:                                              ; preds = %53
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @rs_msg_op(i64 %101)
  %103 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %104 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %103, i32 0, i32 7
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %107 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 4
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @rs_msg_data(i64 %111)
  %113 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %114 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %113, i32 0, i32 7
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %117 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %112, i32* %120, align 4
  %121 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %122 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %126 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %100
  %132 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %133 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %100
  br label %135

135:                                              ; preds = %134, %99, %98, %61, %56
  br label %214

136:                                              ; preds = %16
  %137 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @rs_wr_data(i32 %138)
  %140 = call i32 @rs_msg_op(i64 %139)
  switch i32 %140, label %180 [
    i32 129, label %141
    i32 131, label %146
    i32 130, label %163
  ]

141:                                              ; preds = %136
  %142 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %143 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %193

146:                                              ; preds = %136
  %147 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %148 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @rs_wr_data(i32 %152)
  %154 = call i32 @rs_msg_data(i64 %153)
  %155 = load i32, i32* @RS_CTRL_DISCONNECT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load i8*, i8** @rs_disconnected, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %161 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %146
  br label %193

163:                                              ; preds = %136
  %164 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %165 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  %168 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @rs_wr_is_msg_send(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %163
  %173 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %174 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 4
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 8
  br label %179

179:                                              ; preds = %172, %163
  br label %193

180:                                              ; preds = %136
  %181 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %182 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @rs_wr_data(i32 %186)
  %188 = call i32 @rs_msg_data(i64 %187)
  %189 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %190 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %180, %179, %162, %141
  %194 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %193
  %199 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %200 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @rs_connected, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load i8*, i8** @rs_error, align 8
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %209 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* @EIO, align 4
  %211 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %212 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %205, %198, %193
  br label %214

214:                                              ; preds = %213, %135
  br label %8

215:                                              ; preds = %8
  %216 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %217 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @rs_connected, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %232, %222
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %7, align 4
  %229 = icmp ne i32 %227, 0
  br label %230

230:                                              ; preds = %226, %223
  %231 = phi i1 [ false, %223 ], [ %229, %226 ]
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %234 = call i32 @rs_post_recv(%struct.rsocket* %233)
  store i32 %234, i32* %6, align 4
  br label %223

235:                                              ; preds = %230
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %235
  %239 = load i8*, i8** @rs_error, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %242 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load i32, i32* @errno, align 4
  %244 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %245 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %238, %235
  br label %247

247:                                              ; preds = %246, %215
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %91, %67
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @ibv_poll_cq(i32, i32, %struct.ibv_wc*) #1

declare dso_local i64 @rs_wr_is_recv(i32) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @rs_wr_data(i32) #1

declare dso_local i32 @rs_msg_op(i64) #1

declare dso_local i32 @rs_msg_data(i64) #1

declare dso_local i32 @rs_wr_is_msg_send(i32) #1

declare dso_local i32 @rs_post_recv(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
