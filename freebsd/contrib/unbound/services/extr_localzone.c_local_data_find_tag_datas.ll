; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_tag_datas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_data_find_tag_datas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i64, i32, i32* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64, i8*, i8*, i32 }
%struct.TYPE_3__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i64*, i32, i32**, i32**, i8* }
%struct.regional = type { i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c". %s\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_data_find_tag_datas(%struct.query_info* %0, %struct.config_strlist* %1, %struct.ub_packed_rrset_key* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.config_strlist*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.config_strlist*, align 8
  %11 = alloca [65536 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.packed_rrset_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32**, align 8
  store %struct.query_info* %0, %struct.query_info** %6, align 8
  store %struct.config_strlist* %1, %struct.config_strlist** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %22 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.config_strlist*, %struct.config_strlist** %7, align 8
  store %struct.config_strlist* %26, %struct.config_strlist** %10, align 8
  br label %27

27:                                               ; preds = %299, %4
  %28 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %29 = icmp ne %struct.config_strlist* %28, null
  br i1 %29, label %30, label %303

30:                                               ; preds = %27
  %31 = mul nuw i64 4, %23
  store i64 %31, i64* %14, align 8
  %32 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %33 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %34 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i8* %32, i32 65536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [65536 x i8], [65536 x i8]* %11, i64 0, i64 0
  %38 = call i32 @sldns_str2wire_rr_buf(i8* %37, i32* %25, i64* %14, i32* null, i32 3600, i32* null, i32 0, i32* null, i32 0)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %299

42:                                               ; preds = %30
  %43 = load i64, i64* %14, align 8
  %44 = icmp ult i64 %43, 11
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %299

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @sldns_wirerr_get_type(i32* %25, i64 %47, i32 1)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.query_info*, %struct.query_info** %6, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %299

59:                                               ; preds = %54, %46
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %131

65:                                               ; preds = %59
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %68 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %66, %struct.ub_packed_rrset_key** %69, align 8
  %70 = load %struct.query_info*, %struct.query_info** %6, align 8
  %71 = getelementptr inbounds %struct.query_info, %struct.query_info* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %74 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load %struct.query_info*, %struct.query_info** %6, align 8
  %77 = getelementptr inbounds %struct.query_info, %struct.query_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %80 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i8* @htons(i64 %82)
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %85 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = load %struct.query_info*, %struct.query_info** %6, align 8
  %88 = getelementptr inbounds %struct.query_info, %struct.query_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @htons(i64 %89)
  %91 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %92 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %95 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.regional*, %struct.regional** %9, align 8
  %98 = call i64 @regional_alloc_zero(%struct.regional* %97, i32 64)
  %99 = inttoptr i64 %98 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %99, %struct.packed_rrset_data** %16, align 8
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %101 = icmp ne %struct.packed_rrset_data* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %65
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %311

103:                                              ; preds = %65
  %104 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %105 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %106 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store %struct.packed_rrset_data* %104, %struct.packed_rrset_data** %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i8* @sldns_wirerr_get_ttl(i32* %25, i64 %108, i32 1)
  %110 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %111 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %113 = bitcast %struct.packed_rrset_data* %112 to i32*
  %114 = getelementptr inbounds i32, i32* %113, i64 40
  %115 = bitcast i32* %114 to i64*
  %116 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %117 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %116, i32 0, i32 0
  store i64* %115, i64** %117, align 8
  %118 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %119 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  %122 = bitcast i64* %121 to i32**
  %123 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %124 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %123, i32 0, i32 2
  store i32** %122, i32*** %124, align 8
  %125 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %126 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %125, i32 0, i32 2
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %130 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %129, i32 0, i32 3
  store i32** %128, i32*** %130, align 8
  br label %131

131:                                              ; preds = %103, %59
  %132 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %133 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %134, align 8
  store %struct.packed_rrset_data* %135, %struct.packed_rrset_data** %16, align 8
  %136 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %137 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %239

140:                                              ; preds = %131
  %141 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %142 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  store i64* %143, i64** %19, align 8
  %144 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %145 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %144, i32 0, i32 2
  %146 = load i32**, i32*** %145, align 8
  store i32** %146, i32*** %20, align 8
  %147 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %148 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %147, i32 0, i32 3
  %149 = load i32**, i32*** %148, align 8
  store i32** %149, i32*** %21, align 8
  %150 = load %struct.regional*, %struct.regional** %9, align 8
  %151 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %152 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = trunc i64 %156 to i32
  %158 = call i64 @regional_alloc_zero(%struct.regional* %150, i32 %157)
  %159 = inttoptr i64 %158 to i64*
  %160 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %161 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %160, i32 0, i32 0
  store i64* %159, i64** %161, align 8
  %162 = load %struct.regional*, %struct.regional** %9, align 8
  %163 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %164 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 8
  %169 = trunc i64 %168 to i32
  %170 = call i64 @regional_alloc_zero(%struct.regional* %162, i32 %169)
  %171 = inttoptr i64 %170 to i32**
  %172 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %173 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %172, i32 0, i32 2
  store i32** %171, i32*** %173, align 8
  %174 = load %struct.regional*, %struct.regional** %9, align 8
  %175 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %176 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 8
  %181 = trunc i64 %180 to i32
  %182 = call i64 @regional_alloc_zero(%struct.regional* %174, i32 %181)
  %183 = inttoptr i64 %182 to i32**
  %184 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %185 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %184, i32 0, i32 3
  store i32** %183, i32*** %185, align 8
  %186 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %187 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %200

190:                                              ; preds = %140
  %191 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %192 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %191, i32 0, i32 2
  %193 = load i32**, i32*** %192, align 8
  %194 = icmp ne i32** %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %197 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %196, i32 0, i32 3
  %198 = load i32**, i32*** %197, align 8
  %199 = icmp ne i32** %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %195, %190, %140
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %311

201:                                              ; preds = %195
  %202 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %203 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i64*, i64** %19, align 8
  %206 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %207 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @memmove(i64* %204, i64* %205, i32 %211)
  %213 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %214 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = bitcast i32** %215 to i64*
  %217 = load i32**, i32*** %20, align 8
  %218 = bitcast i32** %217 to i64*
  %219 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %220 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @memmove(i64* %216, i64* %218, i32 %224)
  %226 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %227 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %226, i32 0, i32 3
  %228 = load i32**, i32*** %227, align 8
  %229 = bitcast i32** %228 to i64*
  %230 = load i32**, i32*** %21, align 8
  %231 = bitcast i32** %230 to i64*
  %232 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %233 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = mul i64 %235, 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @memmove(i64* %229, i64* %231, i32 %237)
  br label %239

239:                                              ; preds = %201, %131
  %240 = load i64, i64* %14, align 8
  %241 = call i64 @sldns_wirerr_get_rdatalen(i32* %25, i64 %240, i32 1)
  %242 = add i64 %241, 2
  %243 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %244 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %247 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %245, i64 %249
  store i64 %242, i64* %250, align 8
  %251 = load i64, i64* %14, align 8
  %252 = call i8* @sldns_wirerr_get_ttl(i32* %25, i64 %251, i32 1)
  %253 = bitcast i8* %252 to i32*
  %254 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %255 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %254, i32 0, i32 3
  %256 = load i32**, i32*** %255, align 8
  %257 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %258 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %256, i64 %260
  store i32* %253, i32** %261, align 8
  %262 = load %struct.regional*, %struct.regional** %9, align 8
  %263 = load i64, i64* %14, align 8
  %264 = call i32 @sldns_wirerr_get_rdatawl(i32* %25, i64 %263, i32 1)
  %265 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %266 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %265, i32 0, i32 0
  %267 = load i64*, i64** %266, align 8
  %268 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %269 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %267, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = call i32* @regional_alloc_init(%struct.regional* %262, i32 %264, i64 %273)
  %275 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %276 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %275, i32 0, i32 2
  %277 = load i32**, i32*** %276, align 8
  %278 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %279 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %277, i64 %281
  store i32* %274, i32** %282, align 8
  %283 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %284 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %283, i32 0, i32 2
  %285 = load i32**, i32*** %284, align 8
  %286 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %287 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %285, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %239
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %311

294:                                              ; preds = %239
  %295 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %16, align 8
  %296 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %294, %58, %45, %41
  %300 = load %struct.config_strlist*, %struct.config_strlist** %10, align 8
  %301 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %300, i32 0, i32 1
  %302 = load %struct.config_strlist*, %struct.config_strlist** %301, align 8
  store %struct.config_strlist* %302, %struct.config_strlist** %10, align 8
  br label %27

303:                                              ; preds = %27
  %304 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %305 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  store i32 1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %311

310:                                              ; preds = %303
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %311

311:                                              ; preds = %310, %309, %293, %200, %102
  %312 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i32*, i64*, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i32) #2

declare dso_local i8* @htons(i64) #2

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #2

declare dso_local i8* @sldns_wirerr_get_ttl(i32*, i64, i32) #2

declare dso_local i32 @memmove(i64*, i64*, i32) #2

declare dso_local i64 @sldns_wirerr_get_rdatalen(i32*, i64, i32) #2

declare dso_local i32* @regional_alloc_init(%struct.regional*, i32, i64) #2

declare dso_local i32 @sldns_wirerr_get_rdatawl(i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
