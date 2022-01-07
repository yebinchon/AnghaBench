; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_error_response_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_error_response_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.reply_info = type { i64, i32, i32, i64, i32, i64 }
%struct.msgreply_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@NORR_TTL = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error response for prefetch in cache\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@BIT_QR = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@sec_status_indeterminate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"store error response in message cache\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, i32, i32)* @error_response_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_response_cache(%struct.module_qstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reply_info, align 8
  %9 = alloca %struct.msgreply_entry*, align 8
  %10 = alloca %struct.reply_info*, align 8
  %11 = alloca %struct.msgreply_entry*, align 8
  %12 = alloca %struct.reply_info*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %246, label %17

17:                                               ; preds = %3
  %18 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NORR_TTL, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32, i32* @VERB_ALGO, align 4
  %25 = call i32 @verbose(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %27 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %30 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %29, i32 0, i32 2
  %31 = load i64, i64* @NORR_TTL, align 8
  %32 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @dns_cache_prefetch_adjust(%struct.TYPE_10__* %28, %struct.TYPE_11__* %30, i64 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @error_response(%struct.module_qstate* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %251

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %45 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %148

52:                                               ; preds = %43
  %53 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %54 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %65 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %73 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %76 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.TYPE_10__* %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %74, i64 0, i64 %81)
  store %struct.msgreply_entry* %82, %struct.msgreply_entry** %9, align 8
  %83 = icmp ne %struct.msgreply_entry* %82, null
  br i1 %83, label %84, label %147

84:                                               ; preds = %52
  %85 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %86 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %138

93:                                               ; preds = %84
  %94 = load %struct.msgreply_entry*, %struct.msgreply_entry** %9, align 8
  %95 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.reply_info*
  store %struct.reply_info* %98, %struct.reply_info** %10, align 8
  %99 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %100 = icmp ne %struct.reply_info* %99, null
  br i1 %100, label %101, label %137

101:                                              ; preds = %93
  %102 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %109 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %108, i32 0, i32 3
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %107, %114
  %116 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %117 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %101
  %121 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %122 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %128 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %126, %133
  %135 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %136 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %120, %101, %93
  br label %138

138:                                              ; preds = %137, %84
  %139 = load %struct.msgreply_entry*, %struct.msgreply_entry** %9, align 8
  %140 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = call i32 @lock_rw_unlock(i32* %141)
  %143 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @error_response(%struct.module_qstate* %143, i32 %144, i32 %145)
  store i32 %146, i32* %4, align 4
  br label %251

147:                                              ; preds = %52
  br label %213

148:                                              ; preds = %43
  %149 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %150 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %149, i32 0, i32 3
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %153 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %157 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %161 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %165 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %169 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %172 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %171, i32 0, i32 3
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %175, align 8
  %177 = call %struct.msgreply_entry* @msg_cache_lookup(%struct.TYPE_10__* %151, i32 %155, i32 %159, i32 %163, i32 %167, i32 %170, i64 %176, i64 0)
  store %struct.msgreply_entry* %177, %struct.msgreply_entry** %11, align 8
  %178 = icmp ne %struct.msgreply_entry* %177, null
  br i1 %178, label %179, label %212

179:                                              ; preds = %148
  %180 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %181 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.reply_info*
  store %struct.reply_info* %184, %struct.reply_info** %12, align 8
  %185 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %186 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @FLAGS_GET_RCODE(i64 %187)
  %189 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %179
  %192 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %193 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @FLAGS_GET_RCODE(i64 %194)
  %196 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %191, %179
  %199 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %200 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = call i32 @lock_rw_unlock(i32* %201)
  %203 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @error_response(%struct.module_qstate* %203, i32 %204, i32 %205)
  store i32 %206, i32* %4, align 4
  br label %251

207:                                              ; preds = %191
  %208 = load %struct.msgreply_entry*, %struct.msgreply_entry** %11, align 8
  %209 = getelementptr inbounds %struct.msgreply_entry, %struct.msgreply_entry* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = call i32 @lock_rw_unlock(i32* %210)
  br label %212

212:                                              ; preds = %207, %148
  br label %213

213:                                              ; preds = %212, %147
  %214 = call i32 @memset(%struct.reply_info* %8, i32 0, i32 40)
  %215 = load i32, i32* @BIT_QR, align 4
  %216 = load i32, i32* @BIT_RA, align 4
  %217 = or i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 5
  store i64 %218, i64* %219, align 8
  %220 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @FLAGS_SET_RCODE(i64 %221, i32 %222)
  %224 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 1
  store i32 1, i32* %224, align 8
  %225 = load i64, i64* @NORR_TTL, align 8
  %226 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 3
  store i64 %225, i64* %226, align 8
  %227 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @PREFETCH_TTL_CALC(i64 %228)
  %230 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 4
  store i32 %229, i32* %230, align 8
  %231 = load i64, i64* @NORR_TTL, align 8
  %232 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 0
  store i64 %231, i64* %232, align 8
  %233 = load i32, i32* @sec_status_indeterminate, align 4
  %234 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 2
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* @VERB_ALGO, align 4
  %236 = call i32 @verbose(i32 %235, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %237 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %238 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %237, i32 0, i32 3
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %241 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %240, i32 0, i32 2
  %242 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %243 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @iter_dns_store(%struct.TYPE_10__* %239, %struct.TYPE_11__* %241, %struct.reply_info* %8, i32 0, i32 0, i32 0, i32* null, i32 %244)
  br label %246

246:                                              ; preds = %213, %3
  %247 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @error_response(%struct.module_qstate* %247, i32 %248, i32 %249)
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %246, %198, %138, %37
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @dns_cache_prefetch_adjust(%struct.TYPE_10__*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local %struct.msgreply_entry* @msg_cache_lookup(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i64) #1

declare dso_local i32 @memset(%struct.reply_info*, i32, i32) #1

declare dso_local i32 @FLAGS_SET_RCODE(i64, i32) #1

declare dso_local i32 @PREFETCH_TTL_CALC(i64) #1

declare dso_local i32 @iter_dns_store(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.reply_info*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
