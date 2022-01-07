; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_method_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_method_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i64, i64, i32 }

@SUPP_PAE_AUTHENTICATED = common dso_local global i64 0, align 8
@Authorized = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @eapol_sm_get_method_name(%struct.eapol_sm* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eapol_sm*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %3, align 8
  %4 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %5 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SUPP_PAE_AUTHENTICATED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %11 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @Authorized, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i8* null, i8** %2, align 8
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @eap_sm_get_method_name(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @eap_sm_get_method_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
