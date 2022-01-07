; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32, void (i8*, i8*)*, i32, %struct.eap_sim_db_data*, i32*, i8* }

@.str = private unnamed_addr constant [5 x i8] c" db=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"unix:\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-SIM DB: External database connection not available - will retry later\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_sim_db_data* @eap_sim_db_init(i8* %0, i32 %1, void (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.eap_sim_db_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.eap_sim_db_data*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i8*, i8*)* %2, void (i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call %struct.eap_sim_db_data* @os_zalloc(i32 48)
  store %struct.eap_sim_db_data* %12, %struct.eap_sim_db_data** %10, align 8
  %13 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %14 = icmp eq %struct.eap_sim_db_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.eap_sim_db_data* null, %struct.eap_sim_db_data** %5, align 8
  br label %71

16:                                               ; preds = %4
  %17 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %18 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %8, align 8
  %20 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %21 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %20, i32 0, i32 1
  store void (i8*, i8*)* %19, void (i8*, i8*)** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %24 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %27 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.eap_sim_db_data* @os_strdup(i8* %28)
  %30 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %31 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %30, i32 0, i32 3
  store %struct.eap_sim_db_data* %29, %struct.eap_sim_db_data** %31, align 8
  %32 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %33 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %32, i32 0, i32 3
  %34 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %33, align 8
  %35 = icmp eq %struct.eap_sim_db_data* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %62

37:                                               ; preds = %16
  %38 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %39 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %38, i32 0, i32 3
  %40 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %39, align 8
  %41 = call i8* @os_strstr(%struct.eap_sim_db_data* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %48 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %47, i32 0, i32 3
  %49 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %48, align 8
  %50 = call i64 @os_strncmp(%struct.eap_sim_db_data* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %54 = call i64 @eap_sim_db_open_socket(%struct.eap_sim_db_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  store %struct.eap_sim_db_data* %61, %struct.eap_sim_db_data** %5, align 8
  br label %71

62:                                               ; preds = %36
  %63 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %64 = call i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data* %63)
  %65 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %66 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %65, i32 0, i32 3
  %67 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %66, align 8
  %68 = call i32 @os_free(%struct.eap_sim_db_data* %67)
  %69 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %10, align 8
  %70 = call i32 @os_free(%struct.eap_sim_db_data* %69)
  store %struct.eap_sim_db_data* null, %struct.eap_sim_db_data** %5, align 8
  br label %71

71:                                               ; preds = %62, %60, %15
  %72 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %5, align 8
  ret %struct.eap_sim_db_data* %72
}

declare dso_local %struct.eap_sim_db_data* @os_zalloc(i32) #1

declare dso_local %struct.eap_sim_db_data* @os_strdup(i8*) #1

declare dso_local i8* @os_strstr(%struct.eap_sim_db_data*, i8*) #1

declare dso_local i64 @os_strncmp(%struct.eap_sim_db_data*, i8*, i32) #1

declare dso_local i64 @eap_sim_db_open_socket(%struct.eap_sim_db_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data*) #1

declare dso_local i32 @os_free(%struct.eap_sim_db_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
