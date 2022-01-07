; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_synth_aaaa_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_synth_aaaa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32, i64*, i32**, i64*, i32, i32, i64, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.packed_rrset_data*, i32, %struct.ub_packed_rrset_key* }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.regional = type { i32 }
%struct.dns64_env = type { i32, i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RR_COUNT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"no key\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_packed_rrset_key*, %struct.packed_rrset_data*, %struct.ub_packed_rrset_key*, %struct.packed_rrset_data**, %struct.regional*, %struct.dns64_env*)* @dns64_synth_aaaa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns64_synth_aaaa_data(%struct.ub_packed_rrset_key* %0, %struct.packed_rrset_data* %1, %struct.ub_packed_rrset_key* %2, %struct.packed_rrset_data** %3, %struct.regional* %4, %struct.dns64_env* %5) #0 {
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.packed_rrset_data**, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.dns64_env*, align 8
  %13 = alloca %struct.packed_rrset_data*, align 8
  %14 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %7, align 8
  store %struct.packed_rrset_data* %1, %struct.packed_rrset_data** %8, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %9, align 8
  store %struct.packed_rrset_data** %3, %struct.packed_rrset_data*** %10, align 8
  store %struct.regional* %4, %struct.regional** %11, align 8
  store %struct.dns64_env* %5, %struct.dns64_env** %12, align 8
  %15 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %16 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RR_COUNT_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %10, align 8
  store %struct.packed_rrset_data* null, %struct.packed_rrset_data** %21, align 8
  br label %251

22:                                               ; preds = %6
  %23 = load %struct.regional*, %struct.regional** %11, align 8
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 42
  %29 = add i64 56, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.packed_rrset_data* @regional_alloc(%struct.regional* %23, i32 %30)
  %32 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %10, align 8
  store %struct.packed_rrset_data* %31, %struct.packed_rrset_data** %32, align 8
  store %struct.packed_rrset_data* %31, %struct.packed_rrset_data** %13, align 8
  %33 = icmp ne %struct.packed_rrset_data* %31, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %251

36:                                               ; preds = %22
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %38 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %46 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %48 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %50 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %55 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %58 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %60 = bitcast %struct.packed_rrset_data* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 56
  %62 = bitcast i32* %61 to i64*
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %64 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %63, i32 0, i32 1
  store i64* %62, i64** %64, align 8
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %69 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  %73 = bitcast i64* %72 to i32**
  %74 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %75 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %74, i32 0, i32 2
  store i32** %73, i32*** %75, align 8
  %76 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %77 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %80 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %78, i64 %82
  %84 = bitcast i32** %83 to i64*
  %85 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %86 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %85, i32 0, i32 3
  store i64* %84, i64** %86, align 8
  store i64 0, i64* %14, align 8
  br label %87

87:                                               ; preds = %196, %36
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %90 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %88, %92
  br i1 %93, label %94, label %199

94:                                               ; preds = %87
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 6
  br i1 %101, label %122, label %102

102:                                              ; preds = %94
  %103 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %104 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %102
  %113 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %114 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %113, i32 0, i32 2
  %115 = load i32**, i32*** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 4
  br i1 %121, label %122, label %124

122:                                              ; preds = %112, %102, %94
  %123 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %10, align 8
  store %struct.packed_rrset_data* null, %struct.packed_rrset_data** %123, align 8
  br label %251

124:                                              ; preds = %112
  %125 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %126 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 18, i64* %129, align 8
  %130 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %131 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %134 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  %138 = bitcast i64* %137 to i32*
  %139 = load i64, i64* %14, align 8
  %140 = mul i64 18, %139
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %143 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %142, i32 0, i32 2
  %144 = load i32**, i32*** %143, align 8
  %145 = load i64, i64* %14, align 8
  %146 = getelementptr inbounds i32*, i32** %144, i64 %145
  store i32* %141, i32** %146, align 8
  %147 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %148 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %147, i32 0, i32 2
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %155 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %154, i32 0, i32 2
  %156 = load i32**, i32*** %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds i32*, i32** %156, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 16, i32* %160, align 4
  %161 = load %struct.dns64_env*, %struct.dns64_env** %12, align 8
  %162 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %161, i32 0, i32 1
  %163 = bitcast i32* %162 to %struct.sockaddr_in6*
  %164 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.dns64_env*, %struct.dns64_env** %12, align 8
  %168 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %171 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %170, i32 0, i32 2
  %172 = load i32**, i32*** %171, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %178 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %177, i32 0, i32 2
  %179 = load i32**, i32*** %178, align 8
  %180 = load i64, i64* %14, align 8
  %181 = getelementptr inbounds i32*, i32** %179, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = call i32 @synthesize_aaaa(i32 %166, i32 %169, i32* %176, i32* %183)
  %185 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %186 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* %14, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %192 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %191, i32 0, i32 3
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* %14, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  store i64 %190, i64* %195, align 8
  br label %196

196:                                              ; preds = %124
  %197 = load i64, i64* %14, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %14, align 8
  br label %87

199:                                              ; preds = %87
  %200 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %201 = icmp ne %struct.ub_packed_rrset_key* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = call i32 @log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %10, align 8
  store %struct.packed_rrset_data* null, %struct.packed_rrset_data** %204, align 8
  br label %251

205:                                              ; preds = %199
  %206 = load %struct.regional*, %struct.regional** %11, align 8
  %207 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %208 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %212 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @regional_alloc_init(%struct.regional* %206, i32* %210, i32 %214)
  %216 = inttoptr i64 %215 to i32*
  %217 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %218 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i32* %216, i32** %219, align 8
  %220 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %221 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %205
  %226 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %227 = load %struct.packed_rrset_data**, %struct.packed_rrset_data*** %10, align 8
  store %struct.packed_rrset_data* null, %struct.packed_rrset_data** %227, align 8
  br label %251

228:                                              ; preds = %205
  %229 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %230 = call i32 @htons(i32 %229)
  %231 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %232 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 8
  %234 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %235 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %234, i32 0, i32 0
  %236 = call i32 @memset(%struct.TYPE_6__* %235, i32 0, i32 24)
  %237 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %238 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %239 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %237, %struct.ub_packed_rrset_key** %240, align 8
  %241 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %242 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %241, i32 0, i32 1
  %243 = call i32 @rrset_key_hash(%struct.TYPE_5__* %242)
  %244 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %245 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 8
  %247 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %13, align 8
  %248 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %249 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  store %struct.packed_rrset_data* %247, %struct.packed_rrset_data** %250, align 8
  br label %251

251:                                              ; preds = %228, %225, %202, %122, %34, %20
  ret void
}

declare dso_local %struct.packed_rrset_data* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @synthesize_aaaa(i32, i32, i32*, i32*) #1

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
