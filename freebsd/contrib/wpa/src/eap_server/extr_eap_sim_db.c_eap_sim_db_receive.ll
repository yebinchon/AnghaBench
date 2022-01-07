; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EAP-SIM DB: Received from an external source\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-SIM DB: No get_complete_cb registered\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-SIM DB: External response=%s for IMSI %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SIM-RESP-AUTH\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"AKA-RESP-AUTH\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"EAP-SIM DB: Unknown external response '%s'\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"EAP-SIM DB: Failed to parse response string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @eap_sim_db_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_db_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.eap_sim_db_data*, align 8
  %8 = alloca [1000 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.eap_sim_db_data*
  store %struct.eap_sim_db_data* %14, %struct.eap_sim_db_data** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %17 = call i32 @recv(i32 %15, i8* %16, i32 999, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %91

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @wpa_hexdump_ascii_key(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %91

33:                                               ; preds = %21
  %34 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %7, align 8
  %35 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %91

41:                                               ; preds = %33
  %42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i64 0, i64 0
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @os_strchr(i8* %43, i8 signext 32)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %88

48:                                               ; preds = %41
  %49 = load i8*, i8** %9, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @os_strchr(i8* %52, i8 signext 32)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %88

57:                                               ; preds = %48
  %58 = load i8*, i8** %9, align 8
  store i8 0, i8* %58, align 1
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i64 @os_strcmp(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i32 @eap_sim_db_sim_resp_auth(%struct.eap_sim_db_data* %67, i8* %68, i8* %70)
  br label %87

72:                                               ; preds = %57
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @os_strcmp(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %7, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 @eap_sim_db_aka_resp_auth(%struct.eap_sim_db_data* %77, i8* %78, i8* %80)
  br label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @MSG_INFO, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %66
  br label %91

88:                                               ; preds = %56, %47
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %87, %38, %32, %20
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @eap_sim_db_sim_resp_auth(%struct.eap_sim_db_data*, i8*, i8*) #1

declare dso_local i32 @eap_sim_db_aka_resp_auth(%struct.eap_sim_db_data*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
