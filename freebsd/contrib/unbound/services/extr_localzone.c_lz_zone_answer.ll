; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_zone_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_zone_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i64 }
%struct.module_env = type { i32 }
%struct.query_info = type { i32 }
%struct.edns_data = type { i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }
%struct.local_data = type { i64 }

@local_zone_deny = common dso_local global i32 0, align 4
@local_zone_inform_deny = common dso_local global i32 0, align 4
@local_zone_refuse = common dso_local global i32 0, align 4
@local_zone_always_refuse = common dso_local global i32 0, align 4
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@local_zone_static = common dso_local global i32 0, align 4
@local_zone_redirect = common dso_local global i32 0, align 4
@local_zone_inform_redirect = common dso_local global i32 0, align 4
@local_zone_always_nxdomain = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@local_zone_typetransparent = common dso_local global i32 0, align 4
@local_zone_always_transparent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_zone*, %struct.module_env*, %struct.query_info*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, %struct.local_data*, i32)* @lz_zone_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_zone_answer(%struct.local_zone* %0, %struct.module_env* %1, %struct.query_info* %2, %struct.edns_data* %3, %struct.comm_reply* %4, i32* %5, %struct.regional* %6, %struct.local_data* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_zone*, align 8
  %12 = alloca %struct.module_env*, align 8
  %13 = alloca %struct.query_info*, align 8
  %14 = alloca %struct.edns_data*, align 8
  %15 = alloca %struct.comm_reply*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.regional*, align 8
  %18 = alloca %struct.local_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.local_zone* %0, %struct.local_zone** %11, align 8
  store %struct.module_env* %1, %struct.module_env** %12, align 8
  store %struct.query_info* %2, %struct.query_info** %13, align 8
  store %struct.edns_data* %3, %struct.edns_data** %14, align 8
  store %struct.comm_reply* %4, %struct.comm_reply** %15, align 8
  store i32* %5, i32** %16, align 8
  store %struct.regional* %6, %struct.regional** %17, align 8
  store %struct.local_data* %7, %struct.local_data** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* @local_zone_deny, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %19, align 4
  %27 = load i32, i32* @local_zone_inform_deny, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %9
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @sldns_buffer_clear(i32* %30)
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @sldns_buffer_flip(i32* %32)
  store i32 1, i32* %10, align 4
  br label %166

34:                                               ; preds = %25
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @local_zone_refuse, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* @local_zone_always_refuse, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38, %34
  %43 = load %struct.query_info*, %struct.query_info** %13, align 8
  %44 = load %struct.module_env*, %struct.module_env** %12, align 8
  %45 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %46 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load %struct.regional*, %struct.regional** %17, align 8
  %49 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %50 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %51 = load i32, i32* @BIT_AA, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @local_error_encode(%struct.query_info* %43, %struct.module_env* %44, %struct.edns_data* %45, %struct.comm_reply* %46, i32* %47, %struct.regional* %48, i32 %49, i32 %52)
  store i32 1, i32* %10, align 4
  br label %166

54:                                               ; preds = %38
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @local_zone_static, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @local_zone_redirect, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @local_zone_inform_redirect, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @local_zone_always_nxdomain, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %66, %62, %58, %54
  %71 = load %struct.local_data*, %struct.local_data** %18, align 8
  %72 = icmp ne %struct.local_data* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @local_zone_redirect, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @local_zone_inform_redirect, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73, %70
  %82 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %20, align 4
  %87 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %88 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.query_info*, %struct.query_info** %13, align 8
  %93 = load %struct.module_env*, %struct.module_env** %12, align 8
  %94 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %95 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load %struct.regional*, %struct.regional** %17, align 8
  %98 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %99 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @local_encode(%struct.query_info* %92, %struct.module_env* %93, %struct.edns_data* %94, %struct.comm_reply* %95, i32* %96, %struct.regional* %97, i64 %100, i32 0, i32 %101)
  store i32 %102, i32* %10, align 4
  br label %166

103:                                              ; preds = %85
  %104 = load %struct.query_info*, %struct.query_info** %13, align 8
  %105 = load %struct.module_env*, %struct.module_env** %12, align 8
  %106 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %107 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load %struct.regional*, %struct.regional** %17, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* @BIT_AA, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @local_error_encode(%struct.query_info* %104, %struct.module_env* %105, %struct.edns_data* %106, %struct.comm_reply* %107, i32* %108, %struct.regional* %109, i32 %110, i32 %113)
  store i32 1, i32* %10, align 4
  br label %166

115:                                              ; preds = %66
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* @local_zone_typetransparent, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @local_zone_always_transparent, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %115
  store i32 0, i32* %10, align 4
  br label %166

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.local_data*, %struct.local_data** %18, align 8
  %129 = icmp ne %struct.local_data* %128, null
  br i1 %129, label %130, label %165

130:                                              ; preds = %127
  %131 = load %struct.local_data*, %struct.local_data** %18, align 8
  %132 = getelementptr inbounds %struct.local_data, %struct.local_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %130
  %136 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  store i32 %136, i32* %21, align 4
  %137 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %138 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.query_info*, %struct.query_info** %13, align 8
  %143 = load %struct.module_env*, %struct.module_env** %12, align 8
  %144 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %145 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = load %struct.regional*, %struct.regional** %17, align 8
  %148 = load %struct.local_zone*, %struct.local_zone** %11, align 8
  %149 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = call i32 @local_encode(%struct.query_info* %142, %struct.module_env* %143, %struct.edns_data* %144, %struct.comm_reply* %145, i32* %146, %struct.regional* %147, i64 %150, i32 0, i32 %151)
  store i32 %152, i32* %10, align 4
  br label %166

153:                                              ; preds = %135
  %154 = load %struct.query_info*, %struct.query_info** %13, align 8
  %155 = load %struct.module_env*, %struct.module_env** %12, align 8
  %156 = load %struct.edns_data*, %struct.edns_data** %14, align 8
  %157 = load %struct.comm_reply*, %struct.comm_reply** %15, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load %struct.regional*, %struct.regional** %17, align 8
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @BIT_AA, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @local_error_encode(%struct.query_info* %154, %struct.module_env* %155, %struct.edns_data* %156, %struct.comm_reply* %157, i32* %158, %struct.regional* %159, i32 %160, i32 %163)
  store i32 1, i32* %10, align 4
  br label %166

165:                                              ; preds = %130, %127
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %153, %141, %123, %103, %91, %42, %29
  %167 = load i32, i32* %10, align 4
  ret i32 %167
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i32 @local_error_encode(%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, i32, i32) #1

declare dso_local i32 @local_encode(%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
