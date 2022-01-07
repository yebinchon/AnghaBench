; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_permanent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_permanent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { %struct.eap_sim_pseudonym*, i64 }
%struct.eap_sim_pseudonym = type { i8*, %struct.eap_sim_pseudonym*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @eap_sim_db_get_permanent(%struct.eap_sim_db_data* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_sim_db_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eap_sim_pseudonym*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %8 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %7, i32 0, i32 0
  %9 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %8, align 8
  store %struct.eap_sim_pseudonym* %9, %struct.eap_sim_pseudonym** %6, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %6, align 8
  %12 = icmp ne %struct.eap_sim_pseudonym* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %6, align 8
  %15 = getelementptr inbounds %struct.eap_sim_pseudonym, %struct.eap_sim_pseudonym* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @os_strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sim_pseudonym, %struct.eap_sim_pseudonym* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %6, align 8
  %26 = getelementptr inbounds %struct.eap_sim_pseudonym, %struct.eap_sim_pseudonym* %25, i32 0, i32 1
  %27 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %26, align 8
  store %struct.eap_sim_pseudonym* %27, %struct.eap_sim_pseudonym** %6, align 8
  br label %10

28:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
