; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_copy_cred_cache.c_copy_cred_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_copy_cred_cache.c_copy_cred_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_cred_cache_options = type { i64, i64, i64, i64, i32, i32 }
%struct.ctx = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@kcc_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KRB5_TC_MATCH_KEYTYPE = common dso_local global i32 0, align 4
@KRB5_TC_MATCH_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"unknown time \22%s\22\00", align 1
@KRB5_TC_MATCH_TIMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"getting default principal\00", align 1
@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"constructing krbtgt principal\00", align 1
@matchfunc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"copying cred cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_cred_cache(%struct.copy_cred_cache_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.copy_cred_cache_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctx, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.copy_cred_cache_options* %0, %struct.copy_cred_cache_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %17 = call i32 @memset(%struct.ctx* %13, i32 0, i32 32)
  %18 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %19 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load i32, i32* @kcc_context, align 4
  %24 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %25 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i64 @krb5_parse_name(i32 %23, i32 %26, i32* %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @kcc_context, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %36 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %33, i32 1, i64 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %42 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32, i32* @kcc_context, align 4
  %47 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %48 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @krb5_string_to_enctype(i32 %46, i32 %49, i32* %14)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* @kcc_context, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %57 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %54, i32 1, i64 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load i32, i32* @KRB5_TC_MATCH_KEYTYPE, align 4
  %62 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %14, align 4
  %66 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %60, %40
  %70 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %71 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* @kcc_context, align 4
  %76 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %77 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i32 @parse_ticket_flags(i32 %75, i64 %78, i32* %80)
  %82 = load i32, i32* @KRB5_TC_MATCH_FLAGS, align 4
  %83 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %74, %69
  %87 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %88 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %93 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @parse_time(i64 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %100 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %98, %91
  %104 = call i64 @time(i32* null)
  %105 = load i64, i64* %15, align 8
  %106 = add nsw i64 %104, %105
  %107 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  %110 = load i32, i32* @KRB5_TC_MATCH_TIMES, align 4
  %111 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %103, %86
  %115 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %116 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @kcc_context, align 4
  %121 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %122 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @krb5_set_fcache_version(i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* @kcc_context, align 4
  %130 = call i8* @krb5_cc_default_name(i32 %129)
  store i8* %130, i8** %8, align 8
  %131 = load i8**, i8*** %6, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %9, align 8
  br label %141

134:                                              ; preds = %125
  %135 = load i8**, i8*** %6, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %8, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %9, align 8
  br label %141

141:                                              ; preds = %134, %128
  %142 = load i32, i32* @kcc_context, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = call i64 @krb5_cc_resolve(i32 %142, i8* %143, i32* %10)
  store i64 %144, i64* %7, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = load i32, i32* @kcc_context, align 4
  %149 = load i64, i64* %7, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %148, i32 1, i64 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %147, %141
  %153 = load %struct.copy_cred_cache_options*, %struct.copy_cred_cache_options** %4, align 8
  %154 = getelementptr inbounds %struct.copy_cred_cache_options, %struct.copy_cred_cache_options* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %189

157:                                              ; preds = %152
  %158 = load i32, i32* @kcc_context, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i64 @krb5_cc_get_principal(i32 %158, i32 %159, i32* %16)
  store i64 %160, i64* %7, align 8
  %161 = load i64, i64* %7, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, i32* @kcc_context, align 4
  %165 = load i64, i64* %7, align 8
  %166 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %164, i32 1, i64 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %157
  %168 = load i32, i32* @kcc_context, align 4
  %169 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* @kcc_context, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @krb5_principal_get_realm(i32 %171, i32 %172)
  %174 = load i32, i32* @KRB5_TGS_NAME, align 4
  %175 = load i32, i32* @kcc_context, align 4
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @krb5_principal_get_realm(i32 %175, i32 %176)
  %178 = call i64 @krb5_make_principal(i32 %168, i32* %170, i32 %173, i32 %174, i32 %177, i32* null)
  store i64 %178, i64* %7, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %167
  %182 = load i32, i32* @kcc_context, align 4
  %183 = load i64, i64* %7, align 8
  %184 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %182, i32 1, i64 %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %181, %167
  %186 = load i32, i32* @kcc_context, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @krb5_free_principal(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %152
  %190 = load i32, i32* @kcc_context, align 4
  %191 = load i8*, i8** %9, align 8
  %192 = call i64 @krb5_cc_resolve(i32 %190, i8* %191, i32* %11)
  store i64 %192, i64* %7, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* @kcc_context, align 4
  %197 = load i64, i64* %7, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %196, i32 1, i64 %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %195, %189
  %201 = load i32, i32* @kcc_context, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @matchfunc, align 4
  %205 = call i64 @krb5_cc_copy_match_f(i32 %201, i32 %202, i32 %203, i32 %204, %struct.ctx* %13, i32* %12)
  store i64 %205, i64* %7, align 8
  %206 = load i64, i64* %7, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load i32, i32* @kcc_context, align 4
  %210 = load i64, i64* %7, align 8
  %211 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %209, i32 1, i64 %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %212

212:                                              ; preds = %208, %200
  %213 = load i32, i32* @kcc_context, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @krb5_cc_close(i32 %213, i32 %214)
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @kcc_context, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @krb5_cc_destroy(i32 %219, i32 %220)
  br label %226

222:                                              ; preds = %212
  %223 = load i32, i32* @kcc_context, align 4
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @krb5_cc_close(i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %218
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %227, 0
  %229 = zext i1 %228 to i32
  ret i32 %229
}

declare dso_local i32 @memset(%struct.ctx*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i32, i32*) #1

declare dso_local i32 @parse_ticket_flags(i32, i64, i32*) #1

declare dso_local i64 @parse_time(i64, i8*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @krb5_set_fcache_version(i32, i64) #1

declare dso_local i8* @krb5_cc_default_name(i32) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_cc_copy_match_f(i32, i32, i32, i32, %struct.ctx*, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
