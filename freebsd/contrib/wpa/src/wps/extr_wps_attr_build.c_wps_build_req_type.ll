; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_req_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_attr_build.c_wps_build_req_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS:  * Request Type\00", align 1
@ATTR_REQUEST_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_req_type(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %8 = load i32, i32* @ATTR_REQUEST_TYPE, align 4
  %9 = call i32 @wpabuf_put_be16(%struct.wpabuf* %7, i32 %8)
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = call i32 @wpabuf_put_be16(%struct.wpabuf* %10, i32 1)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @wpabuf_put_u8(%struct.wpabuf* %12, i32 %13)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
