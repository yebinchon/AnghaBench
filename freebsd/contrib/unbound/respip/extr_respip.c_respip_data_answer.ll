; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_data_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_data_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resp_addr = type { %struct.ub_packed_rrset_key* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.reply_info = type { %struct.ub_packed_rrset_key** }
%struct.config_strlist = type { i32 }
%struct.regional = type { i32 }
%struct.query_info = type { %struct.TYPE_2__, i8*, i8*, i32, i32 }

@respip_redirect = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"response-ip redirect with tag data [%d] %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@PACKED_RRSET_FIXEDTTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resp_addr*, i32, i64, %struct.reply_info*, i64, %struct.reply_info**, i32, %struct.config_strlist**, i64, i8**, i32, %struct.ub_packed_rrset_key**, %struct.regional*)* @respip_data_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @respip_data_answer(%struct.resp_addr* %0, i32 %1, i64 %2, %struct.reply_info* %3, i64 %4, %struct.reply_info** %5, i32 %6, %struct.config_strlist** %7, i64 %8, i8** %9, i32 %10, %struct.ub_packed_rrset_key** %11, %struct.regional* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.resp_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.reply_info*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.reply_info**, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.config_strlist**, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.ub_packed_rrset_key**, align 8
  %27 = alloca %struct.regional*, align 8
  %28 = alloca %struct.ub_packed_rrset_key*, align 8
  %29 = alloca %struct.reply_info*, align 8
  %30 = alloca %struct.query_info, align 8
  %31 = alloca %struct.ub_packed_rrset_key, align 8
  store %struct.resp_addr* %0, %struct.resp_addr** %15, align 8
  store i32 %1, i32* %16, align 4
  store i64 %2, i64* %17, align 8
  store %struct.reply_info* %3, %struct.reply_info** %18, align 8
  store i64 %4, i64* %19, align 8
  store %struct.reply_info** %5, %struct.reply_info*** %20, align 8
  store i32 %6, i32* %21, align 4
  store %struct.config_strlist** %7, %struct.config_strlist*** %22, align 8
  store i64 %8, i64* %23, align 8
  store i8** %9, i8*** %24, align 8
  store i32 %10, i32* %25, align 4
  store %struct.ub_packed_rrset_key** %11, %struct.ub_packed_rrset_key*** %26, align 8
  store %struct.regional* %12, %struct.regional** %27, align 8
  %32 = load %struct.resp_addr*, %struct.resp_addr** %15, align 8
  %33 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %32, i32 0, i32 0
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %33, align 8
  store %struct.ub_packed_rrset_key* %34, %struct.ub_packed_rrset_key** %28, align 8
  %35 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @respip_redirect, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %132

39:                                               ; preds = %13
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %132

42:                                               ; preds = %39
  %43 = load i32, i32* %21, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %23, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %132

47:                                               ; preds = %42
  %48 = load %struct.config_strlist**, %struct.config_strlist*** %22, align 8
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %48, i64 %50
  %52 = load %struct.config_strlist*, %struct.config_strlist** %51, align 8
  %53 = icmp ne %struct.config_strlist* %52, null
  br i1 %53, label %54, label %132

54:                                               ; preds = %47
  %55 = bitcast %struct.query_info* %30 to %struct.ub_packed_rrset_key*
  %56 = call i32 @memset(%struct.ub_packed_rrset_key* %55, i32 0, i32 48)
  %57 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 0
  %59 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %58, align 8
  %60 = load i64, i64* %19, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %59, i64 %60
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %61, align 8
  %63 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 4
  store i32 %65, i32* %66, align 4
  %67 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %68 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %67, i32 0, i32 0
  %69 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %68, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %69, i64 %70
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %71, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 3
  store i32 %75, i32* %76, align 8
  %77 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %78 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %77, i32 0, i32 0
  %79 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %78, align 8
  %80 = load i64, i64* %19, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %79, i64 %80
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %81, align 8
  %83 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @ntohs(i32 %85)
  %87 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 2
  store i8* %86, i8** %87, align 8
  %88 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %89 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %88, i32 0, i32 0
  %90 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %89, align 8
  %91 = load i64, i64* %19, align 8
  %92 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %90, i64 %91
  %93 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %92, align 8
  %94 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @ntohs(i32 %96)
  %98 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = call i32 @memset(%struct.ub_packed_rrset_key* %31, i32 0, i32 48)
  %100 = bitcast %struct.query_info* %30 to %struct.ub_packed_rrset_key*
  %101 = load %struct.config_strlist**, %struct.config_strlist*** %22, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %101, i64 %103
  %105 = load %struct.config_strlist*, %struct.config_strlist** %104, align 8
  %106 = load %struct.regional*, %struct.regional** %27, align 8
  %107 = call i64 @local_data_find_tag_datas(%struct.ub_packed_rrset_key* %100, %struct.config_strlist* %105, %struct.ub_packed_rrset_key* %31, %struct.regional* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %54
  %110 = load i32, i32* @VERB_ALGO, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i8**, i8*** %24, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  br label %122

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %115
  %123 = phi i8* [ %120, %115 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %121 ]
  %124 = call i32 @verbose(i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %111, i8* %123)
  %125 = load %struct.regional*, %struct.regional** %27, align 8
  %126 = call %struct.ub_packed_rrset_key* @copy_rrset(%struct.ub_packed_rrset_key* %31, %struct.regional* %125)
  store %struct.ub_packed_rrset_key* %126, %struct.ub_packed_rrset_key** %28, align 8
  %127 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %128 = icmp ne %struct.ub_packed_rrset_key* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  store i32 -1, i32* %14, align 4
  br label %206

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %54
  br label %132

132:                                              ; preds = %131, %47, %42, %39, %13
  %133 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %134 = icmp ne %struct.ub_packed_rrset_key* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %206

136:                                              ; preds = %132
  %137 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %138 = load %struct.resp_addr*, %struct.resp_addr** %15, align 8
  %139 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %138, i32 0, i32 0
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %139, align 8
  %141 = icmp eq %struct.ub_packed_rrset_key* %137, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %136
  %143 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %144 = load %struct.regional*, %struct.regional** %27, align 8
  %145 = call %struct.ub_packed_rrset_key* @copy_rrset(%struct.ub_packed_rrset_key* %143, %struct.regional* %144)
  store %struct.ub_packed_rrset_key* %145, %struct.ub_packed_rrset_key** %28, align 8
  %146 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %147 = icmp ne %struct.ub_packed_rrset_key* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  store i32 -1, i32* %14, align 4
  br label %206

149:                                              ; preds = %142
  %150 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %151 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %150, i32 0, i32 0
  %152 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %151, align 8
  %153 = load i64, i64* %19, align 8
  %154 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %152, i64 %153
  %155 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %154, align 8
  %156 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %160 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %163 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %162, i32 0, i32 0
  %164 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %163, align 8
  %165 = load i64, i64* %19, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %164, i64 %165
  %167 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %166, align 8
  %168 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %172 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %149, %136
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i64 0, i64* %19, align 8
  br label %179

179:                                              ; preds = %178, %174
  %180 = load %struct.reply_info*, %struct.reply_info** %18, align 8
  %181 = load %struct.regional*, %struct.regional** %27, align 8
  %182 = load i64, i64* %19, align 8
  %183 = add i64 %182, 1
  %184 = load i64, i64* %19, align 8
  %185 = call %struct.reply_info* @make_new_reply_info(%struct.reply_info* %180, %struct.regional* %181, i64 %183, i64 %184)
  store %struct.reply_info* %185, %struct.reply_info** %29, align 8
  %186 = load %struct.reply_info*, %struct.reply_info** %29, align 8
  %187 = icmp ne %struct.reply_info* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %179
  store i32 -1, i32* %14, align 4
  br label %206

189:                                              ; preds = %179
  %190 = load i32, i32* @PACKED_RRSET_FIXEDTTL, align 4
  %191 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %192 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 8
  %196 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %197 = load %struct.reply_info*, %struct.reply_info** %29, align 8
  %198 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %197, i32 0, i32 0
  %199 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %198, align 8
  %200 = load i64, i64* %19, align 8
  %201 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %199, i64 %200
  store %struct.ub_packed_rrset_key* %196, %struct.ub_packed_rrset_key** %201, align 8
  %202 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  %203 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  store %struct.ub_packed_rrset_key* %202, %struct.ub_packed_rrset_key** %203, align 8
  %204 = load %struct.reply_info*, %struct.reply_info** %29, align 8
  %205 = load %struct.reply_info**, %struct.reply_info*** %20, align 8
  store %struct.reply_info* %204, %struct.reply_info** %205, align 8
  store i32 1, i32* %14, align 4
  br label %206

206:                                              ; preds = %189, %188, %148, %135, %129
  %207 = load i32, i32* %14, align 4
  ret i32 %207
}

declare dso_local i32 @memset(%struct.ub_packed_rrset_key*, i32, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i64 @local_data_find_tag_datas(%struct.ub_packed_rrset_key*, %struct.config_strlist*, %struct.ub_packed_rrset_key*, %struct.regional*) #1

declare dso_local i32 @verbose(i32, i8*, i32, i8*) #1

declare dso_local %struct.ub_packed_rrset_key* @copy_rrset(%struct.ub_packed_rrset_key*, %struct.regional*) #1

declare dso_local %struct.reply_info* @make_new_reply_info(%struct.reply_info*, %struct.regional*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
