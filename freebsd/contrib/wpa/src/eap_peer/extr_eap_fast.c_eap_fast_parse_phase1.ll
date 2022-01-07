; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_phase1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"fast_provisioning=\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EAP-FAST: Automatic PAC provisioning mode: %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"fast_max_pac_list_len=\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Maximum PAC list length: %lu\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"fast_pac_format=binary\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"EAP-FAST: Using binary format for PAC list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_fast_data*, i8*)* @eap_fast_parse_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_parse_phase1(%struct.eap_fast_data* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_fast_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.eap_fast_data* %0, %struct.eap_fast_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @os_strstr(i8* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 18
  %13 = call i8* @atoi(i8* %12)
  %14 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %15 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %18 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %10, %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @os_strstr(i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 22
  %29 = call i8* @atoi(i8* %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %32 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %34 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %39 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %43 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %40, %21
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @os_strstr(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.eap_fast_data*, %struct.eap_fast_data** %3, align 8
  %54 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
