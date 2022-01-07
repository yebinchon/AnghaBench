; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_wsc_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_wsc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32* }

@WPS_CONTINUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS: Received WSC_MSG\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Unsupported Message Type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_msg(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %12 = call i64 @wps_parse_msg(%struct.wpabuf* %11, %struct.wps_parse_attr* %6)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %199

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @WPS_NONCE_LEN, align 4
  %27 = call i64 @os_memcmp(i32 %23, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20, %16
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %32, i32* %3, align 4
  br label %199

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @SEND_WSC_NACK, align 4
  %41 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %43, i32* %3, align 4
  br label %199

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %172 [
    i32 132, label %48
    i32 131, label %58
    i32 130, label %67
    i32 129, label %102
    i32 128, label %137
  ]

48:                                               ; preds = %44
  %49 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %50 = call i32 @wps_validate_m2(%struct.wpabuf* %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %53, i32* %3, align 4
  br label %199

54:                                               ; preds = %48
  %55 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = call i32 @wps_process_m2(%struct.wps_data* %55, %struct.wpabuf* %56, %struct.wps_parse_attr* %6)
  store i32 %57, i32* %7, align 4
  br label %179

58:                                               ; preds = %44
  %59 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %60 = call i32 @wps_validate_m2d(%struct.wpabuf* %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %63, i32* %3, align 4
  br label %199

64:                                               ; preds = %58
  %65 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %66 = call i32 @wps_process_m2d(%struct.wps_data* %65, %struct.wps_parse_attr* %6)
  store i32 %66, i32* %7, align 4
  br label %179

67:                                               ; preds = %44
  %68 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %69 = call i32 @wps_validate_m4(%struct.wpabuf* %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %199

73:                                               ; preds = %67
  %74 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %76 = call i32 @wps_process_m4(%struct.wps_data* %74, %struct.wpabuf* %75, %struct.wps_parse_attr* %6)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @WPS_FAILURE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SEND_WSC_NACK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80, %73
  %87 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %88 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wps_fail_event(i32 %89, i32 130, i32 %92, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %86, %80
  br label %179

102:                                              ; preds = %44
  %103 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %104 = call i32 @wps_validate_m6(%struct.wpabuf* %103)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %107, i32* %3, align 4
  br label %199

108:                                              ; preds = %102
  %109 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %110 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %111 = call i32 @wps_process_m6(%struct.wps_data* %109, %struct.wpabuf* %110, %struct.wps_parse_attr* %6)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @WPS_FAILURE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SEND_WSC_NACK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %115, %108
  %122 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %129 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %132 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wps_fail_event(i32 %124, i32 129, i32 %127, i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %121, %115
  br label %179

137:                                              ; preds = %44
  %138 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %139 = call i32 @wps_validate_m8(%struct.wpabuf* %138)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %142, i32* %3, align 4
  br label %199

143:                                              ; preds = %137
  %144 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %145 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %146 = call i32 @wps_process_m8(%struct.wps_data* %144, %struct.wpabuf* %145, %struct.wps_parse_attr* %6)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @WPS_FAILURE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %143
  %151 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %152 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SEND_WSC_NACK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150, %143
  %157 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %158 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %161 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %164 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %167 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wps_fail_event(i32 %159, i32 128, i32 %162, i32 %165, i32 %169)
  br label %171

171:                                              ; preds = %156, %150
  br label %179

172:                                              ; preds = %44
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %178, i32* %3, align 4
  br label %199

179:                                              ; preds = %171, %136, %101, %64, %54
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @WPS_CONTINUE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 131
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %190 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @wpabuf_free(i32 %191)
  %193 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %194 = call i32 @wpabuf_dup(%struct.wpabuf* %193)
  %195 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %196 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %188, %183, %179
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %197, %172, %141, %106, %71, %62, %52, %37, %29, %14
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wps_validate_m2(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m2(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m2d(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m2d(%struct.wps_data*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m4(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m4(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_fail_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wps_validate_m6(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m6(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wps_validate_m8(%struct.wpabuf*) #1

declare dso_local i32 @wps_process_m8(%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
