; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_eap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_eap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpabuf* (%struct.eap_sm*, i32, %struct.eap_method_ret*, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }
%struct.eap_method_ret = type { i64, i64 }
%struct.eap_hdr = type { i32 }

@METHOD_DONE = common dso_local global i64 0, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@DECISION_COND_SUCC = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, i64, %struct.wpabuf**)* @eap_ttls_phase2_eap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_eap_process(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, i64 %4, %struct.wpabuf** %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf**, align 8
  %13 = alloca %struct.wpabuf, align 4
  %14 = alloca %struct.eap_method_ret, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.eap_hdr* %3, %struct.eap_hdr** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %12, align 8
  %15 = call i32 @os_memset(%struct.eap_method_ret* %14, i32 0, i32 16)
  %16 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @wpabuf_set(%struct.wpabuf* %13, %struct.eap_hdr* %16, i64 %17)
  %19 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.wpabuf* (%struct.eap_sm*, i32, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32, %struct.eap_method_ret*, %struct.wpabuf*)** %22, align 8
  %24 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %25 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.wpabuf* %23(%struct.eap_sm* %24, i32 %27, %struct.eap_method_ret* %14, %struct.wpabuf* %13)
  %29 = load %struct.wpabuf**, %struct.wpabuf*** %12, align 8
  store %struct.wpabuf* %28, %struct.wpabuf** %29, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @METHOD_DONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @METHOD_MAY_CONT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %34, %6
  %40 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DECISION_COND_SUCC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DECISION_FAIL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %49, %44, %39
  %55 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %58 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %62 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %54, %49, %34
  ret i32 0
}

declare dso_local i32 @os_memset(%struct.eap_method_ret*, i32, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, %struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
