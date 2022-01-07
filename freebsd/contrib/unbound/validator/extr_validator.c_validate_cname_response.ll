; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_cname_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_cname_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.val_env = type { i32 }
%struct.query_info = type { i64 }
%struct.reply_info = type { i64, i32, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.key_entry_key = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cname response has inconsistent wildcard sigs:\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot validate a wildcarded DNAME:\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"wildcard CNAME response is insecure\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"CNAME response was wildcard expansion and did not prove original data did not exist\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Successfully validated CNAME response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_cname_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_cname_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.reply_info* %3, %struct.reply_info** %9, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %18

18:                                               ; preds = %103, %5
  %19 = load i64, i64* %15, align 8
  %20 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %106

24:                                               ; preds = %18
  %25 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 3
  %27 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  %28 = load i64, i64* %15, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, i64 %28
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  store %struct.ub_packed_rrset_key* %30, %struct.ub_packed_rrset_key** %16, align 8
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %32 = call i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key* %31, i32** %11, i64* %12)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @VERB_QUERY, align 4
  %36 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %37 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohs(i32 %43)
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ntohs(i32 %48)
  %50 = call i32 @log_nametypeclass(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %44, i64 %49)
  %51 = load i8*, i8** @sec_status_bogus, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %54 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %222

55:                                               ; preds = %24
  %56 = load %struct.query_info*, %struct.query_info** %8, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ntohs(i32 %65)
  %67 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %61
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32, i32* @VERB_QUERY, align 4
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %79 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  %83 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %84 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @ntohs(i32 %86)
  %88 = call i32 @log_nametypeclass(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %82, i64 %87)
  %89 = load i8*, i8** @sec_status_bogus, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %92 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %222

93:                                               ; preds = %69, %61, %55
  %94 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %95 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @ntohs(i32 %97)
  %99 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %106

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %15, align 8
  br label %18

106:                                              ; preds = %101, %18
  %107 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %108 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %158, %106
  %111 = load i64, i64* %15, align 8
  %112 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %113 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %116 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = icmp ult i64 %111, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %110
  %121 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %122 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %121, i32 0, i32 3
  %123 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %123, i64 %124
  %126 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %125, align 8
  store %struct.ub_packed_rrset_key* %126, %struct.ub_packed_rrset_key** %16, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %145

129:                                              ; preds = %120
  %130 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %131 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @ntohs(i32 %133)
  %135 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %139 = load %struct.query_info*, %struct.query_info** %8, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key* %138, %struct.query_info* %139, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %143, %137
  br label %145

145:                                              ; preds = %144, %129, %120
  %146 = load i32*, i32** %11, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %150 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  br label %157

157:                                              ; preds = %156, %148, %145
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %15, align 8
  br label %110

161:                                              ; preds = %110
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %203, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %203

170:                                              ; preds = %167
  %171 = load %struct.module_env*, %struct.module_env** %6, align 8
  %172 = load %struct.val_env*, %struct.val_env** %7, align 8
  %173 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %174 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %173, i32 0, i32 3
  %175 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %174, align 8
  %176 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %177 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %175, i64 %178
  %180 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %181 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.query_info*, %struct.query_info** %8, align 8
  %184 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @nsec3_prove_wildcard(%struct.module_env* %171, %struct.val_env* %172, %struct.ub_packed_rrset_key** %179, i64 %182, %struct.query_info* %183, %struct.key_entry_key* %184, i32* %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @sec_status_insecure, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %170
  %191 = load i32, i32* @VERB_ALGO, align 4
  %192 = call i32 @verbose(i32 %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %193 = load i32, i32* @sec_status_insecure, align 4
  %194 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %195 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  br label %222

196:                                              ; preds = %170
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* @sec_status_secure, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 1, i32* %13, align 4
  br label %201

201:                                              ; preds = %200, %196
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %167, %164, %161
  %204 = load i32*, i32** %11, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %216

206:                                              ; preds = %203
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* @VERB_QUERY, align 4
  %211 = call i32 @verbose(i32 %210, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i8*, i8** @sec_status_bogus, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %215 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  br label %222

216:                                              ; preds = %206, %203
  %217 = load i32, i32* @VERB_ALGO, align 4
  %218 = call i32 @verbose(i32 %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i32, i32* @sec_status_secure, align 4
  %220 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %221 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %216, %209, %190, %72, %34
  ret void
}

declare dso_local i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key*, %struct.query_info*, i32*) #1

declare dso_local i32 @nsec3_prove_wildcard(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
