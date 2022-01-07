; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_do_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_mesh_do_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_state = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.reply_info = type { i64 }
%struct.mesh_cb = type { i32, i32, i32 (i32, i32, i32, i64, i8*, i32)*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32* }

@sec_status_secure = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i64 0, align 8
@sec_status_secure_sentinel_fail = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i64 0, align 8
@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i64 0, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_state*, i32, %struct.reply_info*, %struct.mesh_cb*)* @mesh_do_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_do_callback(%struct.mesh_state* %0, i32 %1, %struct.reply_info* %2, %struct.mesh_cb* %3) #0 {
  %5 = alloca %struct.mesh_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reply_info*, align 8
  %8 = alloca %struct.mesh_cb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mesh_state* %0, %struct.mesh_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reply_info* %2, %struct.reply_info** %7, align 8
  store %struct.mesh_cb* %3, %struct.mesh_cb** %8, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %14 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %18 = icmp ne %struct.reply_info* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @sec_status_secure, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %27

26:                                               ; preds = %19, %4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %29 = icmp ne %struct.reply_info* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %30, %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @sec_status_bogus, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @sec_status_secure_sentinel_fail, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %39
  %52 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %53 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %52, i32 0, i32 0
  %54 = call i8* @errinf_to_str_bogus(%struct.TYPE_13__* %53)
  store i8* %54, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %45, %36
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %135

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %68 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %72 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %75 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %74, i32 0, i32 0
  %76 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %79 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %78, i32 0, i32 3
  %80 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %81 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @inplace_cb_reply_servfail_call(%struct.TYPE_12__* %70, i32* %73, %struct.TYPE_13__* %75, %struct.reply_info* %76, i32 %77, %struct.TYPE_11__* %79, i32* null, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %66
  %87 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %88 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %86, %66
  br label %116

91:                                               ; preds = %62
  %92 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %93 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %97 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %100 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %99, i32 0, i32 0
  %101 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %104 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %103, i32 0, i32 3
  %105 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %106 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @inplace_cb_reply_call(%struct.TYPE_12__* %95, i32* %98, %struct.TYPE_13__* %100, %struct.reply_info* %101, i32 %102, %struct.TYPE_11__* %104, i32* null, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %91
  %112 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %113 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %111, %91
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %118 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %117, i32 0, i32 2
  %119 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %118, align 8
  %120 = call i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32, i64, i8*, i32)* %119)
  %121 = call i32 @fptr_ok(i32 %120)
  %122 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %123 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %122, i32 0, i32 2
  %124 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %123, align 8
  %125 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %126 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %130 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* @sec_status_unchecked, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 %124(i32 %127, i32 %128, i32 %131, i64 %132, i8* null, i32 %133)
  br label %253

135:                                              ; preds = %59
  %136 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %137 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %12, align 8
  %140 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %141 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @sldns_buffer_clear(i32 %142)
  %144 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %145 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %146 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 8
  %148 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %149 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %150 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %153 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @EDNS_DO, align 4
  %156 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %157 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %155
  store i32 %160, i32* %158, align 8
  %161 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %162 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %166 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %169 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %168, i32 0, i32 0
  %170 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %171 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %172 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %173 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %172, i32 0, i32 3
  %174 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %175 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @inplace_cb_reply_call(%struct.TYPE_12__* %164, i32* %167, %struct.TYPE_13__* %169, %struct.reply_info* %170, i32 %171, %struct.TYPE_11__* %173, i32* null, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %212

180:                                              ; preds = %135
  %181 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %182 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %185 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %186 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %189 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %192 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %195 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %202 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %201, i32 0, i32 3
  %203 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %204 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @EDNS_DO, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @reply_info_answer_encode(i32* %183, %struct.reply_info* %184, i32 %187, i32 %190, i32 %193, i32 0, i32 1, i32 %199, i64 %200, %struct.TYPE_11__* %202, i32 %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %230, label %212

212:                                              ; preds = %180, %135
  %213 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %214 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %213, i32 0, i32 2
  %215 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %214, align 8
  %216 = call i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32, i64, i8*, i32)* %215)
  %217 = call i32 @fptr_ok(i32 %216)
  %218 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %219 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %218, i32 0, i32 2
  %220 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %219, align 8
  %221 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %222 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %225 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %226 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i64, i64* @sec_status_unchecked, align 8
  %229 = call i32 %220(i32 %223, i32 %224, i32 %227, i64 %228, i8* null, i32 0)
  br label %252

230:                                              ; preds = %180
  %231 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %232 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %231, i32 0, i32 2
  %233 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %232, align 8
  %234 = call i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32, i64, i8*, i32)* %233)
  %235 = call i32 @fptr_ok(i32 %234)
  %236 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %237 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %236, i32 0, i32 2
  %238 = load i32 (i32, i32, i32, i64, i8*, i32)*, i32 (i32, i32, i32, i64, i8*, i32)** %237, align 8
  %239 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %240 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %243 = load %struct.mesh_cb*, %struct.mesh_cb** %8, align 8
  %244 = getelementptr inbounds %struct.mesh_cb, %struct.mesh_cb* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %247 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 %238(i32 %241, i32 %242, i32 %245, i64 %248, i8* %249, i32 %250)
  br label %252

252:                                              ; preds = %230, %212
  br label %253

253:                                              ; preds = %252, %116
  %254 = load i8*, i8** %10, align 8
  %255 = call i32 @free(i8* %254)
  %256 = load %struct.mesh_state*, %struct.mesh_state** %5, align 8
  %257 = getelementptr inbounds %struct.mesh_state, %struct.mesh_state* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %262, align 4
  ret void
}

declare dso_local i8* @errinf_to_str_bogus(%struct.TYPE_13__*) #1

declare dso_local i32 @inplace_cb_reply_servfail_call(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, %struct.reply_info*, i32, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @inplace_cb_reply_call(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, %struct.reply_info*, i32, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_mesh_cb(i32 (i32, i32, i32, i64, i8*, i32)*) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @reply_info_answer_encode(i32*, %struct.reply_info*, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
