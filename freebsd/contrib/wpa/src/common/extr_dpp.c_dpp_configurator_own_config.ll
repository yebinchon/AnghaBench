; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_own_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_own_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.dpp_authentication = type { i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DPP: No configurator specified\00", align 1
@dpp_curves = common dso_local global %struct.TYPE_6__* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DPP: Unsupported curve: %s\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"DPP: Building own configuration/connector with curve %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_configurator_own_config(%struct.dpp_authentication* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %10 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %11 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dpp_curves, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %24 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %23, i32 0, i32 3
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  br label %39

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.TYPE_6__* @dpp_get_curve_name(i8* %26)
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 3
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %29, align 8
  %30 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %31 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %4, align 4
  br label %92

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %42 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %48 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32* @dpp_gen_keypair(%struct.TYPE_6__* %49)
  %51 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %52 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %54 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %92

58:                                               ; preds = %39
  %59 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %60 = call i32 @dpp_copy_netaccesskey(%struct.dpp_authentication* %59)
  %61 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %62 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %65 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %67 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %68 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dpp_copy_csign(%struct.dpp_authentication* %66, i32 %71)
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call %struct.wpabuf* @dpp_build_conf_obj(%struct.dpp_authentication* %73, i32 %74)
  store %struct.wpabuf* %75, %struct.wpabuf** %8, align 8
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %77 = icmp ne %struct.wpabuf* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %58
  br label %86

79:                                               ; preds = %58
  %80 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %82 = call i32 @wpabuf_head(%struct.wpabuf* %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %84 = call i32 @wpabuf_len(%struct.wpabuf* %83)
  %85 = call i32 @dpp_parse_conf_obj(%struct.dpp_authentication* %80, i32 %82, i32 %84)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %79, %78
  %87 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %88 = call i32 @wpabuf_free(%struct.wpabuf* %87)
  %89 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %90 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %57, %34, %14
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @dpp_get_curve_name(i8*) #1

declare dso_local i32* @dpp_gen_keypair(%struct.TYPE_6__*) #1

declare dso_local i32 @dpp_copy_netaccesskey(%struct.dpp_authentication*) #1

declare dso_local i32 @dpp_copy_csign(%struct.dpp_authentication*, i32) #1

declare dso_local %struct.wpabuf* @dpp_build_conf_obj(%struct.dpp_authentication*, i32) #1

declare dso_local i32 @dpp_parse_conf_obj(%struct.dpp_authentication*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
