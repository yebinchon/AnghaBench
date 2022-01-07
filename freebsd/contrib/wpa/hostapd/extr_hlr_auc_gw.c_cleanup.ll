; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { %struct.milenage_parameters* }
%struct.gsm_triplet = type { %struct.gsm_triplet* }

@update_milenage = common dso_local global i64 0, align 8
@milenage_file = common dso_local global i64 0, align 8
@sqn_changes = common dso_local global i64 0, align 8
@gsm_db = common dso_local global %struct.milenage_parameters* null, align 8
@milenage_db = common dso_local global %struct.milenage_parameters* null, align 8
@serv_sock = common dso_local global i64 0, align 8
@socket_path = common dso_local global i64 0, align 8
@sqlite_db = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = alloca %struct.gsm_triplet*, align 8
  %2 = alloca %struct.gsm_triplet*, align 8
  %3 = alloca %struct.milenage_parameters*, align 8
  %4 = alloca %struct.milenage_parameters*, align 8
  %5 = load i64, i64* @update_milenage, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i64, i64* @milenage_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, i64* @sqn_changes, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @milenage_file, align 8
  %15 = call i32 @update_milenage_file(i64 %14)
  br label %16

16:                                               ; preds = %13, %10, %7, %0
  %17 = load %struct.milenage_parameters*, %struct.milenage_parameters** @gsm_db, align 8
  %18 = bitcast %struct.milenage_parameters* %17 to %struct.gsm_triplet*
  store %struct.gsm_triplet* %18, %struct.gsm_triplet** %1, align 8
  br label %19

19:                                               ; preds = %22, %16
  %20 = load %struct.gsm_triplet*, %struct.gsm_triplet** %1, align 8
  %21 = icmp ne %struct.gsm_triplet* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.gsm_triplet*, %struct.gsm_triplet** %1, align 8
  store %struct.gsm_triplet* %23, %struct.gsm_triplet** %2, align 8
  %24 = load %struct.gsm_triplet*, %struct.gsm_triplet** %1, align 8
  %25 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %24, i32 0, i32 0
  %26 = load %struct.gsm_triplet*, %struct.gsm_triplet** %25, align 8
  store %struct.gsm_triplet* %26, %struct.gsm_triplet** %1, align 8
  %27 = load %struct.gsm_triplet*, %struct.gsm_triplet** %2, align 8
  %28 = bitcast %struct.gsm_triplet* %27 to %struct.milenage_parameters*
  %29 = call i32 @os_free(%struct.milenage_parameters* %28)
  br label %19

30:                                               ; preds = %19
  %31 = load %struct.milenage_parameters*, %struct.milenage_parameters** @milenage_db, align 8
  store %struct.milenage_parameters* %31, %struct.milenage_parameters** %3, align 8
  br label %32

32:                                               ; preds = %35, %30
  %33 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  %34 = icmp ne %struct.milenage_parameters* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  store %struct.milenage_parameters* %36, %struct.milenage_parameters** %4, align 8
  %37 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  %38 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %37, i32 0, i32 0
  %39 = load %struct.milenage_parameters*, %struct.milenage_parameters** %38, align 8
  store %struct.milenage_parameters* %39, %struct.milenage_parameters** %3, align 8
  %40 = load %struct.milenage_parameters*, %struct.milenage_parameters** %4, align 8
  %41 = call i32 @os_free(%struct.milenage_parameters* %40)
  br label %32

42:                                               ; preds = %32
  %43 = load i64, i64* @serv_sock, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @serv_sock, align 8
  %47 = call i32 @close(i64 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @socket_path, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* @socket_path, align 8
  %53 = call i32 @unlink(i64 %52)
  br label %54

54:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @update_milenage_file(i64) #1

declare dso_local i32 @os_free(%struct.milenage_parameters*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @unlink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
