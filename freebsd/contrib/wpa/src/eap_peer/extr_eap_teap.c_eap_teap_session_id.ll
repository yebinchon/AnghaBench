; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Failed to derive Session-Id\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"EAP-TEAP: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_data*)* @eap_teap_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_session_id(%struct.eap_teap_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_teap_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %3, align 8
  store i64 100, i64* %4, align 8
  %6 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %7 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @os_free(i32* %8)
  %10 = call i32* @os_malloc(i64 100)
  %11 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %12 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %14 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %20 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %21 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @tls_get_tls_unique(i32 %27, i32 %32, i64 99)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %18
  %37 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %38 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @os_free(i32* %39)
  %41 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %42 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %58

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 1, %46
  %48 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %49 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %52 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.eap_teap_data*, %struct.eap_teap_data** %3, align 8
  %55 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %53, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %36, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @tls_get_tls_unique(i32, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
