; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_rewrite_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_rewrite_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.respip_client_info = type { i64, i64, i64, %struct.respip_set*, %struct.view*, %struct.config_strlist**, i32*, i32* }
%struct.respip_set = type { i32, i32, i32 }
%struct.view = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.config_strlist = type { i32 }
%struct.reply_info = type { i32 }
%struct.respip_action_info = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.regional = type { i32 }
%struct.resp_addr = type { i32, i32, i32 }

@respip_none = common dso_local global i32 0, align 4
@respip_always_refuse = common dso_local global i32 0, align 4
@respip_always_transparent = common dso_local global i32 0, align 4
@respip_always_nxdomain = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @respip_rewrite_reply(%struct.query_info* %0, %struct.respip_client_info* %1, %struct.reply_info* %2, %struct.reply_info** %3, %struct.respip_action_info* %4, %struct.ub_packed_rrset_key** %5, i32 %6, %struct.regional* %7) #0 {
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.respip_client_info*, align 8
  %11 = alloca %struct.reply_info*, align 8
  %12 = alloca %struct.reply_info**, align 8
  %13 = alloca %struct.respip_action_info*, align 8
  %14 = alloca %struct.ub_packed_rrset_key**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.regional*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.config_strlist**, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.view*, align 8
  %24 = alloca %struct.respip_set*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.resp_addr*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.ub_packed_rrset_key*, align 8
  %31 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %9, align 8
  store %struct.respip_client_info* %1, %struct.respip_client_info** %10, align 8
  store %struct.reply_info* %2, %struct.reply_info** %11, align 8
  store %struct.reply_info** %3, %struct.reply_info*** %12, align 8
  store %struct.respip_action_info* %4, %struct.respip_action_info** %13, align 8
  store %struct.ub_packed_rrset_key** %5, %struct.ub_packed_rrset_key*** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.regional* %7, %struct.regional** %16, align 8
  store %struct.view* null, %struct.view** %23, align 8
  store %struct.respip_set* null, %struct.respip_set** %24, align 8
  store i64 0, i64* %25, align 8
  %32 = load i32, i32* @respip_none, align 4
  store i32 %32, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  store %struct.resp_addr* null, %struct.resp_addr** %28, align 8
  store i32 1, i32* %29, align 4
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %30, align 8
  %33 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %34 = icmp ne %struct.respip_client_info* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %8
  br label %185

36:                                               ; preds = %8
  %37 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %38 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %17, align 8
  %40 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %41 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %18, align 8
  %43 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %44 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %19, align 8
  %46 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %47 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %20, align 8
  %49 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %50 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %49, i32 0, i32 5
  %51 = load %struct.config_strlist**, %struct.config_strlist*** %50, align 8
  store %struct.config_strlist** %51, %struct.config_strlist*** %21, align 8
  %52 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %53 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %22, align 8
  %55 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %56 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %55, i32 0, i32 4
  %57 = load %struct.view*, %struct.view** %56, align 8
  store %struct.view* %57, %struct.view** %23, align 8
  %58 = load %struct.respip_client_info*, %struct.respip_client_info** %10, align 8
  %59 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %58, i32 0, i32 3
  %60 = load %struct.respip_set*, %struct.respip_set** %59, align 8
  store %struct.respip_set* %60, %struct.respip_set** %24, align 8
  %61 = load %struct.view*, %struct.view** %23, align 8
  %62 = icmp ne %struct.view* %61, null
  br i1 %62, label %63, label %94

63:                                               ; preds = %36
  %64 = load %struct.view*, %struct.view** %23, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 0
  %66 = call i32 @lock_rw_rdlock(i32* %65)
  %67 = load %struct.view*, %struct.view** %23, align 8
  %68 = getelementptr inbounds %struct.view, %struct.view* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %73 = load %struct.view*, %struct.view** %23, align 8
  %74 = getelementptr inbounds %struct.view, %struct.view* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call %struct.resp_addr* @respip_addr_lookup(%struct.reply_info* %72, i32* %76, i64* %25)
  store %struct.resp_addr* %77, %struct.resp_addr** %28, align 8
  %78 = icmp ne %struct.resp_addr* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %81 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %26, align 4
  br label %83

83:                                               ; preds = %79, %71
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %86 = icmp ne %struct.resp_addr* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.view*, %struct.view** %23, align 8
  %89 = getelementptr inbounds %struct.view, %struct.view* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %185

93:                                               ; preds = %87, %84
  br label %94

94:                                               ; preds = %93, %36
  %95 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %96 = icmp ne %struct.resp_addr* %95, null
  br i1 %96, label %128, label %97

97:                                               ; preds = %94
  %98 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %99 = icmp ne %struct.respip_set* %98, null
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %102 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %103 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %102, i32 0, i32 2
  %104 = call %struct.resp_addr* @respip_addr_lookup(%struct.reply_info* %101, i32* %103, i64* %25)
  store %struct.resp_addr* %104, %struct.resp_addr** %28, align 8
  %105 = icmp ne %struct.resp_addr* %104, null
  br i1 %105, label %106, label %128

106:                                              ; preds = %100
  %107 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %108 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %111 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %118 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %121 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %124 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @local_data_find_tag_action(i32 %109, i32 %112, i32* %113, i64 %114, i32* %115, i64 %116, i32 %119, i32* %27, i32 %122, i32 %125)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %26, align 4
  br label %128

128:                                              ; preds = %106, %100, %97, %94
  %129 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %130 = icmp ne %struct.resp_addr* %129, null
  br i1 %130, label %131, label %184

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %184, label %134

134:                                              ; preds = %131
  store i32 0, i32* %31, align 4
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* @respip_always_refuse, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %134
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* @respip_always_transparent, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* @respip_always_nxdomain, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %142
  %147 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load %struct.query_info*, %struct.query_info** %9, align 8
  %150 = getelementptr inbounds %struct.query_info, %struct.query_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %155 = load i32, i32* %27, align 4
  %156 = load %struct.config_strlist**, %struct.config_strlist*** %21, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %159 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %162 = getelementptr inbounds %struct.respip_set, %struct.respip_set* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.regional*, %struct.regional** %16, align 8
  %165 = call i32 @respip_data_answer(%struct.resp_addr* %147, i32 %148, i32 %151, %struct.reply_info* %152, i64 %153, %struct.reply_info** %154, i32 %155, %struct.config_strlist** %156, i64 %157, i32 %160, i32 %163, %struct.ub_packed_rrset_key** %30, %struct.regional* %164)
  store i32 %165, i32* %31, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %146
  store i32 0, i32* %29, align 4
  br label %185

168:                                              ; preds = %146, %142, %138, %134
  %169 = load i32, i32* %31, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %168
  %172 = load %struct.query_info*, %struct.query_info** %9, align 8
  %173 = getelementptr inbounds %struct.query_info, %struct.query_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %26, align 4
  %176 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %177 = load i64, i64* %25, align 8
  %178 = load %struct.reply_info**, %struct.reply_info*** %12, align 8
  %179 = load %struct.regional*, %struct.regional** %16, align 8
  %180 = call i32 @respip_nodata_answer(i32 %174, i32 %175, %struct.reply_info* %176, i64 %177, %struct.reply_info** %178, %struct.regional* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %171
  store i32 0, i32* %29, align 4
  br label %185

183:                                              ; preds = %171, %168
  br label %184

184:                                              ; preds = %183, %131, %128
  br label %185

185:                                              ; preds = %184, %182, %167, %92, %35
  %186 = load %struct.view*, %struct.view** %23, align 8
  %187 = icmp ne %struct.view* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.view*, %struct.view** %23, align 8
  %190 = getelementptr inbounds %struct.view, %struct.view* %189, i32 0, i32 0
  %191 = call i32 @lock_rw_unlock(i32* %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %29, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %192
  %196 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %197 = icmp ne %struct.ub_packed_rrset_key* %196, null
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  %199 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %200 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %204 = call i64 @ntohs(i32 %203)
  %205 = icmp eq i64 %202, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %198
  %207 = load %struct.query_info*, %struct.query_info** %9, align 8
  %208 = getelementptr inbounds %struct.query_info, %struct.query_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @LDNS_RR_TYPE_ANY, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %214 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %14, align 8
  store %struct.ub_packed_rrset_key* %213, %struct.ub_packed_rrset_key** %214, align 8
  br label %215

215:                                              ; preds = %212, %206, %198, %195
  %216 = load %struct.respip_action_info*, %struct.respip_action_info** %13, align 8
  %217 = load i32, i32* %26, align 4
  %218 = load %struct.resp_addr*, %struct.resp_addr** %28, align 8
  %219 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %220 = load i32, i32* %27, align 4
  %221 = load %struct.respip_set*, %struct.respip_set** %24, align 8
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.regional*, %struct.regional** %16, align 8
  %224 = call i32 @populate_action_info(%struct.respip_action_info* %216, i32 %217, %struct.resp_addr* %218, %struct.ub_packed_rrset_key* %219, i32 %220, %struct.respip_set* %221, i32 %222, %struct.regional* %223)
  store i32 %224, i32* %29, align 4
  br label %225

225:                                              ; preds = %215, %192
  %226 = load i32, i32* %29, align 4
  ret i32 %226
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.resp_addr* @respip_addr_lookup(%struct.reply_info*, i32*, i64*) #1

declare dso_local i64 @local_data_find_tag_action(i32, i32, i32*, i64, i32*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @respip_data_answer(%struct.resp_addr*, i32, i32, %struct.reply_info*, i64, %struct.reply_info**, i32, %struct.config_strlist**, i64, i32, i32, %struct.ub_packed_rrset_key**, %struct.regional*) #1

declare dso_local i32 @respip_nodata_answer(i32, i32, %struct.reply_info*, i64, %struct.reply_info**, %struct.regional*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @populate_action_info(%struct.respip_action_info*, i32, %struct.resp_addr*, %struct.ub_packed_rrset_key*, i32, %struct.respip_set*, i32, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
