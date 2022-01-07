; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_wildcard_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_generate_wildcard_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i64 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.auth_data = type { i64, i32*, i64 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_data*, %struct.auth_data*)* @az_generate_wildcard_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_generate_wildcard_answer(%struct.auth_zone* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg* %3, %struct.auth_data* %4, %struct.auth_data* %5, %struct.auth_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_zone*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca %struct.auth_data*, align 8
  %14 = alloca %struct.auth_data*, align 8
  %15 = alloca %struct.auth_data*, align 8
  %16 = alloca %struct.auth_rrset*, align 8
  %17 = alloca %struct.auth_rrset*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.regional* %2, %struct.regional** %11, align 8
  store %struct.dns_msg* %3, %struct.dns_msg** %12, align 8
  store %struct.auth_data* %4, %struct.auth_data** %13, align 8
  store %struct.auth_data* %5, %struct.auth_data** %14, align 8
  store %struct.auth_data* %6, %struct.auth_data** %15, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %22 = load %struct.query_info*, %struct.query_info** %10, align 8
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %21, i64 %24)
  store %struct.auth_rrset* %25, %struct.auth_rrset** %16, align 8
  %26 = icmp ne %struct.auth_rrset* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %7
  %28 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %29 = load %struct.regional*, %struct.regional** %11, align 8
  %30 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %31 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %32 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %33 = call i32 @msg_add_rrset_an(%struct.auth_zone* %28, %struct.regional* %29, %struct.dns_msg* %30, %struct.auth_data* %31, %struct.auth_rrset* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %193

36:                                               ; preds = %27
  %37 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %38 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %39 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %46 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @az_change_dnames(%struct.dns_msg* %37, i32* %40, i32 %44, i32 %48, i32 1)
  br label %135

50:                                               ; preds = %7
  %51 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %52 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %53 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %51, i64 %52)
  store %struct.auth_rrset* %53, %struct.auth_rrset** %16, align 8
  %54 = icmp ne %struct.auth_rrset* %53, null
  br i1 %54, label %55, label %91

55:                                               ; preds = %50
  %56 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %57 = load %struct.regional*, %struct.regional** %11, align 8
  %58 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %59 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %60 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %61 = call i32 @msg_add_rrset_an(%struct.auth_zone* %56, %struct.regional* %57, %struct.dns_msg* %58, %struct.auth_data* %59, %struct.auth_rrset* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %193

64:                                               ; preds = %55
  %65 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %66 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %67 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %70 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %74 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @az_change_dnames(%struct.dns_msg* %65, i32* %68, i32 %72, i32 %76, i32 1)
  %78 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %79 = load %struct.query_info*, %struct.query_info** %10, align 8
  %80 = getelementptr inbounds %struct.query_info, %struct.query_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.regional*, %struct.regional** %11, align 8
  %83 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %84 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %85 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @follow_cname_chain(%struct.auth_zone* %78, i64 %81, %struct.regional* %82, %struct.dns_msg* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %193

90:                                               ; preds = %64
  br label %134

91:                                               ; preds = %50
  %92 = load %struct.query_info*, %struct.query_info** %10, align 8
  %93 = getelementptr inbounds %struct.query_info, %struct.query_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %91
  %98 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %99 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %104 = load %struct.regional*, %struct.regional** %11, align 8
  %105 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %106 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %107 = call i32 @az_generate_any_answer(%struct.auth_zone* %103, %struct.regional* %104, %struct.dns_msg* %105, %struct.auth_data* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %193

110:                                              ; preds = %102
  %111 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %112 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %113 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %116 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %120 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @az_change_dnames(%struct.dns_msg* %111, i32* %114, i32 %118, i32 %122, i32 1)
  br label %133

124:                                              ; preds = %97, %91
  %125 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %126 = load %struct.regional*, %struct.regional** %11, align 8
  %127 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %128 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %129 = call i32 @az_generate_notype_answer(%struct.auth_zone* %125, %struct.regional* %126, %struct.dns_msg* %127, %struct.auth_data* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %193

132:                                              ; preds = %124
  store i32 1, i32* %18, align 4
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %90
  br label %135

135:                                              ; preds = %134, %36
  %136 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %137 = call %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone* %136, %struct.auth_data** %15)
  store %struct.auth_rrset* %137, %struct.auth_rrset** %17, align 8
  %138 = icmp ne %struct.auth_rrset* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %141 = load %struct.regional*, %struct.regional** %11, align 8
  %142 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %143 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %144 = load %struct.auth_rrset*, %struct.auth_rrset** %17, align 8
  %145 = call i32 @msg_add_rrset_ns(%struct.auth_zone* %140, %struct.regional* %141, %struct.dns_msg* %142, %struct.auth_data* %143, %struct.auth_rrset* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %193

148:                                              ; preds = %139
  br label %179

149:                                              ; preds = %135
  %150 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %151 = icmp ne %struct.auth_data* %150, null
  br i1 %151, label %152, label %178

152:                                              ; preds = %149
  %153 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %154 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %19, align 8
  %156 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %157 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %20, align 8
  %159 = call i32 @dname_remove_label(i32** %19, i64* %20)
  %160 = load %struct.auth_zone*, %struct.auth_zone** %9, align 8
  %161 = load %struct.regional*, %struct.regional** %11, align 8
  %162 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %163 = load i32*, i32** %19, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %166 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %170 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @az_add_nsec3_proof(%struct.auth_zone* %160, %struct.regional* %161, %struct.dns_msg* %162, i32* %163, i64 %164, i32 %168, i32 %172, i32 0, i32 %173, i32 1, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %193

177:                                              ; preds = %152
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %148
  %180 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %181 = load %struct.auth_data*, %struct.auth_data** %14, align 8
  %182 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %185 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %189 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @az_change_dnames(%struct.dns_msg* %180, i32* %183, i32 %187, i32 %191, i32 0)
  store i32 1, i32* %8, align 4
  br label %193

193:                                              ; preds = %179, %176, %147, %131, %109, %89, %63, %35
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i64) #1

declare dso_local i32 @msg_add_rrset_an(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @az_change_dnames(%struct.dns_msg*, i32*, i32, i32, i32) #1

declare dso_local i32 @follow_cname_chain(%struct.auth_zone*, i64, %struct.regional*, %struct.dns_msg*, i32) #1

declare dso_local i32 @az_generate_any_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_notype_answer(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local %struct.auth_rrset* @az_find_nsec_cover(%struct.auth_zone*, %struct.auth_data**) #1

declare dso_local i32 @msg_add_rrset_ns(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i32 @az_add_nsec3_proof(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
