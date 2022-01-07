; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_get_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.upnp_pending_message*, i64 }
%struct.upnp_pending_message = type { i32, %struct.wpabuf*, %struct.upnp_pending_message* }

@WSC_MSG = common dso_local global i32 0, align 4
@WSC_ACK = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WPS: Unsupported state %d for building a message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_registrar_get_msg(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %52 [
    i32 135, label %9
    i32 134, label %22
    i32 133, label %27
    i32 132, label %32
    i32 131, label %37
    i32 136, label %42
    i32 130, label %47
  ]

9:                                                ; preds = %2
  %10 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %11 = call i32 @wps_get_dev_password(%struct.wps_data* %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %15 = call %struct.wpabuf* @wps_build_m2d(%struct.wps_data* %14)
  store %struct.wpabuf* %15, %struct.wpabuf** %5, align 8
  br label %19

16:                                               ; preds = %9
  %17 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %18 = call %struct.wpabuf* @wps_build_m2(%struct.wps_data* %17)
  store %struct.wpabuf* %18, %struct.wpabuf** %5, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @WSC_MSG, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %24 = call %struct.wpabuf* @wps_build_m2d(%struct.wps_data* %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %5, align 8
  %25 = load i32, i32* @WSC_MSG, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %29 = call %struct.wpabuf* @wps_build_m4(%struct.wps_data* %28)
  store %struct.wpabuf* %29, %struct.wpabuf** %5, align 8
  %30 = load i32, i32* @WSC_MSG, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %34 = call %struct.wpabuf* @wps_build_m6(%struct.wps_data* %33)
  store %struct.wpabuf* %34, %struct.wpabuf** %5, align 8
  %35 = load i32, i32* @WSC_MSG, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %58

37:                                               ; preds = %2
  %38 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %39 = call %struct.wpabuf* @wps_build_m8(%struct.wps_data* %38)
  store %struct.wpabuf* %39, %struct.wpabuf** %5, align 8
  %40 = load i32, i32* @WSC_MSG, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %44 = call %struct.wpabuf* @wps_build_wsc_ack(%struct.wps_data* %43)
  store %struct.wpabuf* %44, %struct.wpabuf** %5, align 8
  %45 = load i32, i32* @WSC_ACK, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %49 = call %struct.wpabuf* @wps_build_wsc_nack(%struct.wps_data* %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %5, align 8
  %50 = load i32, i32* @WSC_NACK, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %58

52:                                               ; preds = %2
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %56)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %58

58:                                               ; preds = %52, %47, %42, %37, %32, %27, %22, %19
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WSC_MSG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %65 = icmp ne %struct.wpabuf* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @wpabuf_free(i32 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %72 = call i32 @wpabuf_dup(%struct.wpabuf* %71)
  %73 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %74 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %63, %58
  %76 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %76
}

declare dso_local i32 @wps_get_dev_password(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m2d(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m2(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m4(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m6(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_m8(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_wsc_ack(%struct.wps_data*) #1

declare dso_local %struct.wpabuf* @wps_build_wsc_nack(%struct.wps_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
