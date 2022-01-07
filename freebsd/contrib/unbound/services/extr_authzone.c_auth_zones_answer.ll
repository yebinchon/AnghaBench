; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32, i32, i32 }
%struct.module_env = type { i32 }
%struct.query_info = type { i64, i64, i32, i32* }
%struct.edns_data = type { i32 }
%struct.comm_reply = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_zone = type { i32, i64, i64, i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_answer(%struct.auth_zones* %0, %struct.module_env* %1, %struct.query_info* %2, %struct.edns_data* %3, %struct.comm_reply* %4, %struct.sldns_buffer* %5, %struct.regional* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.auth_zones*, align 8
  %10 = alloca %struct.module_env*, align 8
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca %struct.edns_data*, align 8
  %13 = alloca %struct.comm_reply*, align 8
  %14 = alloca %struct.sldns_buffer*, align 8
  %15 = alloca %struct.regional*, align 8
  %16 = alloca %struct.dns_msg*, align 8
  %17 = alloca %struct.auth_zone*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %9, align 8
  store %struct.module_env* %1, %struct.module_env** %10, align 8
  store %struct.query_info* %2, %struct.query_info** %11, align 8
  store %struct.edns_data* %3, %struct.edns_data** %12, align 8
  store %struct.comm_reply* %4, %struct.comm_reply** %13, align 8
  store %struct.sldns_buffer* %5, %struct.sldns_buffer** %14, align 8
  store %struct.regional* %6, %struct.regional** %15, align 8
  store %struct.dns_msg* null, %struct.dns_msg** %16, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %23 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %22, i32 0, i32 0
  %24 = call i32 @lock_rw_rdlock(i32* %23)
  %25 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %26 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %31 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %30, i32 0, i32 0
  %32 = call i32 @lock_rw_unlock(i32* %31)
  store i32 0, i32* %8, align 4
  br label %170

33:                                               ; preds = %7
  %34 = load %struct.query_info*, %struct.query_info** %11, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.query_info*, %struct.query_info** %11, align 8
  %41 = getelementptr inbounds %struct.query_info, %struct.query_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %20, align 8
  %43 = load %struct.query_info*, %struct.query_info** %11, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %21, align 8
  %46 = call i32 @dname_remove_label(i32** %20, i64* %21)
  %47 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = load i64, i64* %21, align 8
  %50 = load %struct.query_info*, %struct.query_info** %11, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.auth_zone* @auth_zones_find_zone(%struct.auth_zones* %47, i32* %48, i64 %49, i32 %52)
  store %struct.auth_zone* %53, %struct.auth_zone** %17, align 8
  br label %66

54:                                               ; preds = %33
  %55 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %56 = load %struct.query_info*, %struct.query_info** %11, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.query_info*, %struct.query_info** %11, align 8
  %60 = getelementptr inbounds %struct.query_info, %struct.query_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.query_info*, %struct.query_info** %11, align 8
  %63 = getelementptr inbounds %struct.query_info, %struct.query_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.auth_zone* @auth_zones_find_zone(%struct.auth_zones* %55, i32* %58, i64 %61, i32 %64)
  store %struct.auth_zone* %65, %struct.auth_zone** %17, align 8
  br label %66

66:                                               ; preds = %54, %39
  %67 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %68 = icmp ne %struct.auth_zone* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %71 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %70, i32 0, i32 0
  %72 = call i32 @lock_rw_unlock(i32* %71)
  store i32 0, i32* %8, align 4
  br label %170

73:                                               ; preds = %66
  %74 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %75 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %74, i32 0, i32 0
  %76 = call i32 @lock_rw_rdlock(i32* %75)
  %77 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %78 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %77, i32 0, i32 0
  %79 = call i32 @lock_rw_unlock(i32* %78)
  %80 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %81 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %86 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %85, i32 0, i32 0
  %87 = call i32 @lock_rw_unlock(i32* %86)
  store i32 0, i32* %8, align 4
  br label %170

88:                                               ; preds = %73
  %89 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %90 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %88
  %94 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %95 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %100 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %99, i32 0, i32 0
  %101 = call i32 @lock_rw_unlock(i32* %100)
  store i32 0, i32* %8, align 4
  br label %170

102:                                              ; preds = %93
  %103 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %104 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %103, i32 0, i32 0
  %105 = call i32 @lock_rw_unlock(i32* %104)
  %106 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %107 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %106, i32 0, i32 0
  %108 = call i32 @lock_rw_wrlock(i32* %107)
  %109 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %110 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %114 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %113, i32 0, i32 0
  %115 = call i32 @lock_rw_unlock(i32* %114)
  %116 = load %struct.query_info*, %struct.query_info** %11, align 8
  %117 = load %struct.module_env*, %struct.module_env** %10, align 8
  %118 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %119 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %120 = load %struct.sldns_buffer*, %struct.sldns_buffer** %14, align 8
  %121 = load %struct.regional*, %struct.regional** %15, align 8
  %122 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %123 = call i32 @auth_error_encode(%struct.query_info* %116, %struct.module_env* %117, %struct.edns_data* %118, %struct.comm_reply* %119, %struct.sldns_buffer* %120, %struct.regional* %121, i32 %122)
  store i32 1, i32* %8, align 4
  br label %170

124:                                              ; preds = %88
  %125 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %126 = load %struct.query_info*, %struct.query_info** %11, align 8
  %127 = load %struct.regional*, %struct.regional** %15, align 8
  %128 = call i32 @auth_zone_generate_answer(%struct.auth_zone* %125, %struct.query_info* %126, %struct.regional* %127, %struct.dns_msg** %16, i32* %19)
  store i32 %128, i32* %18, align 4
  %129 = load %struct.auth_zone*, %struct.auth_zone** %17, align 8
  %130 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %129, i32 0, i32 0
  %131 = call i32 @lock_rw_unlock(i32* %130)
  %132 = load i32, i32* %18, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %170

138:                                              ; preds = %134, %124
  %139 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %140 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %139, i32 0, i32 0
  %141 = call i32 @lock_rw_wrlock(i32* %140)
  %142 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %143 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.auth_zones*, %struct.auth_zones** %9, align 8
  %147 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %146, i32 0, i32 0
  %148 = call i32 @lock_rw_unlock(i32* %147)
  %149 = load i32, i32* %18, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %138
  %152 = load %struct.query_info*, %struct.query_info** %11, align 8
  %153 = load %struct.module_env*, %struct.module_env** %10, align 8
  %154 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %155 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %156 = load %struct.sldns_buffer*, %struct.sldns_buffer** %14, align 8
  %157 = load %struct.regional*, %struct.regional** %15, align 8
  %158 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %159 = call i32 @auth_error_encode(%struct.query_info* %152, %struct.module_env* %153, %struct.edns_data* %154, %struct.comm_reply* %155, %struct.sldns_buffer* %156, %struct.regional* %157, i32 %158)
  br label %169

160:                                              ; preds = %138
  %161 = load %struct.query_info*, %struct.query_info** %11, align 8
  %162 = load %struct.module_env*, %struct.module_env** %10, align 8
  %163 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %164 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %165 = load %struct.sldns_buffer*, %struct.sldns_buffer** %14, align 8
  %166 = load %struct.regional*, %struct.regional** %15, align 8
  %167 = load %struct.dns_msg*, %struct.dns_msg** %16, align 8
  %168 = call i32 @auth_answer_encode(%struct.query_info* %161, %struct.module_env* %162, %struct.edns_data* %163, %struct.comm_reply* %164, %struct.sldns_buffer* %165, %struct.regional* %166, %struct.dns_msg* %167)
  br label %169

169:                                              ; preds = %160, %151
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %137, %102, %98, %84, %69, %29
  %171 = load i32, i32* %8, align 4
  ret i32 %171
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.auth_zone* @auth_zones_find_zone(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @auth_error_encode(%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, %struct.sldns_buffer*, %struct.regional*, i32) #1

declare dso_local i32 @auth_zone_generate_answer(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg**, i32*) #1

declare dso_local i32 @auth_answer_encode(%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, %struct.sldns_buffer*, %struct.regional*, %struct.dns_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
