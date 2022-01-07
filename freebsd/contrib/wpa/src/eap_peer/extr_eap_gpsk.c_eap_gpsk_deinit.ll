; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_gpsk_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_gpsk_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_gpsk_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_gpsk_data*
  store %struct.eap_gpsk_data* %7, %struct.eap_gpsk_data** %5, align 8
  %8 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %9 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @os_free(i64 %10)
  %12 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @os_free(i64 %14)
  %16 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %17 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @os_memset(i64 %23, i32 0, i32 %26)
  %28 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @os_free(i64 %30)
  br label %32

32:                                               ; preds = %20, %2
  %33 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %34 = call i32 @bin_clear_free(%struct.eap_gpsk_data* %33, i32 32)
  ret void
}

declare dso_local i32 @os_free(i64) #1

declare dso_local i32 @os_memset(i64, i32, i32) #1

declare dso_local i32 @bin_clear_free(%struct.eap_gpsk_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
