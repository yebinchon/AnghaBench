; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-AKA: Unknown state %d in buildReq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_aka_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_aka_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.eap_aka_data*
  store %struct.eap_aka_data* %10, %struct.eap_aka_data** %8, align 8
  %11 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %12 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 130, label %16
    i32 131, label %21
    i32 128, label %26
    i32 129, label %31
  ]

16:                                               ; preds = %3
  %17 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %18 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.wpabuf* @eap_aka_build_identity(%struct.eap_sm* %17, %struct.eap_aka_data* %18, i32 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %4, align 8
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %23 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.wpabuf* @eap_aka_build_challenge(%struct.eap_sm* %22, %struct.eap_aka_data* %23, i32 %24)
  store %struct.wpabuf* %25, %struct.wpabuf** %4, align 8
  br label %43

26:                                               ; preds = %3
  %27 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %28 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.wpabuf* @eap_aka_build_reauth(%struct.eap_sm* %27, %struct.eap_aka_data* %28, i32 %29)
  store %struct.wpabuf* %30, %struct.wpabuf** %4, align 8
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %33 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.wpabuf* @eap_aka_build_notification(%struct.eap_sm* %32, %struct.eap_aka_data* %33, i32 %34)
  store %struct.wpabuf* %35, %struct.wpabuf** %4, align 8
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %43

43:                                               ; preds = %42, %31, %26, %21, %16
  %44 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %44
}

declare dso_local %struct.wpabuf* @eap_aka_build_identity(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_build_challenge(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_build_reauth(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_build_notification(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
