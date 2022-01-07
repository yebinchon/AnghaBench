; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_accounting.c_accounting_sta_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.radius_msg = type { i32 }
%struct.hostap_sta_driver_data = type { i32, i32, i32, i32, i64 }
%struct.os_reltime = type { i32 }

@RADIUS_ACCT_STATUS_TYPE_STOP = common dso_local global i32 0, align 4
@RADIUS_ACCT_STATUS_TYPE_INTERIM_UPDATE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not create RADIUS Accounting message\00", align 1
@RADIUS_ATTR_ACCT_SESSION_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not add Acct-Session-Time\00", align 1
@RADIUS_ATTR_ACCT_INPUT_PACKETS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not add Acct-Input-Packets\00", align 1
@RADIUS_ATTR_ACCT_OUTPUT_PACKETS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not add Acct-Output-Packets\00", align 1
@RADIUS_ATTR_ACCT_INPUT_OCTETS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not add Acct-Input-Octets\00", align 1
@RADIUS_ATTR_ACCT_INPUT_GIGAWORDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Could not add Acct-Input-Gigawords\00", align 1
@RADIUS_ATTR_ACCT_OUTPUT_OCTETS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Could not add Acct-Output-Octets\00", align 1
@RADIUS_ATTR_ACCT_OUTPUT_GIGAWORDS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not add Acct-Output-Gigawords\00", align 1
@RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_REBOOT = common dso_local global i32 0, align 4
@RADIUS_ATTR_ACCT_TERMINATE_CAUSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Could not add Acct-Terminate-Cause\00", align 1
@RADIUS_ACCT = common dso_local global i32 0, align 4
@RADIUS_ACCT_INTERIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, i32)* @accounting_sta_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accounting_sta_report(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostap_sta_driver_data, align 8
  %10 = alloca %struct.os_reltime, align 4
  %11 = alloca %struct.os_reltime, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %197

25:                                               ; preds = %3
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @RADIUS_ACCT_STATUS_TYPE_STOP, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @RADIUS_ACCT_STATUS_TYPE_INTERIM_UPDATE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call %struct.radius_msg* @accounting_msg(%struct.hostapd_data* %26, %struct.sta_info* %27, i32 %35)
  store %struct.radius_msg* %36, %struct.radius_msg** %7, align 8
  %37 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %38 = icmp ne %struct.radius_msg* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %197

42:                                               ; preds = %34
  %43 = call i32 @os_get_reltime(%struct.os_reltime* %10)
  %44 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 6
  %46 = call i32 @os_reltime_sub(%struct.os_reltime* %10, i32* %45, %struct.os_reltime* %11)
  %47 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %48 = load i32, i32* @RADIUS_ATTR_ACCT_SESSION_TIME, align 4
  %49 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %47, i32 %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %194

56:                                               ; preds = %42
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %58 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %59 = call i64 @accounting_sta_update_stats(%struct.hostapd_data* %57, %struct.sta_info* %58, %struct.hostap_sta_driver_data* %9)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %154

61:                                               ; preds = %56
  %62 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %63 = load i32, i32* @RADIUS_ATTR_ACCT_INPUT_PACKETS, align 4
  %64 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %62, i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %194

71:                                               ; preds = %61
  %72 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %73 = load i32, i32* @RADIUS_ATTR_ACCT_OUTPUT_PACKETS, align 4
  %74 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %72, i32 %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @MSG_INFO, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %194

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %12, align 4
  br label %98

88:                                               ; preds = %81
  %89 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 32
  %94 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %93, %96
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %88, %85
  %99 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %100 = load i32, i32* @RADIUS_ATTR_ACCT_INPUT_OCTETS, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %99, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @MSG_INFO, align 4
  %106 = call i32 @wpa_printf(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %194

107:                                              ; preds = %98
  %108 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %109 = load i32, i32* @RADIUS_ATTR_ACCT_INPUT_GIGAWORDS, align 4
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 32
  %112 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %108, i32 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @MSG_INFO, align 4
  %116 = call i32 @wpa_printf(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %194

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.hostap_sta_driver_data, %struct.hostap_sta_driver_data* %9, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %134

124:                                              ; preds = %117
  %125 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %126 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %128, 32
  %130 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %131 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %129, %132
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %124, %121
  %135 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %136 = load i32, i32* @RADIUS_ATTR_ACCT_OUTPUT_OCTETS, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 @wpa_printf(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %194

143:                                              ; preds = %134
  %144 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %145 = load i32, i32* @RADIUS_ATTR_ACCT_OUTPUT_GIGAWORDS, align 4
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %146, 32
  %148 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %144, i32 %145, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @MSG_INFO, align 4
  %152 = call i32 @wpa_printf(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %194

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %56
  %155 = call i64 (...) @eloop_terminated()
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_REBOOT, align 4
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %167 = load i32, i32* @RADIUS_ATTR_ACCT_TERMINATE_CAUSE, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %166, i32 %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* @MSG_INFO, align 4
  %173 = call i32 @wpa_printf(i32 %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %194

174:                                              ; preds = %165, %162, %159
  %175 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %176 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @RADIUS_ACCT, align 4
  br label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @RADIUS_ACCT_INTERIM, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %188 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @radius_client_send(i32 %177, %struct.radius_msg* %178, i32 %186, i32 %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %194

193:                                              ; preds = %185
  br label %197

194:                                              ; preds = %192, %171, %150, %140, %114, %104, %78, %68, %53
  %195 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %196 = call i32 @radius_msg_free(%struct.radius_msg* %195)
  br label %197

197:                                              ; preds = %194, %193, %39, %24
  ret void
}

declare dso_local %struct.radius_msg* @accounting_msg(%struct.hostapd_data*, %struct.sta_info*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #1

declare dso_local i64 @accounting_sta_update_stats(%struct.hostapd_data*, %struct.sta_info*, %struct.hostap_sta_driver_data*) #1

declare dso_local i64 @eloop_terminated(...) #1

declare dso_local i64 @radius_client_send(i32, %struct.radius_msg*, i32, i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
