; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { %struct.eap_sim_db_pending*, %struct.eap_sim_reauth*, %struct.eap_sim_pseudonym*, %struct.eap_sim_db_data*, i32* }
%struct.eap_sim_db_pending = type { %struct.eap_sim_db_pending* }
%struct.eap_sim_reauth = type { %struct.eap_sim_reauth* }
%struct.eap_sim_pseudonym = type { %struct.eap_sim_pseudonym* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sim_db_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eap_sim_db_data*, align 8
  %4 = alloca %struct.eap_sim_pseudonym*, align 8
  %5 = alloca %struct.eap_sim_pseudonym*, align 8
  %6 = alloca %struct.eap_sim_reauth*, align 8
  %7 = alloca %struct.eap_sim_reauth*, align 8
  %8 = alloca %struct.eap_sim_db_pending*, align 8
  %9 = alloca %struct.eap_sim_db_pending*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.eap_sim_db_data*
  store %struct.eap_sim_db_data* %11, %struct.eap_sim_db_data** %3, align 8
  %12 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %13 = call i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data* %12)
  %14 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %15 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %14, i32 0, i32 3
  %16 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %15, align 8
  %17 = call i32 @os_free(%struct.eap_sim_db_data* %16)
  %18 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %19 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %18, i32 0, i32 2
  %20 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %19, align 8
  store %struct.eap_sim_pseudonym* %20, %struct.eap_sim_pseudonym** %4, align 8
  br label %21

21:                                               ; preds = %24, %1
  %22 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %4, align 8
  %23 = icmp ne %struct.eap_sim_pseudonym* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %4, align 8
  store %struct.eap_sim_pseudonym* %25, %struct.eap_sim_pseudonym** %5, align 8
  %26 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %4, align 8
  %27 = getelementptr inbounds %struct.eap_sim_pseudonym, %struct.eap_sim_pseudonym* %26, i32 0, i32 0
  %28 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %27, align 8
  store %struct.eap_sim_pseudonym* %28, %struct.eap_sim_pseudonym** %4, align 8
  %29 = load %struct.eap_sim_pseudonym*, %struct.eap_sim_pseudonym** %5, align 8
  %30 = call i32 @eap_sim_db_free_pseudonym(%struct.eap_sim_pseudonym* %29)
  br label %21

31:                                               ; preds = %21
  %32 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %33 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %32, i32 0, i32 1
  %34 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %33, align 8
  store %struct.eap_sim_reauth* %34, %struct.eap_sim_reauth** %6, align 8
  br label %35

35:                                               ; preds = %38, %31
  %36 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %6, align 8
  %37 = icmp ne %struct.eap_sim_reauth* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %6, align 8
  store %struct.eap_sim_reauth* %39, %struct.eap_sim_reauth** %7, align 8
  %40 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sim_reauth, %struct.eap_sim_reauth* %40, i32 0, i32 0
  %42 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %41, align 8
  store %struct.eap_sim_reauth* %42, %struct.eap_sim_reauth** %6, align 8
  %43 = load %struct.eap_sim_reauth*, %struct.eap_sim_reauth** %7, align 8
  %44 = call i32 @eap_sim_db_free_reauth(%struct.eap_sim_reauth* %43)
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %47 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %46, i32 0, i32 0
  %48 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %47, align 8
  store %struct.eap_sim_db_pending* %48, %struct.eap_sim_db_pending** %8, align 8
  br label %49

49:                                               ; preds = %52, %45
  %50 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %8, align 8
  %51 = icmp ne %struct.eap_sim_db_pending* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %8, align 8
  store %struct.eap_sim_db_pending* %53, %struct.eap_sim_db_pending** %9, align 8
  %54 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %8, align 8
  %55 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %54, i32 0, i32 0
  %56 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %55, align 8
  store %struct.eap_sim_db_pending* %56, %struct.eap_sim_db_pending** %8, align 8
  %57 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %58 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %9, align 8
  %59 = call i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data* %57, %struct.eap_sim_db_pending* %58)
  br label %49

60:                                               ; preds = %49
  %61 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %3, align 8
  %62 = call i32 @os_free(%struct.eap_sim_db_data* %61)
  ret void
}

declare dso_local i32 @eap_sim_db_close_socket(%struct.eap_sim_db_data*) #1

declare dso_local i32 @os_free(%struct.eap_sim_db_data*) #1

declare dso_local i32 @eap_sim_db_free_pseudonym(%struct.eap_sim_pseudonym*) #1

declare dso_local i32 @eap_sim_db_free_reauth(%struct.eap_sim_reauth*) #1

declare dso_local i32 @eap_sim_db_free_pending(%struct.eap_sim_db_data*, %struct.eap_sim_db_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
