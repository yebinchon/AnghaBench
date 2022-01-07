; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_auth/extr_eapol_auth_sm.c_eapol_auth_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i32, i32, i64, i32, i32, i32, i32*, i32*, i32, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, %struct.eapol_authenticator*, i32 }
%struct.eapol_authenticator = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.wpabuf*, %struct.wpabuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IEEE 802.1X state machine allocation failed\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@AUTH_PAE_INITIALIZE = common dso_local global i32 0, align 4
@AUTH_PAE_DEFAULT_quietPeriod = common dso_local global i32 0, align 4
@AUTH_PAE_DEFAULT_reAuthMax = common dso_local global i32 0, align 4
@BE_AUTH_INITIALIZE = common dso_local global i32 0, align 4
@BE_AUTH_DEFAULT_serverTimeout = common dso_local global i32 0, align 4
@REAUTH_TIMER_INITIALIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AUTH_KEY_TX_NO_KEY_TRANSMIT = common dso_local global i32 0, align 4
@KEY_RX_NO_KEY_RECEIVE = common dso_local global i32 0, align 4
@CTRL_DIR_IN_OR_BOTH = common dso_local global i32 0, align 4
@Auto = common dso_local global i32 0, align 4
@eapol_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eapol_state_machine* @eapol_auth_alloc(%struct.eapol_authenticator* %0, i32* %1, i32 %2, %struct.wpabuf* %3, %struct.wpabuf* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.eapol_state_machine*, align 8
  %10 = alloca %struct.eapol_authenticator*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.eapol_state_machine*, align 8
  %19 = alloca %struct.eap_config, align 8
  store %struct.eapol_authenticator* %0, %struct.eapol_authenticator** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %20 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %21 = icmp eq %struct.eapol_authenticator* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store %struct.eapol_state_machine* null, %struct.eapol_state_machine** %9, align 8
  br label %326

23:                                               ; preds = %8
  %24 = call %struct.eapol_state_machine* @os_zalloc(i32 144)
  store %struct.eapol_state_machine* %24, %struct.eapol_state_machine** %18, align 8
  %25 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %26 = icmp eq %struct.eapol_state_machine* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.eapol_state_machine* null, %struct.eapol_state_machine** %9, align 8
  br label %326

30:                                               ; preds = %23
  %31 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %32 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %34 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %33, i32 0, i32 24
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @os_memcpy(i32 %35, i32* %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %41 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %43 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %44 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %43, i32 0, i32 23
  store %struct.eapol_authenticator* %42, %struct.eapol_authenticator** %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %47 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %46, i32 0, i32 22
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @AUTH_PAE_INITIALIZE, align 4
  %49 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %50 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %49, i32 0, i32 21
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AUTH_PAE_DEFAULT_quietPeriod, align 4
  %52 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %53 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @AUTH_PAE_DEFAULT_reAuthMax, align 4
  %55 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %56 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %55, i32 0, i32 19
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @BE_AUTH_INITIALIZE, align 4
  %58 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %59 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %58, i32 0, i32 18
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @BE_AUTH_DEFAULT_serverTimeout, align 4
  %61 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %62 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @REAUTH_TIMER_INITIALIZE, align 4
  %64 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %65 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 8
  %66 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %67 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %71 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %73 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %30
  %78 = load i8*, i8** @TRUE, align 8
  br label %81

79:                                               ; preds = %30
  %80 = load i8*, i8** @FALSE, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i8* [ %78, %77 ], [ %80, %79 ]
  %83 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %84 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %83, i32 0, i32 15
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @AUTH_KEY_TX_NO_KEY_TRANSMIT, align 4
  %86 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %87 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %86, i32 0, i32 14
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @KEY_RX_NO_KEY_RECEIVE, align 4
  %89 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %90 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @CTRL_DIR_IN_OR_BOTH, align 4
  %92 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %93 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @Auto, align 4
  %95 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %96 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 8
  %97 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %98 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 27
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %81
  %103 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %104 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %109 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107, %102
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %116 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %115, i32 0, i32 10
  store i8* %114, i8** %116, align 8
  br label %121

117:                                              ; preds = %107, %81
  %118 = load i8*, i8** @FALSE, align 8
  %119 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %120 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %119, i32 0, i32 10
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %123 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 27
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i8*, i8** @FALSE, align 8
  %129 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %130 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %121
  %132 = load i8*, i8** @TRUE, align 8
  %133 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %134 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %133, i32 0, i32 9
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = call i32 @os_memset(%struct.eap_config* %19, i32 0, i32 128)
  %137 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %138 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 26
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 27
  store i32 %140, i32* %141, align 8
  %142 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %143 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 25
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 26
  store i32 %145, i32* %146, align 4
  %147 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %148 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 24
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 25
  store i32 %150, i32* %151, align 8
  %152 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %153 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 23
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 24
  store i32 %155, i32* %156, align 4
  %157 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %158 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 22
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 23
  store i32 %160, i32* %161, align 8
  %162 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %163 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 21
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 22
  store i32 %165, i32* %166, align 4
  %167 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %168 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 20
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 21
  store i32 %170, i32* %171, align 8
  %172 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %173 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 19
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 20
  store i32 %175, i32* %176, align 4
  %177 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %178 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 18
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 19
  store i32 %180, i32* %181, align 8
  %182 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %183 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 17
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 18
  store i32 %185, i32* %186, align 4
  %187 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %188 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 16
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 17
  store i32 %190, i32* %191, align 8
  %192 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %193 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 15
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 16
  store i32 %195, i32* %196, align 4
  %197 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %198 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 14
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 15
  store i32 %200, i32* %201, align 8
  %202 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %203 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 14
  store i32 %205, i32* %206, align 4
  %207 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %208 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 13
  store i32 %210, i32* %211, align 8
  %212 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %213 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 12
  store i32 %215, i32* %216, align 4
  %217 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %218 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 11
  store i32 %220, i32* %221, align 8
  %222 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %223 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 10
  store %struct.wpabuf* %222, %struct.wpabuf** %223, align 8
  %224 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %225 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 9
  store %struct.wpabuf* %224, %struct.wpabuf** %225, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 8
  store i32* %226, i32** %227, align 8
  %228 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %229 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 7
  store i32 %231, i32* %232, align 4
  %233 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %234 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 6
  store i32 %236, i32* %237, align 8
  %238 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %239 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 5
  store i32 %241, i32* %242, align 4
  %243 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %244 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 4
  store i32 %246, i32* %247, align 8
  %248 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %249 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 3
  store i32 %251, i32* %252, align 4
  %253 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %254 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 2
  store i32 %256, i32* %257, align 8
  %258 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %259 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 1
  store i32 %261, i32* %262, align 4
  %263 = load %struct.eapol_authenticator*, %struct.eapol_authenticator** %10, align 8
  %264 = getelementptr inbounds %struct.eapol_authenticator, %struct.eapol_authenticator* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.eap_config, %struct.eap_config* %19, i32 0, i32 0
  store i32 %266, i32* %267, align 8
  %268 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %269 = call i32* @eap_server_sm_init(%struct.eapol_state_machine* %268, i32* @eapol_cb, %struct.eap_config* %19)
  %270 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %271 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %270, i32 0, i32 7
  store i32* %269, i32** %271, align 8
  %272 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %273 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %272, i32 0, i32 7
  %274 = load i32*, i32** %273, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %135
  %277 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %278 = call i32 @eapol_auth_free(%struct.eapol_state_machine* %277)
  store %struct.eapol_state_machine* null, %struct.eapol_state_machine** %9, align 8
  br label %326

279:                                              ; preds = %135
  %280 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %281 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @eap_get_interface(i32* %282)
  %284 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %285 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %284, i32 0, i32 8
  store i32 %283, i32* %285, align 8
  %286 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %287 = call i32 @eapol_auth_initialize(%struct.eapol_state_machine* %286)
  %288 = load i8*, i8** %16, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %306

290:                                              ; preds = %279
  %291 = load i8*, i8** %16, align 8
  %292 = call i64 @os_strdup(i8* %291)
  %293 = inttoptr i64 %292 to i32*
  %294 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %295 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %294, i32 0, i32 6
  store i32* %293, i32** %295, align 8
  %296 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %297 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %296, i32 0, i32 6
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %290
  %301 = load i8*, i8** %16, align 8
  %302 = call i32 @os_strlen(i8* %301)
  %303 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %304 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %300, %290
  br label %306

306:                                              ; preds = %305, %279
  %307 = load i8*, i8** %17, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load i8*, i8** %17, align 8
  %311 = load i8*, i8** %17, align 8
  %312 = call i32 @os_strlen(i8* %311)
  %313 = call i32 @wpabuf_alloc_copy(i8* %310, i32 %312)
  %314 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %315 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %314, i32 0, i32 4
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %309, %306
  %317 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %318 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %317, i32 0, i32 3
  %319 = call i64 @radius_gen_session_id(i32* %318, i32 4)
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  %323 = call i32 @eapol_auth_free(%struct.eapol_state_machine* %322)
  store %struct.eapol_state_machine* null, %struct.eapol_state_machine** %9, align 8
  br label %326

324:                                              ; preds = %316
  %325 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %18, align 8
  store %struct.eapol_state_machine* %325, %struct.eapol_state_machine** %9, align 8
  br label %326

326:                                              ; preds = %324, %321, %276, %27, %22
  %327 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %9, align 8
  ret %struct.eapol_state_machine* %327
}

declare dso_local %struct.eapol_state_machine* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_memset(%struct.eap_config*, i32, i32) #1

declare dso_local i32* @eap_server_sm_init(%struct.eapol_state_machine*, i32*, %struct.eap_config*) #1

declare dso_local i32 @eapol_auth_free(%struct.eapol_state_machine*) #1

declare dso_local i32 @eap_get_interface(i32*) #1

declare dso_local i32 @eapol_auth_initialize(%struct.eapol_state_machine*) #1

declare dso_local i64 @os_strdup(i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpabuf_alloc_copy(i8*, i32) #1

declare dso_local i64 @radius_gen_session_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
