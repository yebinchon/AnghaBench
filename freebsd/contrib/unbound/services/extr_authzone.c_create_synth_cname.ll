; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_create_synth_cname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_create_synth_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.packed_rrset_data*, i32, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i32, i64*, i64*, i64, i64*, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i64, i8*, i8* }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@rrset_trust_ans_noAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.regional*, %struct.auth_data*, %struct.auth_rrset*, i32, %struct.ub_packed_rrset_key**)* @create_synth_cname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_synth_cname(i32* %0, i64 %1, %struct.regional* %2, %struct.auth_data* %3, %struct.auth_rrset* %4, i32 %5, %struct.ub_packed_rrset_key** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.auth_data*, align 8
  %13 = alloca %struct.auth_rrset*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ub_packed_rrset_key**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.packed_rrset_data*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.regional* %2, %struct.regional** %11, align 8
  store %struct.auth_data* %3, %struct.auth_data** %12, align 8
  store %struct.auth_rrset* %4, %struct.auth_rrset** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ub_packed_rrset_key** %6, %struct.ub_packed_rrset_key*** %15, align 8
  %23 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %28 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

34:                                               ; preds = %7
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %36 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

44:                                               ; preds = %34
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %46 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %18, align 8
  %53 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %54 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %19, align 8
  %62 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %63 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @sldns_read_uint16(i32* %68)
  %70 = load i64, i64* %19, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

73:                                               ; preds = %44
  %74 = load i32*, i32** %18, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i64 @dname_valid(i32* %74, i64 %75)
  %77 = load i64, i64* %19, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

80:                                               ; preds = %73
  %81 = load i32*, i32** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %84 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %18, align 8
  %87 = load i64, i64* %19, align 8
  %88 = mul nuw i64 4, %24
  %89 = trunc i64 %88 to i32
  %90 = call i64 @synth_cname_buf(i32* %81, i64 %82, i32 %85, i32* %86, i64 %87, i32* %26, i32 %89)
  store i64 %90, i64* %20, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %94, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

95:                                               ; preds = %80
  %96 = load %struct.regional*, %struct.regional** %11, align 8
  %97 = call i64 @regional_alloc(%struct.regional* %96, i32 64)
  %98 = inttoptr i64 %97 to %struct.ub_packed_rrset_key*
  %99 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  store %struct.ub_packed_rrset_key* %98, %struct.ub_packed_rrset_key** %99, align 8
  %100 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %101 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %100, align 8
  %102 = icmp ne %struct.ub_packed_rrset_key* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

104:                                              ; preds = %95
  %105 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %106 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %105, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %106, i32 0, i32 0
  %108 = call i32 @memset(%struct.TYPE_6__* %107, i32 0, i32 24)
  %109 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %109, align 8
  %111 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %112 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %111, align 8
  %113 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %110, %struct.ub_packed_rrset_key** %114, align 8
  %115 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %118 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %117, align 8
  %119 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i8* @htons(i32 %121)
  %123 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %124 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %123, align 8
  %125 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  store i8* %122, i8** %126, align 8
  %127 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %128 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %127, align 8
  %129 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.regional*, %struct.regional** %11, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @regional_alloc_init(%struct.regional* %131, i32* %132, i64 %133)
  %135 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %136 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %135, align 8
  %137 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  %139 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %139, align 8
  %141 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

146:                                              ; preds = %104
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %149 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %148, align 8
  %150 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i64 %147, i64* %151, align 8
  %152 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %153 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %152, align 8
  %154 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %153, i32 0, i32 1
  %155 = call i32 @rrset_key_hash(%struct.TYPE_5__* %154)
  %156 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %157 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %156, align 8
  %158 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 8
  %160 = load %struct.regional*, %struct.regional** %11, align 8
  %161 = load i64, i64* %20, align 8
  %162 = add i64 80, %161
  %163 = trunc i64 %162 to i32
  %164 = call i64 @regional_alloc_zero(%struct.regional* %160, i32 %163)
  %165 = inttoptr i64 %164 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %165, %struct.packed_rrset_data** %21, align 8
  %166 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %167 = icmp ne %struct.packed_rrset_data* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %146
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

169:                                              ; preds = %146
  %170 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %171 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %15, align 8
  %172 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %171, align 8
  %173 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store %struct.packed_rrset_data* %170, %struct.packed_rrset_data** %174, align 8
  %175 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %176 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  %177 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %178 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %180 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* @rrset_trust_ans_noAA, align 4
  %182 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %183 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %185 = bitcast %struct.packed_rrset_data* %184 to i32*
  %186 = getelementptr inbounds i32, i32* %185, i64 56
  %187 = bitcast i32* %186 to i64*
  %188 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %189 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %188, i32 0, i32 1
  store i64* %187, i64** %189, align 8
  %190 = load i64, i64* %20, align 8
  %191 = add i64 %190, 4
  %192 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %193 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  store i64 %191, i64* %195, align 8
  %196 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %197 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %196)
  %198 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %199 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %202 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %201, i32 0, i32 4
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  store i64 %200, i64* %204, align 8
  %205 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %206 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %205, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %20, align 8
  %211 = call i32 @sldns_write_uint16(i64 %209, i64 %210)
  %212 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %21, align 8
  %213 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %212, i32 0, i32 2
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 4
  %218 = load i64, i64* %20, align 8
  %219 = call i32 @memmove(i64 %217, i32* %26, i64 %218)
  store i32 1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %220

220:                                              ; preds = %169, %168, %145, %103, %93, %79, %72, %43, %33
  %221 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %8, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sldns_read_uint16(i32*) #2

declare dso_local i64 @dname_valid(i32*, i64) #2

declare dso_local i64 @synth_cname_buf(i32*, i64, i32, i32*, i64, i32*, i32) #2

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32*, i64) #2

declare dso_local i32 @rrset_key_hash(%struct.TYPE_5__*) #2

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #2

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #2

declare dso_local i32 @sldns_write_uint16(i64, i64) #2

declare dso_local i32 @memmove(i64, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
