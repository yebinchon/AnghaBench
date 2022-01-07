; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_st_xdr.c_xdr_rpcbs_rmtcalllist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_st_xdr.c_xdr_rpcbs_rmtcalllist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.rpcbs_rmtcalllist* }
%struct.rpcbs_rmtcalllist = type { i32 }

@XDR_ENCODE = common dso_local global i64 0, align 8
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpcbs_rmtcalllist(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rpcbs_rmtcalllist**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XDR_ENCODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %121

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %16 = mul nsw i32 6, %15
  %17 = call i32* @XDR_INLINE(%struct.TYPE_13__* %14, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %13
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 6
  %24 = call i32 @xdr_rpcprog(%struct.TYPE_13__* %21, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %298

28:                                               ; preds = %20
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 5
  %32 = call i32 @xdr_rpcvers(%struct.TYPE_13__* %29, i64* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %298

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = call i32 @xdr_rpcproc(%struct.TYPE_13__* %37, i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %298

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = call i32 @xdr_int(%struct.TYPE_13__* %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %298

52:                                               ; preds = %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = call i32 @xdr_int(%struct.TYPE_13__* %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %298

60:                                               ; preds = %52
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call i32 @xdr_int(%struct.TYPE_13__* %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %298

68:                                               ; preds = %60
  br label %100

69:                                               ; preds = %13
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @IXDR_PUT_U_INT32(i32* %70, i64 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @IXDR_PUT_U_INT32(i32* %75, i64 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @IXDR_PUT_U_INT32(i32* %80, i64 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @IXDR_PUT_INT32(i32* %85, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IXDR_PUT_INT32(i32* %90, i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @IXDR_PUT_INT32(i32* %95, i32 %98)
  br label %100

100:                                              ; preds = %69, %68
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %105 = call i32 @xdr_string(%struct.TYPE_13__* %101, i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %3, align 4
  br label %298

109:                                              ; preds = %100
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 7
  store %struct.rpcbs_rmtcalllist** %111, %struct.rpcbs_rmtcalllist*** %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = load %struct.rpcbs_rmtcalllist**, %struct.rpcbs_rmtcalllist*** %7, align 8
  %114 = bitcast %struct.rpcbs_rmtcalllist** %113 to i8**
  %115 = call i32 @xdr_pointer(%struct.TYPE_13__* %112, i8** %114, i32 48, i32 ptrtoint (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @xdr_rpcbs_rmtcalllist to i32))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %3, align 4
  br label %298

119:                                              ; preds = %109
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %3, align 4
  br label %298

121:                                              ; preds = %2
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XDR_DECODE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %230

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %130 = mul nsw i32 6, %129
  %131 = call i32* @XDR_INLINE(%struct.TYPE_13__* %128, i32 %130)
  store i32* %131, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %183

134:                                              ; preds = %127
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 6
  %138 = call i32 @xdr_rpcprog(%struct.TYPE_13__* %135, i64* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %298

142:                                              ; preds = %134
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  %146 = call i32 @xdr_rpcvers(%struct.TYPE_13__* %143, i64* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %3, align 4
  br label %298

150:                                              ; preds = %142
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = call i32 @xdr_rpcproc(%struct.TYPE_13__* %151, i64* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %3, align 4
  br label %298

158:                                              ; preds = %150
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = call i32 @xdr_int(%struct.TYPE_13__* %159, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %3, align 4
  br label %298

166:                                              ; preds = %158
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = call i32 @xdr_int(%struct.TYPE_13__* %167, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %3, align 4
  br label %298

174:                                              ; preds = %166
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = call i32 @xdr_int(%struct.TYPE_13__* %175, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %3, align 4
  br label %298

182:                                              ; preds = %174
  br label %211

183:                                              ; preds = %127
  %184 = load i32*, i32** %6, align 8
  %185 = call i64 @IXDR_GET_U_INT32(i32* %184)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 6
  store i64 %185, i64* %187, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = call i64 @IXDR_GET_U_INT32(i32* %188)
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 5
  store i64 %189, i64* %191, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = call i64 @IXDR_GET_U_INT32(i32* %192)
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 4
  store i64 %193, i64* %195, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = call i64 @IXDR_GET_INT32(i32* %196)
  %198 = trunc i64 %197 to i32
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = call i64 @IXDR_GET_INT32(i32* %201)
  %203 = trunc i64 %202 to i32
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = call i64 @IXDR_GET_INT32(i32* %206)
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %183, %182
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %216 = call i32 @xdr_string(%struct.TYPE_13__* %212, i32* %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %3, align 4
  br label %298

220:                                              ; preds = %211
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %222 = load %struct.rpcbs_rmtcalllist**, %struct.rpcbs_rmtcalllist*** %7, align 8
  %223 = bitcast %struct.rpcbs_rmtcalllist** %222 to i8**
  %224 = call i32 @xdr_pointer(%struct.TYPE_13__* %221, i8** %223, i32 48, i32 ptrtoint (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @xdr_rpcbs_rmtcalllist to i32))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* @FALSE, align 4
  store i32 %227, i32* %3, align 4
  br label %298

228:                                              ; preds = %220
  %229 = load i32, i32* @TRUE, align 4
  store i32 %229, i32* %3, align 4
  br label %298

230:                                              ; preds = %121
  br label %231

231:                                              ; preds = %230
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 6
  %235 = call i32 @xdr_rpcprog(%struct.TYPE_13__* %232, i64* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %231
  %238 = load i32, i32* @FALSE, align 4
  store i32 %238, i32* %3, align 4
  br label %298

239:                                              ; preds = %231
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 5
  %243 = call i32 @xdr_rpcvers(%struct.TYPE_13__* %240, i64* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %239
  %246 = load i32, i32* @FALSE, align 4
  store i32 %246, i32* %3, align 4
  br label %298

247:                                              ; preds = %239
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = call i32 @xdr_rpcproc(%struct.TYPE_13__* %248, i64* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %247
  %254 = load i32, i32* @FALSE, align 4
  store i32 %254, i32* %3, align 4
  br label %298

255:                                              ; preds = %247
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = call i32 @xdr_int(%struct.TYPE_13__* %256, i32* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %255
  %262 = load i32, i32* @FALSE, align 4
  store i32 %262, i32* %3, align 4
  br label %298

263:                                              ; preds = %255
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = call i32 @xdr_int(%struct.TYPE_13__* %264, i32* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %263
  %270 = load i32, i32* @FALSE, align 4
  store i32 %270, i32* %3, align 4
  br label %298

271:                                              ; preds = %263
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 2
  %275 = call i32 @xdr_int(%struct.TYPE_13__* %272, i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* %3, align 4
  br label %298

279:                                              ; preds = %271
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %284 = call i32 @xdr_string(%struct.TYPE_13__* %280, i32* %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %279
  %287 = load i32, i32* @FALSE, align 4
  store i32 %287, i32* %3, align 4
  br label %298

288:                                              ; preds = %279
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %290 = load %struct.rpcbs_rmtcalllist**, %struct.rpcbs_rmtcalllist*** %7, align 8
  %291 = bitcast %struct.rpcbs_rmtcalllist** %290 to i8**
  %292 = call i32 @xdr_pointer(%struct.TYPE_13__* %289, i8** %291, i32 48, i32 ptrtoint (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @xdr_rpcbs_rmtcalllist to i32))
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %288
  %295 = load i32, i32* @FALSE, align 4
  store i32 %295, i32* %3, align 4
  br label %298

296:                                              ; preds = %288
  %297 = load i32, i32* @TRUE, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %296, %294, %286, %277, %269, %261, %253, %245, %237, %228, %226, %218, %180, %172, %164, %156, %148, %140, %119, %117, %107, %66, %58, %50, %42, %34, %26
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32* @XDR_INLINE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xdr_rpcprog(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @xdr_rpcvers(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @xdr_rpcproc(%struct.TYPE_13__*, i64*) #1

declare dso_local i32 @xdr_int(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @IXDR_PUT_U_INT32(i32*, i64) #1

declare dso_local i32 @IXDR_PUT_INT32(i32*, i32) #1

declare dso_local i32 @xdr_string(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @xdr_pointer(%struct.TYPE_13__*, i8**, i32, i32) #1

declare dso_local i64 @IXDR_GET_U_INT32(i32*) #1

declare dso_local i64 @IXDR_GET_INT32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
