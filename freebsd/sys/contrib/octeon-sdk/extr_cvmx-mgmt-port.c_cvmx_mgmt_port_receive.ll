; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-mgmt-port.c_cvmx_mgmt_port_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__*, i64* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@CVMX_MGMT_PORT_INVALID_PARAM = common dso_local global i32 0, align 4
@cvmx_mgmt_port_state_ptr = common dso_local global %struct.TYPE_11__* null, align 8
@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_MGMT_PORT_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@CVMX_MGMT_PORT_NUM_RX_BUFFERS = common dso_local global i32 0, align 4
@CVMX_SYNCWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"ERROR: cvmx_mgmt_port_receive: Packet (%d) larger than supplied buffer (%d)\0A\00", align 1
@CVMX_MGMT_PORT_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"ERROR: cvmx_mgmt_port_receive: Receive error code %d. Packet dropped(Len %d), \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_mgmt_port_receive(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (...) @__cvmx_mgmt_port_num_ports()
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @CVMX_MGMT_PORT_INVALID_PARAM, align 4
  store i32 %22, i32* %4, align 4
  br label %301

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @CVMX_MGMT_PORT_INVALID_PARAM, align 4
  store i32 %27, i32* %4, align 4
  br label %301

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @CVMX_MGMT_PORT_INVALID_PARAM, align 4
  store i32 %32, i32* %4, align 4
  br label %301

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_mgmt_port_state_ptr, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %9, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = call i32 @cvmx_spinlock_lock(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CVMX_MIXX_IRCNT(i32 %41)
  %43 = call i32 @cvmx_read_csr(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %295

49:                                               ; preds = %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = bitcast i8* %58 to i64*
  store i64* %59, i64** %11, align 8
  %60 = load i64*, i64** %11, align 8
  store i64* %60, i64** %12, align 8
  %61 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %62 = call i64 @OCTEON_IS_MODEL(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64*, i64** %11, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %11, align 8
  br label %71

71:                                               ; preds = %68, %64, %49
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %100, %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %160

84:                                               ; preds = %72
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %84
  %101 = load i32*, i32** %7, align 8
  %102 = load i64*, i64** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @memcpy(i32* %101, i64* %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* @CVMX_MGMT_PORT_RX_BUFFER_SIZE, align 4
  %125 = sub nsw i32 %124, 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %125, i32* %134, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  %139 = load i32, i32* @CVMX_MGMT_PORT_NUM_RX_BUFFERS, align 4
  %140 = sext i32 %139 to i64
  %141 = urem i64 %138, %140
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i64*, i64** %12, align 8
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* @CVMX_SYNCWS, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @CVMX_MIXX_IRING2(i32 %146)
  %148 = call i32 @cvmx_write_csr(i32 %147, i32 1)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = bitcast i8* %157 to i64*
  store i64* %158, i64** %11, align 8
  %159 = load i64*, i64** %11, align 8
  store i64* %159, i64** %12, align 8
  br label %72

160:                                              ; preds = %72
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 15
  br i1 %171, label %172, label %218

172:                                              ; preds = %160
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %173, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %172
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = load i64*, i64** %11, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @memcpy(i32* %196, i64* %197, i32 %198)
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %10, align 4
  br label %217

203:                                              ; preds = %172
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %213, i32 %214)
  %216 = load i32, i32* @CVMX_MGMT_PORT_NO_MEMORY, align 4
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %203, %185
  br label %257

218:                                              ; preds = %160
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %228, i32 %240)
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @cvmx_mgmt_port_link_get(i32 %254)
  %256 = call i32 @cvmx_mgmt_port_link_set(i32 %253, i32 %255)
  br label %257

257:                                              ; preds = %218, %217
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  store i32 0, i32* %266, align 4
  %267 = load i32, i32* @CVMX_MGMT_PORT_RX_BUFFER_SIZE, align 4
  %268 = sub nsw i32 %267, 8
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 1
  store i32 %268, i32* %277, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, 1
  %282 = load i32, i32* @CVMX_MGMT_PORT_NUM_RX_BUFFERS, align 4
  %283 = sext i32 %282 to i64
  %284 = urem i64 %281, %283
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load i64*, i64** %12, align 8
  store i64 0, i64* %287, align 8
  %288 = load i32, i32* @CVMX_SYNCWS, align 4
  %289 = load i32, i32* %5, align 4
  %290 = call i32 @CVMX_MIXX_IRING2(i32 %289)
  %291 = call i32 @cvmx_write_csr(i32 %290, i32 1)
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @CVMX_MIXX_IRCNT(i32 %292)
  %294 = call i32 @cvmx_write_csr(i32 %293, i32 1)
  br label %296

295:                                              ; preds = %33
  store i32 0, i32* %10, align 4
  br label %296

296:                                              ; preds = %295, %257
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = call i32 @cvmx_spinlock_unlock(i32* %298)
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %296, %31, %26, %21
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @__cvmx_mgmt_port_num_ports(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIXX_IRCNT(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_MIXX_IRING2(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32) #1

declare dso_local i32 @cvmx_mgmt_port_link_set(i32, i32) #1

declare dso_local i32 @cvmx_mgmt_port_link_get(i32) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
