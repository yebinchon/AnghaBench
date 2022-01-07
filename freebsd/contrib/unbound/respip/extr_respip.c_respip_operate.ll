; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_operate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32, %struct.TYPE_5__, %struct.respip_qstate** }
%struct.TYPE_4__ = type { %struct.reply_info* }
%struct.reply_info = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.respip_qstate = type { i64 }
%struct.outbound_entry = type { i32 }
%struct.respip_action_info = type { i64, i64, i32* }
%struct.ub_packed_rrset_key = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"respip operate: query\00", align 1
@module_event_new = common dso_local global i32 0, align 4
@module_event_pass = common dso_local global i32 0, align 4
@RESPIP_INIT = common dso_local global i64 0, align 8
@RESPIP_SUBQUERY_FINISHED = common dso_local global i64 0, align 8
@module_finished = common dso_local global i8* null, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"respip: pass to next module\00", align 1
@module_wait_module = common dso_local global i32 0, align 4
@module_event_moddone = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@respip_none = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@respip_deny = common dso_local global i64 0, align 8
@respip_inform_deny = common dso_local global i64 0, align 8
@module_wait_subquery = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @respip_operate(%struct.module_qstate* %0, i32 %1, i32 %2, %struct.outbound_entry* %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.outbound_entry*, align 8
  %9 = alloca %struct.respip_qstate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.respip_action_info, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.outbound_entry* %3, %struct.outbound_entry** %8, align 8
  %14 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %15 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %14, i32 0, i32 8
  %16 = load %struct.respip_qstate**, %struct.respip_qstate*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.respip_qstate*, %struct.respip_qstate** %16, i64 %18
  %20 = load %struct.respip_qstate*, %struct.respip_qstate** %19, align 8
  store %struct.respip_qstate* %20, %struct.respip_qstate** %9, align 8
  %21 = load i32, i32* @VERB_QUERY, align 4
  %22 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %23 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %22, i32 0, i32 7
  %24 = call i32 @log_query_info(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %23)
  %25 = load %struct.outbound_entry*, %struct.outbound_entry** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @module_event_new, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @module_event_pass, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %29, %4
  %34 = load %struct.respip_qstate*, %struct.respip_qstate** %9, align 8
  %35 = icmp ne %struct.respip_qstate* %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %38 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.respip_qstate* @regional_alloc_zero(i32 %39, i32 8)
  store %struct.respip_qstate* %40, %struct.respip_qstate** %9, align 8
  %41 = load %struct.respip_qstate*, %struct.respip_qstate** %9, align 8
  %42 = icmp ne %struct.respip_qstate* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %222

44:                                               ; preds = %36
  %45 = load i64, i64* @RESPIP_INIT, align 8
  %46 = load %struct.respip_qstate*, %struct.respip_qstate** %9, align 8
  %47 = getelementptr inbounds %struct.respip_qstate, %struct.respip_qstate* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.respip_qstate*, %struct.respip_qstate** %9, align 8
  %49 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %50 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %49, i32 0, i32 8
  %51 = load %struct.respip_qstate**, %struct.respip_qstate*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.respip_qstate*, %struct.respip_qstate** %51, i64 %53
  store %struct.respip_qstate* %48, %struct.respip_qstate** %54, align 8
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.respip_qstate*, %struct.respip_qstate** %9, align 8
  %57 = getelementptr inbounds %struct.respip_qstate, %struct.respip_qstate* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RESPIP_SUBQUERY_FINISHED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** @module_finished, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %65 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %228

70:                                               ; preds = %55
  %71 = load i32, i32* @VERB_ALGO, align 4
  %72 = call i32 @verbose(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @module_wait_module, align 4
  %74 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %221

80:                                               ; preds = %29
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @module_event_moddone, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %211

84:                                               ; preds = %80
  %85 = load i8*, i8** @module_finished, align 8
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %88 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %107, label %93

93:                                               ; preds = %84
  %94 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %95 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %102 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %203

107:                                              ; preds = %100, %93, %84
  %108 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %109 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %112, label %203

112:                                              ; preds = %107
  %113 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %114 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.reply_info*, %struct.reply_info** %116, align 8
  %118 = icmp ne %struct.reply_info* %117, null
  br i1 %118, label %119, label %203

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 0
  %121 = load i64, i64* @respip_none, align 8
  store i64 %121, i64* %120, align 8
  %122 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 2
  store i32* null, i32** %123, align 8
  %124 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %125 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.reply_info*, %struct.reply_info** %127, align 8
  store %struct.reply_info* %128, %struct.reply_info** %12, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %13, align 8
  %129 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %130 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %129, i32 0, i32 7
  %131 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %132 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %135 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.reply_info*, %struct.reply_info** %137, align 8
  %139 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %140 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @respip_rewrite_reply(%struct.TYPE_5__* %130, i32 %133, %struct.reply_info* %138, %struct.reply_info** %12, %struct.respip_action_info* %11, %struct.ub_packed_rrset_key** %13, i32 0, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %119
  br label %222

145:                                              ; preds = %119
  %146 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @respip_none, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %152 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32* @regional_alloc_init(i32 %153, %struct.respip_action_info* %11, i32 24)
  %155 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %156 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %155, i32 0, i32 4
  store i32* %154, i32** %156, align 8
  %157 = icmp ne i32* %154, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %222

160:                                              ; preds = %150
  br label %164

161:                                              ; preds = %145
  %162 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %163 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %162, i32 0, i32 4
  store i32* null, i32** %163, align 8
  br label %164

164:                                              ; preds = %161, %160
  %165 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %166 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %167 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %166, i32 0, i32 2
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.reply_info*, %struct.reply_info** %169, align 8
  %171 = icmp eq %struct.reply_info* %165, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @respip_deny, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %11, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @respip_inform_deny, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177, %172
  %183 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %184 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %183, i32 0, i32 1
  store i32 1, i32* %184, align 8
  br label %197

185:                                              ; preds = %177, %164
  %186 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %187 = icmp ne %struct.ub_packed_rrset_key* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %190 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %191 = call i32 @generate_cname_request(%struct.module_qstate* %189, %struct.ub_packed_rrset_key* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  br label %222

194:                                              ; preds = %188
  %195 = load i32, i32* @module_wait_subquery, align 4
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %194, %185
  br label %197

197:                                              ; preds = %196, %182
  %198 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %199 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %200 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store %struct.reply_info* %198, %struct.reply_info** %202, align 8
  br label %203

203:                                              ; preds = %197, %112, %107, %100
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %206 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  br label %220

211:                                              ; preds = %80
  %212 = load i8*, i8** @module_finished, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %215 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %213, i32* %219, align 4
  br label %220

220:                                              ; preds = %211, %203
  br label %221

221:                                              ; preds = %220, %70
  br label %228

222:                                              ; preds = %193, %158, %144, %43
  %223 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %224 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %225 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %227 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %226, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %227, align 8
  br label %228

228:                                              ; preds = %222, %221, %61
  ret void
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local %struct.respip_qstate* @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @respip_rewrite_reply(%struct.TYPE_5__*, i32, %struct.reply_info*, %struct.reply_info**, %struct.respip_action_info*, %struct.ub_packed_rrset_key**, i32, i32) #1

declare dso_local i32* @regional_alloc_init(i32, %struct.respip_action_info*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @generate_cname_request(%struct.module_qstate*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
