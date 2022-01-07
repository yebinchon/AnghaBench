; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_pending = type { i32, %struct.eap_sim_db_pending*, i32 }
%struct.eap_sim_db_data = type { %struct.eap_sim_db_pending* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eap_sim_db_pending* (%struct.eap_sim_db_data*, i8*, i32)* @eap_sim_db_get_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eap_sim_db_pending* @eap_sim_db_get_pending(%struct.eap_sim_db_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sim_db_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sim_db_pending*, align 8
  %8 = alloca %struct.eap_sim_db_pending*, align 8
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.eap_sim_db_pending* null, %struct.eap_sim_db_pending** %8, align 8
  %9 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %10 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %9, i32 0, i32 0
  %11 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %10, align 8
  store %struct.eap_sim_db_pending* %11, %struct.eap_sim_db_pending** %7, align 8
  br label %12

12:                                               ; preds = %44, %3
  %13 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %14 = icmp ne %struct.eap_sim_db_pending* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %17 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %23 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @os_strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %8, align 8
  %30 = icmp ne %struct.eap_sim_db_pending* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %33 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %32, i32 0, i32 1
  %34 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %33, align 8
  %35 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %8, align 8
  %36 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %35, i32 0, i32 1
  store %struct.eap_sim_db_pending* %34, %struct.eap_sim_db_pending** %36, align 8
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %39 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %38, i32 0, i32 1
  %40 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %39, align 8
  %41 = load %struct.eap_sim_db_data*, %struct.eap_sim_db_data** %4, align 8
  %42 = getelementptr inbounds %struct.eap_sim_db_data, %struct.eap_sim_db_data* %41, i32 0, i32 0
  store %struct.eap_sim_db_pending* %40, %struct.eap_sim_db_pending** %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  br label %49

44:                                               ; preds = %21, %15
  %45 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  store %struct.eap_sim_db_pending* %45, %struct.eap_sim_db_pending** %8, align 8
  %46 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  %47 = getelementptr inbounds %struct.eap_sim_db_pending, %struct.eap_sim_db_pending* %46, i32 0, i32 1
  %48 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %47, align 8
  store %struct.eap_sim_db_pending* %48, %struct.eap_sim_db_pending** %7, align 8
  br label %12

49:                                               ; preds = %43, %12
  %50 = load %struct.eap_sim_db_pending*, %struct.eap_sim_db_pending** %7, align 8
  ret %struct.eap_sim_db_pending* %50
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
