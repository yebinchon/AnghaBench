; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_gpsk_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_gpsk_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_gpsk_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_gpsk_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_gpsk_data*
  store %struct.eap_gpsk_data* %11, %struct.eap_gpsk_data** %7, align 8
  %12 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %13 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %15 = call i32* @eap_hdr_validate(i32 %12, i32 %13, %struct.wpabuf* %14, i64* %9)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %41

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %41 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %22
  %26 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %27 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 @eap_gpsk_process_gpsk_2(%struct.eap_sm* %26, %struct.eap_gpsk_data* %27, i32* %29, i64 %31)
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %35 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  %40 = call i32 @eap_gpsk_process_gpsk_4(%struct.eap_sm* %34, %struct.eap_gpsk_data* %35, i32* %37, i64 %39)
  br label %41

41:                                               ; preds = %21, %22, %33, %25
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_gpsk_process_gpsk_2(%struct.eap_sm*, %struct.eap_gpsk_data*, i32*, i64) #1

declare dso_local i32 @eap_gpsk_process_gpsk_4(%struct.eap_sm*, %struct.eap_gpsk_data*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
