; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_udp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_udp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.comm_reply = type { i32, i32 }
%struct.outside_network = type { i64, i64, %struct.TYPE_6__*, i32, i32 (i32)*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pending = type { i32, %struct.TYPE_7__*, i32, i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.comm_point* }
%struct.comm_point.0 = type opaque
%struct.comm_reply.1 = type opaque
%struct.TYPE_5__ = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"answer cb\00", align 1
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"outnetudp got udp error %d\00", align 1
@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"outnetudp udp too short\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Incoming reply id = %4.4x\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Incoming reply addr =\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"lookup size is %d entries\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"received unwanted or unsolicited udp reply dropped.\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dropped message\00", align 1
@.str.8 = private unnamed_addr constant [106 x i8] c"unwanted reply total reached threshold (%u) you may be under attack. defensive action: clearing the cache\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"received udp reply.\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"udp message\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"received reply id,addr on wrong port. dropped.\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"outnet handle udp reply\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @outnet_udp_cb(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.outside_network*, align 8
  %11 = alloca %struct.pending, align 8
  %12 = alloca %struct.pending*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.outside_network*
  store %struct.outside_network* %14, %struct.outside_network** %10, align 8
  %15 = load i32, i32* @VERB_ALGO, align 4
  %16 = call i32 (i32, i8*, ...) @verbose(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NETEVENT_NOERROR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @VERB_QUERY, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, ...) @verbose(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 0, i32* %5, align 4
  br label %235

24:                                               ; preds = %4
  %25 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sldns_buffer_limit(i32 %27)
  %29 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @VERB_QUERY, align 4
  %33 = call i32 (i32, i8*, ...) @verbose(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %235

34:                                               ; preds = %24
  %35 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %36 = call i32 @log_assert(%struct.comm_reply* %35)
  %37 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sldns_buffer_begin(i32 %39)
  %41 = call i64 @LDNS_ID_WIRE(i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.pending, %struct.pending* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.pending, %struct.pending* %11, i32 0, i32 7
  %45 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %46 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %45, i32 0, i32 1
  %47 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %48 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %44, i32* %46, i32 %49)
  %51 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %52 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.pending, %struct.pending* %11, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @VERB_ALGO, align 4
  %56 = getelementptr inbounds %struct.pending, %struct.pending* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @verbose(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @VERB_ALGO, align 4
  %60 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %61 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %60, i32 0, i32 1
  %62 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %63 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @log_addr(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %61, i32 %64)
  %66 = load i32, i32* @VERB_ALGO, align 4
  %67 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %68 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i32, i8*, ...) @verbose(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %75 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i64 @rbtree_search(%struct.TYPE_6__* %76, %struct.pending* %11)
  %78 = inttoptr i64 %77 to %struct.pending*
  store %struct.pending* %78, %struct.pending** %12, align 8
  %79 = load %struct.pending*, %struct.pending** %12, align 8
  %80 = icmp ne %struct.pending* %79, null
  br i1 %80, label %127, label %81

81:                                               ; preds = %34
  %82 = load i32, i32* @VERB_QUERY, align 4
  %83 = call i32 (i32, i8*, ...) @verbose(i32 %82, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i32, i32* @VERB_ALGO, align 4
  %85 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %86 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @log_buf(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %90 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %94 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %81
  %98 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %99 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %103 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %97
  %107 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %108 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @log_warn(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %113 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %112, i32 0, i32 4
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = call i32 @fptr_whitelist_alloc_cleanup(i32 (i32)* %114)
  %116 = call i32 @fptr_ok(i32 %115)
  %117 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %118 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %117, i32 0, i32 4
  %119 = load i32 (i32)*, i32 (i32)** %118, align 8
  %120 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %121 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %119(i32 %122)
  %124 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %125 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %106, %97, %81
  store i32 0, i32* %5, align 4
  br label %235

127:                                              ; preds = %34
  %128 = load i32, i32* @VERB_ALGO, align 4
  %129 = call i32 (i32, i8*, ...) @verbose(i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i32, i32* @VERB_ALGO, align 4
  %131 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %132 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @log_buf(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %133)
  %135 = load %struct.pending*, %struct.pending** %12, align 8
  %136 = getelementptr inbounds %struct.pending, %struct.pending* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.comm_point*, %struct.comm_point** %138, align 8
  %140 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %141 = icmp ne %struct.comm_point* %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %127
  %143 = load i32, i32* @VERB_QUERY, align 4
  %144 = call i32 (i32, i8*, ...) @verbose(i32 %143, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %145 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %146 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %150 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %142
  %154 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %155 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %159 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %153
  %163 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %164 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @log_warn(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  %168 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %169 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %168, i32 0, i32 4
  %170 = load i32 (i32)*, i32 (i32)** %169, align 8
  %171 = call i32 @fptr_whitelist_alloc_cleanup(i32 (i32)* %170)
  %172 = call i32 @fptr_ok(i32 %171)
  %173 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %174 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %173, i32 0, i32 4
  %175 = load i32 (i32)*, i32 (i32)** %174, align 8
  %176 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %177 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 %175(i32 %178)
  %180 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %181 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %162, %153, %142
  store i32 0, i32* %5, align 4
  br label %235

183:                                              ; preds = %127
  %184 = load %struct.pending*, %struct.pending** %12, align 8
  %185 = getelementptr inbounds %struct.pending, %struct.pending* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @comm_timer_disable(i32 %186)
  %188 = load i32, i32* @VERB_ALGO, align 4
  %189 = call i32 (i32, i8*, ...) @verbose(i32 %188, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %190 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %191 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %190, i32 0, i32 2
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load %struct.pending*, %struct.pending** %12, align 8
  %194 = getelementptr inbounds %struct.pending, %struct.pending* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @rbtree_delete(%struct.TYPE_6__* %192, i32 %196)
  %198 = load %struct.pending*, %struct.pending** %12, align 8
  %199 = getelementptr inbounds %struct.pending, %struct.pending* %198, i32 0, i32 3
  %200 = load i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)*, i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)** %199, align 8
  %201 = icmp ne i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)* %200, null
  br i1 %201, label %202, label %225

202:                                              ; preds = %183
  %203 = load %struct.pending*, %struct.pending** %12, align 8
  %204 = getelementptr inbounds %struct.pending, %struct.pending* %203, i32 0, i32 3
  %205 = load i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)*, i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)** %204, align 8
  %206 = bitcast i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)* %205 to i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*
  %207 = call i32 @fptr_whitelist_pending_udp(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)* %206)
  %208 = call i32 @fptr_ok(i32 %207)
  %209 = load %struct.pending*, %struct.pending** %12, align 8
  %210 = getelementptr inbounds %struct.pending, %struct.pending* %209, i32 0, i32 3
  %211 = load i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)*, i32 (%struct.comm_point.0*, i32, i32, %struct.comm_reply.1*)** %210, align 8
  %212 = load %struct.pending*, %struct.pending** %12, align 8
  %213 = getelementptr inbounds %struct.pending, %struct.pending* %212, i32 0, i32 1
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %struct.comm_point*, %struct.comm_point** %215, align 8
  %217 = bitcast %struct.comm_point* %216 to %struct.comm_point.0*
  %218 = load %struct.pending*, %struct.pending** %12, align 8
  %219 = getelementptr inbounds %struct.pending, %struct.pending* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @NETEVENT_NOERROR, align 4
  %222 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %223 = bitcast %struct.comm_reply* %222 to %struct.comm_reply.1*
  %224 = call i32 %211(%struct.comm_point.0* %217, i32 %220, i32 %221, %struct.comm_reply.1* %223)
  br label %225

225:                                              ; preds = %202, %183
  %226 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %227 = load %struct.pending*, %struct.pending** %12, align 8
  %228 = getelementptr inbounds %struct.pending, %struct.pending* %227, i32 0, i32 1
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = call i32 @portcomm_loweruse(%struct.outside_network* %226, %struct.TYPE_7__* %229)
  %231 = load %struct.pending*, %struct.pending** %12, align 8
  %232 = call i32 @pending_delete(i32* null, %struct.pending* %231)
  %233 = load %struct.outside_network*, %struct.outside_network** %10, align 8
  %234 = call i32 @outnet_send_wait_udp(%struct.outside_network* %233)
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %225, %182, %126, %31, %20
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i32 @log_assert(%struct.comm_reply*) #1

declare dso_local i64 @LDNS_ID_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i64 @rbtree_search(%struct.TYPE_6__*, %struct.pending*) #1

declare dso_local i32 @log_buf(i32, i8*, i32) #1

declare dso_local i32 @log_warn(i8*, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_alloc_cleanup(i32 (i32)*) #1

declare dso_local i32 @comm_timer_disable(i32) #1

declare dso_local i32 @rbtree_delete(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fptr_whitelist_pending_udp(i32 (%struct.comm_point*, i32, i32, %struct.comm_reply*)*) #1

declare dso_local i32 @portcomm_loweruse(%struct.outside_network*, %struct.TYPE_7__*) #1

declare dso_local i32 @pending_delete(i32*, %struct.pending*) #1

declare dso_local i32 @outnet_send_wait_udp(%struct.outside_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
