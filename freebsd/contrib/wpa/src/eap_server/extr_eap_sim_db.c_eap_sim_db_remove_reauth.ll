; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_remove_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_remove_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { %struct.eap_sim_reauth*, i64 }
%struct.eap_sim_reauth = type { %struct.eap_sim_reauth* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sim_db_remove_reauth(%struct.eap_sim_db_data* %0, %struct.eap_sim_reauth* %1) #0 {
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca %struct.eap_sim_reauth*, align 8
  %5 = alloca %struct.eap_sim_reauth*, align 8
  %6 = alloca %struct.eap_sim_reauth*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %3, align 8
  store %struct.eap_sim_reauth* %1, %struct.eap_sim_reauth** %4, align 8
  store %struct.eap_sim_reauth* null, %struct.eap_sim_reauth** %6, align 8
  %7 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %8 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %7, i32 0, i32 0
  %9 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %8, align 8
  store %struct.eap_sim_reauth* %9, %struct.eap_sim_reauth** %5, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %12 = icmp ne %struct.eap_sim_reauth* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %15 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %4, align 8
  %16 = icmp eq %struct.eap_sim_reauth* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %6, align 8
  %19 = icmp ne %struct.eap_sim_reauth* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %22 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %21, i32 0, i32 0
  %23 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %22, align 8
  %24 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %6, align 8
  %25 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %24, i32 0, i32 0
  store %struct.eap_sim_reauth* %23, %struct.eap_sim_reauth** %25, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %28 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %27, i32 0, i32 0
  %29 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %28, align 8
  %30 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %31 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %30, i32 0, i32 0
  store %struct.eap_sim_reauth* %29, %struct.eap_sim_reauth** %31, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %34 = call i32 @eap_sim_db_free_reauth(%struct.eap_sim_reauth* %33)
  br label %40

35:                                               ; preds = %13
  %36 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  store %struct.eap_sim_reauth* %36, %struct.eap_sim_reauth** %6, align 8
  %37 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %5, align 8
  %38 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %37, i32 0, i32 0
  %39 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %38, align 8
  store %struct.eap_sim_reauth* %39, %struct.eap_sim_reauth** %5, align 8
  br label %10

40:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @eap_sim_db_free_reauth(%struct.eap_sim_reauth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
