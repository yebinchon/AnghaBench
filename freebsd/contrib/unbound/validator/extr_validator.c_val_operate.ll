; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_operate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i8**, %struct.TYPE_8__*, %struct.TYPE_9__, i32, i64*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64* }
%struct.outbound_entry = type { i32 }
%struct.val_env = type { i32 }
%struct.val_qstate = type { i32, %struct.TYPE_9__ }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"validator[module %d] operate: extstate:%s event:%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"validator operate: query\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"validator operate: chased to\00", align 1
@module_event_new = common dso_local global i32 0, align 4
@module_event_pass = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"validator: pass to next module\00", align 1
@module_wait_module = common dso_local global i8* null, align 8
@module_event_moddone = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"validator: nextmodule returned\00", align 1
@sec_status_indeterminate = common dso_local global i32 0, align 4
@module_finished = common dso_local global i8* null, align 8
@LDNS_RR_CLASS_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot validate classANY: bogus\00", align 1
@sec_status_bogus = common dso_local global i32 0, align 4
@module_error = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"validator: malloc failure\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"validator: bad event %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_operate(%struct.module_qstate* %0, i32 %1, i32 %2, %struct.outbound_entry* %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.outbound_entry*, align 8
  %9 = alloca %struct.val_env*, align 8
  %10 = alloca %struct.val_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.outbound_entry* %3, %struct.outbound_entry** %8, align 8
  %11 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %12 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %11, i32 0, i32 5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.val_env*
  store %struct.val_env* %20, %struct.val_env** %9, align 8
  %21 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 4
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.val_qstate*
  store %struct.val_qstate* %28, %struct.val_qstate** %10, align 8
  %29 = load i32, i32* @VERB_QUERY, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strextstate(i8* %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @strmodulevent(i32 %39)
  %41 = call i32 (i32, i8*, ...) @verbose(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %38, i32 %40)
  %42 = load i32, i32* @VERB_QUERY, align 4
  %43 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %44 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %43, i32 0, i32 2
  %45 = call i32 @log_query_info(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %44)
  %46 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %47 = icmp ne %struct.val_qstate* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %4
  %49 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %50 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @VERB_QUERY, align 4
  %60 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %61 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %60, i32 0, i32 1
  %62 = call i32 @log_query_info(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %61)
  br label %63

63:                                               ; preds = %58, %48, %4
  %64 = load %struct.outbound_entry*, %struct.outbound_entry** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @module_event_new, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @module_event_pass, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %74 = icmp eq %struct.val_qstate* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72, %63
  %76 = load i32, i32* @VERB_ALGO, align 4
  %77 = call i32 (i32, i8*, ...) @verbose(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** @module_wait_module, align 8
  %79 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %80 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  br label %247

85:                                               ; preds = %72, %68
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @module_event_moddone, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %219

89:                                               ; preds = %85
  %90 = load i32, i32* @VERB_ALGO, align 4
  %91 = call i32 (i32, i8*, ...) @verbose(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %93 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %94 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %97 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @needs_validation(%struct.module_qstate* %92, i32 %95, %struct.TYPE_8__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %89
  %102 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* @sec_status_indeterminate, align 4
  %108 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %109 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %101
  %115 = load i8*, i8** @module_finished, align 8
  %116 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %117 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* %115, i8** %121, align 8
  br label %247

122:                                              ; preds = %89
  %123 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %124 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = call i64 @already_validated(%struct.TYPE_8__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** @module_finished, align 8
  %130 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %131 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %129, i8** %135, align 8
  br label %247

136:                                              ; preds = %122
  %137 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %138 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @LDNS_RR_CLASS_ANY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %136
  %144 = load i32, i32* @VERB_ALGO, align 4
  %145 = call i32 (i32, i8*, ...) @verbose(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %147 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = icmp ne %struct.TYPE_8__* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32, i32* @sec_status_bogus, align 4
  %152 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %153 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %151, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %143
  %159 = load i8*, i8** @module_finished, align 8
  %160 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %161 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  store i8* %159, i8** %165, align 8
  br label %247

166:                                              ; preds = %136
  %167 = load i8*, i8** @module_error, align 8
  %168 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %169 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %167, i8** %173, align 8
  %174 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %175 = icmp ne %struct.val_qstate* %174, null
  br i1 %175, label %192, label %176

176:                                              ; preds = %166
  %177 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call %struct.val_qstate* @val_new(%struct.module_qstate* %177, i32 %178)
  store %struct.val_qstate* %179, %struct.val_qstate** %10, align 8
  %180 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %181 = icmp ne %struct.val_qstate* %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %176
  %183 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i8*, i8** @module_error, align 8
  %185 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %186 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %185, i32 0, i32 0
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  br label %247

191:                                              ; preds = %176
  br label %213

192:                                              ; preds = %166
  %193 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %194 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %212, label %197

197:                                              ; preds = %192
  %198 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %199 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %200 = call i32 @val_new_getmsg(%struct.module_qstate* %198, %struct.val_qstate* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %197
  %203 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %204 = load i8*, i8** @module_error, align 8
  %205 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %206 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  store i8* %204, i8** %210, align 8
  br label %247

211:                                              ; preds = %197
  br label %212

212:                                              ; preds = %211, %192
  br label %213

213:                                              ; preds = %212, %191
  %214 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %215 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %216 = load %struct.val_env*, %struct.val_env** %9, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @val_handle(%struct.module_qstate* %214, %struct.val_qstate* %215, %struct.val_env* %216, i32 %217)
  br label %247

219:                                              ; preds = %85
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @module_event_pass, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = load i8*, i8** @module_error, align 8
  %225 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %226 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %225, i32 0, i32 0
  %227 = load i8**, i8*** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %224, i8** %230, align 8
  %231 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %232 = load %struct.val_qstate*, %struct.val_qstate** %10, align 8
  %233 = load %struct.val_env*, %struct.val_env** %9, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @val_handle(%struct.module_qstate* %231, %struct.val_qstate* %232, %struct.val_env* %233, i32 %234)
  br label %247

236:                                              ; preds = %219
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @strmodulevent(i32 %237)
  %239 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %238)
  %240 = load i8*, i8** @module_error, align 8
  %241 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %242 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %241, i32 0, i32 0
  %243 = load i8**, i8*** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  store i8* %240, i8** %246, align 8
  br label %247

247:                                              ; preds = %236, %223, %213, %202, %182, %158, %128, %114, %75
  ret void
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @strextstate(i8*) #1

declare dso_local i32 @strmodulevent(i32) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @needs_validation(%struct.module_qstate*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @already_validated(%struct.TYPE_8__*) #1

declare dso_local %struct.val_qstate* @val_new(%struct.module_qstate*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @val_new_getmsg(%struct.module_qstate*, %struct.val_qstate*) #1

declare dso_local i32 @val_handle(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
