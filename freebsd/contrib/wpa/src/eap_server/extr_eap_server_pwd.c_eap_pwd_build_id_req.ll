; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_id_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_id_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i32, i32*, i32*, i32, i32, i32, i64, i64, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EAP-pwd: ID/Request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-pwd (server): password\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-pwd (server): salt\00", align 1
@EAP_PWD_PREP_SSHA1 = common dso_local global i32 0, align 4
@EAP_PWD_PREP_SSHA256 = common dso_local global i32 0, align 4
@EAP_PWD_PREP_SSHA512 = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"EAP-pwd (server): bad size %d for salted password\00", align 1
@EAP_PWD_PREP_MS = common dso_local global i32 0, align 4
@EAP_PWD_PREP_NONE = common dso_local global i32 0, align 4
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i32 0, align 4
@EAP_PWD_DEFAULT_PRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32)* @eap_pwd_build_id_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_build_id_req(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_pwd_data*, align 8
  %6 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %9, i32 0, i32 11
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %154

14:                                               ; preds = %3
  %15 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32* @wpabuf_alloc(i32 %20)
  %22 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %30 = load i32, i32* @FAILURE, align 4
  %31 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %29, i32 %30)
  br label %154

32:                                               ; preds = %14
  %33 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %34 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %33, i32 0, i32 5
  %35 = call i64 @os_get_random(i32* %34, i32 4)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %39 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @wpabuf_free(i32* %40)
  %42 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %45 = load i32, i32* @FAILURE, align 4
  %46 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %44, i32 %45)
  br label %154

47:                                               ; preds = %32
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %53 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %47
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %63 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %66 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @wpa_hexdump(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %60, %47
  %70 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %76 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %90 [
    i32 20, label %78
    i32 32, label %82
    i32 64, label %86
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @EAP_PWD_PREP_SSHA1, align 4
  %80 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %81 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  br label %99

82:                                               ; preds = %74
  %83 = load i32, i32* @EAP_PWD_PREP_SSHA256, align 4
  %84 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %85 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  br label %99

86:                                               ; preds = %74
  %87 = load i32, i32* @EAP_PWD_PREP_SSHA512, align 4
  %88 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %89 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %99

90:                                               ; preds = %74
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %93 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %97 = load i32, i32* @FAILURE, align 4
  %98 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %96, i32 %97)
  br label %154

99:                                               ; preds = %86, %82, %78
  br label %113

100:                                              ; preds = %69
  %101 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %102 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @EAP_PWD_PREP_MS, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @EAP_PWD_PREP_NONE, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %112 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %115 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %118 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @wpabuf_put_be16(i32* %116, i32 %119)
  %121 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %122 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @EAP_PWD_DEFAULT_RAND_FUNC, align 4
  %125 = call i32 @wpabuf_put_u8(i32* %123, i32 %124)
  %126 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %127 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @EAP_PWD_DEFAULT_PRF, align 4
  %130 = call i32 @wpabuf_put_u8(i32* %128, i32 %129)
  %131 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %132 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %135 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %134, i32 0, i32 5
  %136 = call i32 @wpabuf_put_data(i32* %133, i32* %135, i32 4)
  %137 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %138 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %141 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @wpabuf_put_u8(i32* %139, i32 %142)
  %144 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %145 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %148 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %151 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @wpabuf_put_data(i32* %146, i32* %149, i32 %152)
  br label %154

154:                                              ; preds = %113, %90, %37, %28, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

declare dso_local i32 @wpabuf_put_be16(i32*, i32) #1

declare dso_local i32 @wpabuf_put_u8(i32*, i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
