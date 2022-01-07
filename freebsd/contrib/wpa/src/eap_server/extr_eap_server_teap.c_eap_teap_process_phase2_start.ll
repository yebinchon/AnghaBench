; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32, %struct.TYPE_4__*, i64, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.eap_teap_data = type { i32, i32, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EAP-TEAP: Phase 2 Identity not found in the user database\00", align 1
@EAP_TYPE_NONE = common dso_local global i32 0, align 4
@PHASE2_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"EAP-TEAP: Used PAC and identity already known - skip inner auth\00", align 1
@CRYPTO_BINDING = common dso_local global i32 0, align 4
@PHASE2_BASIC_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"EAP-TEAP: Identity already known - skip Phase 2 Identity Request\00", align 1
@PHASE2_ID = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*)* @eap_teap_process_phase2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_process_phase2_start(%struct.eap_sm* %0, %struct.eap_teap_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %5, align 8
  %7 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %8 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %98

11:                                               ; preds = %2
  %12 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %17 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %20 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %27 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %31 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %35 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @eap_user_get(%struct.eap_sm* %30, i32* %33, i64 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %11
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %42 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @wpa_hexdump_ascii(i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32* %43, i64 %46)
  %48 = load i32, i32* @EAP_TYPE_NONE, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %50 = load i32, i32* @PHASE2_METHOD, align 4
  %51 = call i32 @eap_teap_state(%struct.eap_teap_data* %49, i32 %50)
  br label %97

52:                                               ; preds = %11
  %53 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %54 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %64 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @eap_teap_derive_cmk_basic_pw_auth(i32 %62, i32 %65)
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %68 = load i32, i32* @CRYPTO_BINDING, align 4
  %69 = call i32 @eap_teap_state(%struct.eap_teap_data* %67, i32 %68)
  store i32 1, i32* %3, align 4
  br label %118

70:                                               ; preds = %52
  %71 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %72 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %77 = load i32, i32* @PHASE2_BASIC_AUTH, align 4
  %78 = call i32 @eap_teap_state(%struct.eap_teap_data* %76, i32 %77)
  store i32 1, i32* %3, align 4
  br label %118

79:                                               ; preds = %70
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %83 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %91 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %93 = load i32, i32* @PHASE2_METHOD, align 4
  %94 = call i32 @eap_teap_state(%struct.eap_teap_data* %92, i32 %93)
  br label %95

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %39
  br label %113

98:                                               ; preds = %2
  %99 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %100 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %105 = load i32, i32* @PHASE2_BASIC_AUTH, align 4
  %106 = call i32 @eap_teap_state(%struct.eap_teap_data* %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %118

107:                                              ; preds = %98
  %108 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %109 = load i32, i32* @PHASE2_ID, align 4
  %110 = call i32 @eap_teap_state(%struct.eap_teap_data* %108, i32 %109)
  %111 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %115 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @eap_teap_phase2_init(%struct.eap_sm* %114, %struct.eap_teap_data* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %103, %75, %57
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i64, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_teap_derive_cmk_basic_pw_auth(i32, i32) #1

declare dso_local i32 @eap_teap_phase2_init(%struct.eap_sm*, %struct.eap_teap_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
