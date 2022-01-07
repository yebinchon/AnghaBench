; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i64, i64, %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data* }

@PRIVSEP_CMD_UNREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wpa_driver_privsep_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_privsep_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpa_driver_privsep_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %5, %struct.wpa_driver_privsep_data** %3, align 8
  %6 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %12 = load i32, i32* @PRIVSEP_CMD_UNREGISTER, align 4
  %13 = call i32 @wpa_priv_reg_cmd(%struct.wpa_driver_privsep_data* %11, i32 %12)
  %14 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @eloop_unregister_read_sock(i64 %16)
  %18 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @close(i64 %20)
  br label %22

22:                                               ; preds = %10, %1
  %23 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %23, i32 0, i32 3
  %25 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %24, align 8
  %26 = icmp ne %struct.wpa_driver_privsep_data* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %28, i32 0, i32 3
  %30 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %29, align 8
  %31 = call i32 @unlink(%struct.wpa_driver_privsep_data* %30)
  %32 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %32, i32 0, i32 3
  %34 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %33, align 8
  %35 = call i32 @os_free(%struct.wpa_driver_privsep_data* %34)
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @eloop_unregister_read_sock(i64 %44)
  %46 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @close(i64 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %51, i32 0, i32 2
  %53 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %52, align 8
  %54 = icmp ne %struct.wpa_driver_privsep_data* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %57 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %56, i32 0, i32 2
  %58 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %57, align 8
  %59 = call i32 @unlink(%struct.wpa_driver_privsep_data* %58)
  %60 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %61 = getelementptr inbounds %struct.wpa_driver_privsep_data, %struct.wpa_driver_privsep_data* %60, i32 0, i32 2
  %62 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %61, align 8
  %63 = call i32 @os_free(%struct.wpa_driver_privsep_data* %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %3, align 8
  %66 = call i32 @os_free(%struct.wpa_driver_privsep_data* %65)
  ret void
}

declare dso_local i32 @wpa_priv_reg_cmd(%struct.wpa_driver_privsep_data*, i32) #1

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @unlink(%struct.wpa_driver_privsep_data*) #1

declare dso_local i32 @os_free(%struct.wpa_driver_privsep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
