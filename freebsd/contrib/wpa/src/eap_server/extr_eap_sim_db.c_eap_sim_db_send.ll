; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32 }

@errno = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"send[EAP-SIM DB UNIX]: %s\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-SIM DB: Reconnected to the external server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sim_db_data*, i8*, i64)* @eap_sim_db_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_db_send(%struct.eap_sim_db_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_db_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @send(i32 %11, i8* %12, i64 %13, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EDESTADDRREQ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ECONNREFUSED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34, %30, %26, %22
  %39 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %40 = call i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data* %39)
  %41 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %42 = call i64 @eap_sim_db_open_socket(%struct.eap_sim_db_data* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @send(i32 %50, i8* %51, i64 %52, i32 0)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %4, align 4
  br label %62

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %34
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %55, %44
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data*) #1

declare dso_local i64 @eap_sim_db_open_socket(%struct.eap_sim_db_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
