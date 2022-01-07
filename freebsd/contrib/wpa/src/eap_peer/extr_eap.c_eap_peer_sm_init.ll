; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32*, i32*, i32, i32, i32, i8*, %struct.eapol_callbacks*, i8* }
%struct.eapol_callbacks = type { i32 }
%struct.eap_config = type { i32, i32, i32, i32, i32, i32 }
%struct.tls_config = type { i32, i32, %struct.eap_sm*, i32, i32, i32, i32, i32 }

@EAP_CLIENT_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@eap_peer_sm_tls_event = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SSL: Failed to initialize TLS context.\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"SSL: Failed to initialize TLS context (2).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_sm* @eap_peer_sm_init(i8* %0, %struct.eapol_callbacks* %1, i8* %2, %struct.eap_config* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.eapol_callbacks*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.eap_config*, align 8
  %10 = alloca %struct.eap_sm*, align 8
  %11 = alloca %struct.tls_config, align 8
  store i8* %0, i8** %6, align 8
  store %struct.eapol_callbacks* %1, %struct.eapol_callbacks** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.eap_config* %3, %struct.eap_config** %9, align 8
  %12 = call %struct.eap_sm* @os_zalloc(i32 56)
  store %struct.eap_sm* %12, %struct.eap_sm** %10, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %14 = icmp eq %struct.eap_sm* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.eap_sm* null, %struct.eap_sm** %5, align 8
  br label %89

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %19 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.eapol_callbacks*, %struct.eapol_callbacks** %7, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 6
  store %struct.eapol_callbacks* %20, %struct.eapol_callbacks** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %25 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @EAP_CLIENT_TIMEOUT_DEFAULT, align 4
  %27 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %28 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %30 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %33 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %35 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %34, i32 0, i32 2
  %36 = call i32 @dl_list_init(i32* %35)
  %37 = call i32 @os_memset(%struct.tls_config* %11, i32 0, i32 40)
  %38 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %39 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 7
  store i32 %40, i32* %41, align 8
  %42 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %43 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 6
  store i32 %44, i32* %45, align 4
  %46 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %47 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %51 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @eap_peer_sm_tls_event, align 4
  %55 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %57 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 2
  store %struct.eap_sm* %56, %struct.eap_sm** %57, align 8
  %58 = load %struct.eap_config*, %struct.eap_config** %9, align 8
  %59 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %11, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = call i8* @tls_init(%struct.tls_config* %11)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %67 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %16
  %71 = load i32, i32* @MSG_WARNING, align 4
  %72 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %74 = call i32 @os_free(%struct.eap_sm* %73)
  store %struct.eap_sm* null, %struct.eap_sm** %5, align 8
  br label %89

75:                                               ; preds = %16
  %76 = call i8* @tls_init(%struct.tls_config* %11)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %79 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  %81 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @MSG_INFO, align 4
  %86 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %75
  %88 = load %struct.eap_sm*, %struct.eap_sm** %10, align 8
  store %struct.eap_sm* %88, %struct.eap_sm** %5, align 8
  br label %89

89:                                               ; preds = %87, %70, %15
  %90 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  ret %struct.eap_sm* %90
}

declare dso_local %struct.eap_sm* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32 @os_memset(%struct.tls_config*, i32, i32) #1

declare dso_local i8* @tls_init(%struct.tls_config*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
