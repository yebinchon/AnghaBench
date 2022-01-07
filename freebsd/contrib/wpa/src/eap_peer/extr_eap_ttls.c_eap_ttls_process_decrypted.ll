; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_decrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i32, i32, i32, i64 }
%struct.eap_method_ret = type { i32 }
%struct.ttls_parse_avp = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"EAP-TTLS: Phase 2 received unexpected tunneled data\00", align 1
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, i32, %struct.ttls_parse_avp*, %struct.wpabuf*, %struct.wpabuf**)* @eap_ttls_process_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_process_decrypted(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.ttls_parse_avp* %4, %struct.wpabuf* %5, %struct.wpabuf** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ttls_data*, align 8
  %11 = alloca %struct.eap_method_ret*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttls_parse_avp*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf**, align 8
  %16 = alloca %struct.wpabuf*, align 8
  %17 = alloca %struct.eap_peer_config*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %10, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ttls_parse_avp* %4, %struct.ttls_parse_avp** %13, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %14, align 8
  store %struct.wpabuf** %6, %struct.wpabuf*** %15, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %16, align 8
  %20 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %21 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %20)
  store %struct.eap_peer_config* %21, %struct.eap_peer_config** %17, align 8
  %22 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %23 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  switch i32 %25, label %45 [
    i32 131, label %26
    i32 129, label %35
    i32 130, label %42
    i32 128, label %42
    i32 132, label %42
  ]

26:                                               ; preds = %7
  %27 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %28 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %11, align 8
  %30 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %13, align 8
  %31 = call i32 @eap_ttls_process_phase2_eap(%struct.eap_sm* %27, %struct.eap_ttls_data* %28, %struct.eap_method_ret* %29, %struct.ttls_parse_avp* %30, %struct.wpabuf** %16)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %94

34:                                               ; preds = %26
  br label %45

35:                                               ; preds = %7
  %36 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %37 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %38 = load %struct.eap_method_ret*, %struct.eap_method_ret** %11, align 8
  %39 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %13, align 8
  %40 = call i32 @eap_ttls_process_phase2_mschapv2(%struct.eap_sm* %36, %struct.eap_ttls_data* %37, %struct.eap_method_ret* %38, %struct.ttls_parse_avp* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %8, align 4
  br label %94

42:                                               ; preds = %7, %7, %7
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %94

45:                                               ; preds = %7, %34
  %46 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %47 = icmp ne %struct.wpabuf* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %50 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %54 = call i64 @eap_ttls_encrypt_response(%struct.eap_sm* %49, %struct.eap_ttls_data* %50, %struct.wpabuf* %51, i32 %52, %struct.wpabuf** %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -1, i32* %8, align 4
  br label %94

57:                                               ; preds = %48
  br label %93

58:                                               ; preds = %45
  %59 = load %struct.eap_peer_config*, %struct.eap_peer_config** %17, align 8
  %60 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %58
  %64 = load %struct.eap_peer_config*, %struct.eap_peer_config** %17, align 8
  %65 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %63
  %69 = load %struct.eap_peer_config*, %struct.eap_peer_config** %17, align 8
  %70 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load %struct.eap_peer_config*, %struct.eap_peer_config** %17, align 8
  %75 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.eap_peer_config*, %struct.eap_peer_config** %17, align 8
  %80 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78, %73, %68, %63, %58
  %84 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %85 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @wpabuf_clear_free(i32 %86)
  %88 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %89 = call i32 @wpabuf_dup(%struct.wpabuf* %88)
  %90 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %10, align 8
  %91 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %78
  br label %93

93:                                               ; preds = %92, %57
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %56, %42, %35, %33
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @eap_ttls_process_phase2_eap(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.ttls_parse_avp*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_process_phase2_mschapv2(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.ttls_parse_avp*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_ttls_encrypt_response(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.wpabuf*, i32, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
