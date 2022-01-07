; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_positive_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_validate_positive_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.val_env = type { i32 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i32, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.key_entry_key = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Positive response has inconsistent wildcard sigs:\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Positive wildcard response is insecure\00", align 1
@sec_status_secure = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"positive response was wildcard expansion and did not prove original data did not exist\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Successfully validated positive response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.val_env*, %struct.query_info*, %struct.reply_info*, %struct.key_entry_key*)* @validate_positive_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_positive_response(%struct.module_env* %0, %struct.val_env* %1, %struct.query_info* %2, %struct.reply_info* %3, %struct.key_entry_key* %4) #0 {
  %6 = alloca %struct.module_env*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.key_entry_key*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  %18 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %6, align 8
  store %struct.val_env* %1, %struct.val_env** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.reply_info* %3, %struct.reply_info** %9, align 8
  store %struct.key_entry_key* %4, %struct.key_entry_key** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  br label %19

19:                                               ; preds = %85, %5
  %20 = load i64, i64* %16, align 8
  %21 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %19
  %26 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %27 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 3
  %28 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %27, align 8
  %29 = load i64, i64* %16, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, i64 %29
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  store %struct.ub_packed_rrset_key* %31, %struct.ub_packed_rrset_key** %17, align 8
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %33 = call i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key* %32, i32** %11, i64* %12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @VERB_QUERY, align 4
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohs(i32 %49)
  %51 = call i32 @log_nametypeclass(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %45, i64 %50)
  %52 = load i8*, i8** @sec_status_bogus, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %204

56:                                               ; preds = %25
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %59
  %63 = load %struct.module_env*, %struct.module_env** %6, align 8
  %64 = getelementptr inbounds %struct.module_env, %struct.module_env* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.module_env*, %struct.module_env** %6, align 8
  %71 = getelementptr inbounds %struct.module_env, %struct.module_env* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.module_env*, %struct.module_env** %6, align 8
  %77 = getelementptr inbounds %struct.module_env, %struct.module_env* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.module_env*, %struct.module_env** %6, align 8
  %80 = getelementptr inbounds %struct.module_env, %struct.module_env* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rrset_cache_update_wildcard(i32 %72, %struct.ub_packed_rrset_key* %73, i32* %74, i64 %75, i32 %78, i32 %82)
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %69, %62, %59, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %16, align 8
  br label %19

88:                                               ; preds = %19
  %89 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %90 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %140, %88
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %95 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %98 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = icmp ult i64 %93, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %92
  %103 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %104 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %103, i32 0, i32 3
  %105 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %105, i64 %106
  %108 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %107, align 8
  store %struct.ub_packed_rrset_key* %108, %struct.ub_packed_rrset_key** %17, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %102
  %112 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %113 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ntohs(i32 %115)
  %117 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %121 = load %struct.query_info*, %struct.query_info** %8, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key* %120, %struct.query_info* %121, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 1, i32* %14, align 4
  br label %126

126:                                              ; preds = %125, %119
  br label %127

127:                                              ; preds = %126, %111, %102
  %128 = load i32*, i32** %11, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %132 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ntohs(i32 %134)
  %136 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 1, i32* %15, align 4
  br label %139

139:                                              ; preds = %138, %130, %127
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %16, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %16, align 8
  br label %92

143:                                              ; preds = %92
  %144 = load i32*, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %185

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %185, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load %struct.module_env*, %struct.module_env** %6, align 8
  %154 = load %struct.val_env*, %struct.val_env** %7, align 8
  %155 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %156 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %155, i32 0, i32 3
  %157 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %156, align 8
  %158 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %159 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %157, i64 %160
  %162 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %163 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.query_info*, %struct.query_info** %8, align 8
  %166 = load %struct.key_entry_key*, %struct.key_entry_key** %10, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @nsec3_prove_wildcard(%struct.module_env* %153, %struct.val_env* %154, %struct.ub_packed_rrset_key** %161, i64 %164, %struct.query_info* %165, %struct.key_entry_key* %166, i32* %167)
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @sec_status_insecure, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %152
  %173 = load i32, i32* @VERB_ALGO, align 4
  %174 = call i32 @verbose(i32 %173, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i32, i32* @sec_status_insecure, align 4
  %176 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %177 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  br label %204

178:                                              ; preds = %152
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* @sec_status_secure, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 1, i32* %14, align 4
  br label %183

183:                                              ; preds = %182, %178
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %149, %146, %143
  %186 = load i32*, i32** %11, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* @VERB_QUERY, align 4
  %193 = call i32 @verbose(i32 %192, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %194 = load i8*, i8** @sec_status_bogus, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %197 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  br label %204

198:                                              ; preds = %188, %185
  %199 = load i32, i32* @VERB_ALGO, align 4
  %200 = call i32 @verbose(i32 %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @sec_status_secure, align 4
  %202 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %203 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %198, %191, %172, %35
  ret void
}

declare dso_local i32 @val_rrset_wildcard(%struct.ub_packed_rrset_key*, i32**, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @rrset_cache_update_wildcard(i32, %struct.ub_packed_rrset_key*, i32*, i64, i32, i32) #1

declare dso_local i64 @val_nsec_proves_positive_wildcard(%struct.ub_packed_rrset_key*, %struct.query_info*, i32*) #1

declare dso_local i32 @nsec3_prove_wildcard(%struct.module_env*, %struct.val_env*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*, %struct.key_entry_key*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
