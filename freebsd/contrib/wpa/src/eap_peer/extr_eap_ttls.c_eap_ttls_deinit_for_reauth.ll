; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_deinit_for_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_deinit_for_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i64, i64, i32, i32*, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_ttls_deinit_for_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_deinit_for_reauth(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_ttls_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_ttls_data*
  store %struct.eap_ttls_data* %7, %struct.eap_ttls_data** %5, align 8
  %8 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %9 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %14 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %19 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %21, align 8
  %23 = icmp ne i32 (%struct.eap_sm*, i64)* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %28, align 8
  %30 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %31 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %32 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i32 %29(%struct.eap_sm* %30, i64 %33)
  br label %35

35:                                               ; preds = %24, %17, %12, %2
  %36 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @wpabuf_clear_free(i32* %38)
  %40 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %41 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @wpabuf_clear_free(i32* %44)
  %46 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %47 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @DECISION_FAIL, align 4
  %49 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i32 @wpabuf_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
