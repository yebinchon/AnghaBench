; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_resp_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_build_resp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32*, %struct.wpabuf*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.wpabuf = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DPP: Build Authentication Response\00", align 1
@DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_NONCE_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_STATUS_AUTH_RESP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32)* @dpp_auth_build_resp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_auth_build_resp_status(%struct.dpp_authentication* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %11 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %19 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %24 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  br label %34

33:                                               ; preds = %15
  store i32* null, i32** %8, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %36 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %41 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %49 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.wpabuf* @dpp_auth_build_resp(%struct.dpp_authentication* %38, i32 %39, i32* null, i32 %44, i32* %45, i32* %46, i32* null, i32* %47, i32* null, i32 0, i32 %50)
  store %struct.wpabuf* %51, %struct.wpabuf** %6, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %53 = icmp ne %struct.wpabuf* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %63

55:                                               ; preds = %34
  %56 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %57 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %56, i32 0, i32 1
  %58 = load %struct.wpabuf*, %struct.wpabuf** %57, align 8
  %59 = call i32 @wpabuf_free(%struct.wpabuf* %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %61 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %62 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %61, i32 0, i32 1
  store %struct.wpabuf* %60, %struct.wpabuf** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %55, %54, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @dpp_auth_build_resp(%struct.dpp_authentication*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
