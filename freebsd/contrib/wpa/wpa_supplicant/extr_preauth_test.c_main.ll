; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_preauth_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.preauth_test_data = type { i32, i64, %struct.TYPE_4__*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@wpa_debug_level = common dso_local global i64 0, align 8
@wpa_debug_show_keys = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"usage: preauth_test <conf> <target MAC address> <ifname>\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to parse target address '%s'.\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register EAP methods\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to initialize event loop\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to parse configuration file '%s'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"No networks defined.\0A\00", align 1
@.str.6 = private unnamed_addr constant [260 x i8] c"Failed to initialize control interface '%s'.\0AYou may have another preauth_test process already running or the file was\0Aleft by an unclean termination of preauth_test in which case you will need\0Ato manually remove this file before starting preauth_test again.\0A\00", align 1
@eapol_test_timeout = common dso_local global i32 0, align 4
@eapol_test_poll = common dso_local global i32 0, align 4
@eapol_test_terminate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.wpa_supplicant, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.preauth_test_data, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i64 (...) @os_program_init()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

19:                                               ; preds = %2
  %20 = bitcast %struct.preauth_test_data* %10 to %struct.wpa_supplicant*
  %21 = call i32 @os_memset(%struct.wpa_supplicant* %20, i32 0, i32 32)
  store i64 0, i64* @wpa_debug_level, align 8
  store i32 1, i32* @wpa_debug_show_keys, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

26:                                               ; preds = %19
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @hwaddr_aton(i8* %29, i32* %15)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

37:                                               ; preds = %26
  %38 = call i64 (...) @eap_register_methods()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

43:                                               ; preds = %37
  %44 = call i64 (...) @eloop_init()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @MSG_ERROR, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

49:                                               ; preds = %43
  %50 = call i32 @os_memset(%struct.wpa_supplicant* %6, i32 0, i32 32)
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.TYPE_4__* @wpa_config_read(i8* %53, i32* null)
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %55, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp eq %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = icmp eq %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

72:                                               ; preds = %64
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @wpa_init_conf(%struct.wpa_supplicant* %6, i8* %75)
  %77 = call i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant* %6)
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 3
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([260 x i8], [260 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

88:                                               ; preds = %72
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = call i64 @wpa_supplicant_scard_init(%struct.wpa_supplicant* %6, %struct.TYPE_3__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i64 @rsn_preauth_init(i32 %98, i32* %15, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

107:                                              ; preds = %96
  %108 = load i32, i32* @eapol_test_timeout, align 4
  %109 = bitcast %struct.preauth_test_data* %10 to %struct.wpa_supplicant*
  %110 = call i32 @eloop_register_timeout(i32 30, i32 0, i32 %108, %struct.wpa_supplicant* %109, i32* null)
  %111 = load i32, i32* @eapol_test_poll, align 4
  %112 = call i32 @eloop_register_timeout(i32 0, i32 100000, i32 %111, %struct.wpa_supplicant* %6, i32* null)
  %113 = load i32, i32* @eapol_test_terminate, align 4
  %114 = call i32 @eloop_register_signal_terminate(i32 %113, %struct.wpa_supplicant* %6)
  %115 = load i32, i32* @eapol_test_terminate, align 4
  %116 = call i32 @eloop_register_signal_reconfig(i32 %115, %struct.wpa_supplicant* %6)
  %117 = call i32 (...) @eloop_run()
  %118 = getelementptr inbounds %struct.preauth_test_data, %struct.preauth_test_data* %10, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  store i32 -2, i32* %7, align 4
  br label %129

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @pmksa_cache_set_current(i32 %124, i32* null, i32* %15, i32* null, i32 0, i32* null, i32 0)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 0, i32 -3
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %122, %121
  %130 = call i32 @test_eapol_clean(%struct.wpa_supplicant* %6)
  %131 = call i32 (...) @eap_peer_unregister_methods()
  %132 = call i32 (...) @eloop_destroy()
  %133 = call i32 (...) @os_program_deinit()
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %129, %106, %95, %82, %70, %59, %46, %40, %32, %24, %18
  %136 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_program_init(...) #2

declare dso_local i32 @os_memset(%struct.wpa_supplicant*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i64 @eap_register_methods(...) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @eloop_init(...) #2

declare dso_local %struct.TYPE_4__* @wpa_config_read(i8*, i32*) #2

declare dso_local i32 @wpa_init_conf(%struct.wpa_supplicant*, i8*) #2

declare dso_local i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant*) #2

declare dso_local i64 @wpa_supplicant_scard_init(%struct.wpa_supplicant*, %struct.TYPE_3__*) #2

declare dso_local i64 @rsn_preauth_init(i32, i32*, i32*) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @eloop_register_signal_terminate(i32, %struct.wpa_supplicant*) #2

declare dso_local i32 @eloop_register_signal_reconfig(i32, %struct.wpa_supplicant*) #2

declare dso_local i32 @eloop_run(...) #2

declare dso_local i64 @pmksa_cache_set_current(i32, i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @test_eapol_clean(%struct.wpa_supplicant*) #2

declare dso_local i32 @eap_peer_unregister_methods(...) #2

declare dso_local i32 @eloop_destroy(...) #2

declare dso_local i32 @os_program_deinit(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
