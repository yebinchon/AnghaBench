; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_create_tcp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.comm_point = type { i32, i32, i32, %struct.comm_point*, %struct.comm_point*, i64, %struct.TYPE_7__*, %struct.comm_point*, i8*, i32*, %struct.TYPE_5__, i64, i64, i64, i64, i64, i32, i32*, i64, i64, i64, i32*, i32, i32, %struct.comm_point*, i64, i64, %struct.comm_base* }
%struct.TYPE_7__ = type { %struct.timeval* }
%struct.timeval = type { i32, i32, i32, %struct.timeval*, %struct.timeval*, i64, %struct.TYPE_7__*, %struct.timeval*, i8*, i32*, %struct.TYPE_5__, i64, i64, i64, i64, i64, i32, i32*, i64, i64, i64, i32*, i32, i32, %struct.timeval*, i64, i64, %struct.comm_base* }
%struct.TYPE_5__ = type { %struct.timeval* }
%struct.sldns_buffer = type { i32 }
%struct.internal_event = type { i32, i32, i32, %struct.internal_event*, %struct.internal_event*, i64, %struct.TYPE_7__*, %struct.internal_event*, i8*, i32*, %struct.TYPE_5__, i64, i64, i64, i64, i64, i32, i32*, i64, i64, i64, i32*, i32, i32, %struct.internal_event*, i64, i64, %struct.comm_base* }

@comm_tcp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create tcp commpoint\00", align 1
@UB_EV_PERSIST = common dso_local global i16 0, align 2
@UB_EV_READ = common dso_local global i16 0, align 2
@UB_EV_TIMEOUT = common dso_local global i16 0, align 2
@comm_point_tcp_handle_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not basetset tcphdl event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comm_point* (%struct.comm_base*, %struct.comm_point*, i64, %struct.sldns_buffer*, i32*, i8*)* @comm_point_create_tcp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comm_point* @comm_point_create_tcp_handler(%struct.comm_base* %0, %struct.comm_point* %1, i64 %2, %struct.sldns_buffer* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.comm_point*, align 8
  %8 = alloca %struct.comm_base*, align 8
  %9 = alloca %struct.comm_point*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sldns_buffer*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.comm_point*, align 8
  %15 = alloca i16, align 2
  store %struct.comm_base* %0, %struct.comm_base** %8, align 8
  store %struct.comm_point* %1, %struct.comm_point** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.sldns_buffer* %3, %struct.sldns_buffer** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = call i64 @calloc(i32 1, i32 208)
  %17 = inttoptr i64 %16 to %struct.comm_point*
  store %struct.comm_point* %17, %struct.comm_point** %14, align 8
  %18 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %19 = icmp ne %struct.comm_point* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

21:                                               ; preds = %6
  %22 = call i64 @calloc(i32 1, i32 208)
  %23 = inttoptr i64 %22 to %struct.internal_event*
  %24 = bitcast %struct.internal_event* %23 to %struct.comm_point*
  %25 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 3
  store %struct.comm_point* %24, %struct.comm_point** %26, align 8
  %27 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %28 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %27, i32 0, i32 3
  %29 = load %struct.comm_point*, %struct.comm_point** %28, align 8
  %30 = icmp ne %struct.comm_point* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %33 = bitcast %struct.comm_point* %32 to %struct.timeval*
  %34 = call i32 @free(%struct.timeval* %33)
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

35:                                               ; preds = %21
  %36 = load %struct.comm_base*, %struct.comm_base** %8, align 8
  %37 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 3
  %39 = load %struct.comm_point*, %struct.comm_point** %38, align 8
  %40 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %39, i32 0, i32 27
  store %struct.comm_base* %36, %struct.comm_base** %40, align 8
  %41 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @sldns_buffer_new(i64 %43)
  %45 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %46 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %48 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %35
  %52 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 3
  %54 = load %struct.comm_point*, %struct.comm_point** %53, align 8
  %55 = bitcast %struct.comm_point* %54 to %struct.timeval*
  %56 = call i32 @free(%struct.timeval* %55)
  %57 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %58 = bitcast %struct.comm_point* %57 to %struct.timeval*
  %59 = call i32 @free(%struct.timeval* %58)
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

60:                                               ; preds = %35
  %61 = call i64 @malloc(i32 208)
  %62 = inttoptr i64 %61 to %struct.timeval*
  %63 = bitcast %struct.timeval* %62 to %struct.comm_point*
  %64 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %65 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %64, i32 0, i32 4
  store %struct.comm_point* %63, %struct.comm_point** %65, align 8
  %66 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %67 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %66, i32 0, i32 4
  %68 = load %struct.comm_point*, %struct.comm_point** %67, align 8
  %69 = icmp ne %struct.comm_point* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %60
  %71 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %72 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @sldns_buffer_free(i64 %73)
  %75 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 3
  %77 = load %struct.comm_point*, %struct.comm_point** %76, align 8
  %78 = bitcast %struct.comm_point* %77 to %struct.timeval*
  %79 = call i32 @free(%struct.timeval* %78)
  %80 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %81 = bitcast %struct.comm_point* %80 to %struct.timeval*
  %82 = call i32 @free(%struct.timeval* %81)
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

83:                                               ; preds = %60
  %84 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %85 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %84, i32 0, i32 26
  store i64 0, i64* %85, align 8
  %86 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %87 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %86, i32 0, i32 25
  store i64 0, i64* %87, align 8
  %88 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %89 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %90 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %89, i32 0, i32 24
  store %struct.comm_point* %88, %struct.comm_point** %90, align 8
  %91 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %92 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %91, i32 0, i32 23
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %95 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %94, i32 0, i32 23
  store i32 %93, i32* %95, align 4
  %96 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %97 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %96, i32 0, i32 22
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %100 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %99, i32 0, i32 22
  store i32 %98, i32* %100, align 8
  %101 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %102 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %101, i32 0, i32 21
  store i32* null, i32** %102, align 8
  %103 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %104 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %103, i32 0, i32 20
  store i64 0, i64* %104, align 8
  %105 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 19
  store i64 0, i64* %106, align 8
  %107 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %108 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %107, i32 0, i32 18
  store i64 0, i64* %108, align 8
  %109 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %110 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %109, i32 0, i32 17
  store i32* null, i32** %110, align 8
  %111 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %112 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %111, i32 0, i32 7
  store %struct.comm_point* null, %struct.comm_point** %112, align 8
  %113 = load i32, i32* @comm_tcp, align 4
  %114 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %115 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %114, i32 0, i32 16
  store i32 %113, i32* %115, align 8
  %116 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %117 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %119 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %118, i32 0, i32 15
  store i64 0, i64* %119, align 8
  %120 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %121 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %123 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %122, i32 0, i32 14
  store i64 0, i64* %123, align 8
  %124 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %125 = bitcast %struct.comm_point* %124 to %struct.timeval*
  %126 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %127 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store %struct.timeval* %125, %struct.timeval** %128, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %131 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %130, i32 0, i32 9
  store i32* %129, i32** %131, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %134 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %136 = icmp ne %struct.sldns_buffer* %135, null
  br i1 %136, label %137, label %176

137:                                              ; preds = %83
  %138 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %139 = call %struct.TYPE_7__* @tcp_req_info_create(%struct.sldns_buffer* %138)
  %140 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %141 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %140, i32 0, i32 6
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %143 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %142, i32 0, i32 6
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = icmp ne %struct.TYPE_7__* %144, null
  br i1 %145, label %165, label %146

146:                                              ; preds = %137
  %147 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %149 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @sldns_buffer_free(i64 %150)
  %152 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %153 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %152, i32 0, i32 4
  %154 = load %struct.comm_point*, %struct.comm_point** %153, align 8
  %155 = bitcast %struct.comm_point* %154 to %struct.timeval*
  %156 = call i32 @free(%struct.timeval* %155)
  %157 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %158 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %157, i32 0, i32 3
  %159 = load %struct.comm_point*, %struct.comm_point** %158, align 8
  %160 = bitcast %struct.comm_point* %159 to %struct.timeval*
  %161 = call i32 @free(%struct.timeval* %160)
  %162 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %163 = bitcast %struct.comm_point* %162 to %struct.timeval*
  %164 = call i32 @free(%struct.timeval* %163)
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

165:                                              ; preds = %137
  %166 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %167 = bitcast %struct.comm_point* %166 to %struct.timeval*
  %168 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %169 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %168, i32 0, i32 6
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store %struct.timeval* %167, %struct.timeval** %171, align 8
  %172 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %173 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  %174 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %175 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %165, %83
  %177 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %178 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %177, i32 0, i32 7
  %179 = load %struct.comm_point*, %struct.comm_point** %178, align 8
  %180 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %181 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %180, i32 0, i32 7
  store %struct.comm_point* %179, %struct.comm_point** %181, align 8
  %182 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %183 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %184 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %183, i32 0, i32 7
  store %struct.comm_point* %182, %struct.comm_point** %184, align 8
  %185 = load i16, i16* @UB_EV_PERSIST, align 2
  %186 = sext i16 %185 to i32
  %187 = load i16, i16* @UB_EV_READ, align 2
  %188 = sext i16 %187 to i32
  %189 = or i32 %186, %188
  %190 = load i16, i16* @UB_EV_TIMEOUT, align 2
  %191 = sext i16 %190 to i32
  %192 = or i32 %189, %191
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %15, align 2
  %194 = load %struct.comm_base*, %struct.comm_base** %8, align 8
  %195 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %200 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i16, i16* %15, align 2
  %203 = load i32, i32* @comm_point_tcp_handle_callback, align 4
  %204 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %205 = bitcast %struct.comm_point* %204 to %struct.timeval*
  %206 = call %struct.timeval* @ub_event_new(i32 %198, i32 %201, i16 signext %202, i32 %203, %struct.timeval* %205)
  %207 = bitcast %struct.timeval* %206 to %struct.comm_point*
  %208 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %209 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %208, i32 0, i32 3
  %210 = load %struct.comm_point*, %struct.comm_point** %209, align 8
  %211 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %210, i32 0, i32 3
  store %struct.comm_point* %207, %struct.comm_point** %211, align 8
  %212 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %213 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %212, i32 0, i32 3
  %214 = load %struct.comm_point*, %struct.comm_point** %213, align 8
  %215 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %214, i32 0, i32 3
  %216 = load %struct.comm_point*, %struct.comm_point** %215, align 8
  %217 = icmp eq %struct.comm_point* %216, null
  br i1 %217, label %218, label %246

218:                                              ; preds = %176
  %219 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %220 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %221 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %220, i32 0, i32 7
  %222 = load %struct.comm_point*, %struct.comm_point** %221, align 8
  %223 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %224 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %223, i32 0, i32 7
  store %struct.comm_point* %222, %struct.comm_point** %224, align 8
  %225 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %226 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %225, i32 0, i32 6
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = call i32 @tcp_req_info_delete(%struct.TYPE_7__* %227)
  %229 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %230 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @sldns_buffer_free(i64 %231)
  %233 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %234 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %233, i32 0, i32 4
  %235 = load %struct.comm_point*, %struct.comm_point** %234, align 8
  %236 = bitcast %struct.comm_point* %235 to %struct.timeval*
  %237 = call i32 @free(%struct.timeval* %236)
  %238 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %239 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %238, i32 0, i32 3
  %240 = load %struct.comm_point*, %struct.comm_point** %239, align 8
  %241 = bitcast %struct.comm_point* %240 to %struct.timeval*
  %242 = call i32 @free(%struct.timeval* %241)
  %243 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  %244 = bitcast %struct.comm_point* %243 to %struct.timeval*
  %245 = call i32 @free(%struct.timeval* %244)
  store %struct.comm_point* null, %struct.comm_point** %7, align 8
  br label %248

246:                                              ; preds = %176
  %247 = load %struct.comm_point*, %struct.comm_point** %14, align 8
  store %struct.comm_point* %247, %struct.comm_point** %7, align 8
  br label %248

248:                                              ; preds = %246, %218, %146, %70, %51, %31, %20
  %249 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  ret %struct.comm_point* %249
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.timeval*) #1

declare dso_local i64 @sldns_buffer_new(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sldns_buffer_free(i64) #1

declare dso_local %struct.TYPE_7__* @tcp_req_info_create(%struct.sldns_buffer*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.timeval* @ub_event_new(i32, i32, i16 signext, i32, %struct.timeval*) #1

declare dso_local i32 @tcp_req_info_delete(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
