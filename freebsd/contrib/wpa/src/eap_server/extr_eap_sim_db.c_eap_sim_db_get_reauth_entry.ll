; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_reauth_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_reauth_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_reauth = type { %struct.eap_sim_reauth*, i32 }
%struct.eap_sim_db_data = type { %struct.eap_sim_reauth*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eap_sim_reauth* @eap_sim_db_get_reauth_entry(%struct.eap_sim_db_data* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_sim_reauth*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %7 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %6, i32 0, i32 0
  %8 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %7, align 8
  store %struct.eap_sim_reauth* %8, %struct.eap_sim_reauth** %5, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %11 = icmp ne %struct.eap_sim_reauth* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %14 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @os_strcmp(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  %21 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %22 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %21, i32 0, i32 0
  %23 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %22, align 8
  store %struct.eap_sim_reauth* %23, %struct.eap_sim_reauth** %5, align 8
  br label %9

24:                                               ; preds = %19, %9
  %25 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  ret %struct.eap_sim_reauth* %25
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
