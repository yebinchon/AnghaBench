; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_sim_resp_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_sim_resp_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, i32 (i32, i32)* }
%struct.eap_sim_db_pending = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-SIM DB: No pending entry for the received message found\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-SIM DB: External server reported failure\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_SIM_MAX_CHAL = common dso_local global i32 0, align 4
@EAP_SIM_KC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"EAP-SIM DB: Authentication data parsed successfully - callback\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP-SIM DB: Failed to parse response string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sim_db_data*, i8*, i8*)* @eap_sim_db_sim_resp_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_sim_resp_auth(%struct.eap_sim_db_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.eap_sim_db_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.eap_sim_db_pending*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.eap_sim_db_pending* @eap_sim_db_get_pending(%struct.eap_sim_db_data* %12, i8* %13, i32 0)
  store %struct.eap_sim_db_pending* %14, %struct.eap_sim_db_pending** %10, align 8
  %15 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %16 = icmp eq %struct.eap_sim_db_pending* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %159

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @os_strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @FAILURE, align 4
  %29 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %30 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %32 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %33 = call i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data* %31, %struct.eap_sim_db_pending* %32)
  %34 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %35 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %34, i32 0, i32 1
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %38 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %41 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(i32 %39, i32 %42)
  br label %159

44:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %128, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @os_strchr(i8* %50, i8 signext 32)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @os_strchr(i8* %57, i8 signext 58)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %153

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %66 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %75 = call i64 @hexstr2bin(i8* %64, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %153

78:                                               ; preds = %62
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %7, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i8* @os_strchr(i8* %81, i8 signext 58)
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %153

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %90 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %99 = call i64 @hexstr2bin(i8* %88, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %153

102:                                              ; preds = %86
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %107 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GSM_RAND_LEN, align 4
  %116 = call i64 @hexstr2bin(i8* %105, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  br label %153

119:                                              ; preds = %102
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %129

125:                                              ; preds = %119
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %7, align 8
  br label %128

128:                                              ; preds = %125
  br label %45

129:                                              ; preds = %124, %45
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %132 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = load i32, i32* @SUCCESS, align 4
  %136 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %137 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = call i32 @wpa_printf(i32 %138, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %141 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %142 = call i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data* %140, %struct.eap_sim_db_pending* %141)
  %143 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %144 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %143, i32 0, i32 1
  %145 = load i32 (i32, i32)*, i32 (i32, i32)** %144, align 8
  %146 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %147 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %150 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %145(i32 %148, i32 %151)
  br label %159

153:                                              ; preds = %118, %101, %85, %77, %61
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = call i32 @wpa_printf(i32 %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %156 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %157 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  %158 = call i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data* %156, %struct.eap_sim_db_pending* %157)
  br label %159

159:                                              ; preds = %153, %129, %25, %17
  ret void
}

declare dso_local %struct.eap_sim_db_pending* @eap_sim_db_get_pending(%struct.eap_sim_db_data*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eap_sim_db_add_pending(%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
