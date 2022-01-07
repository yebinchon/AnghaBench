; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i64, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_pwd_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_pwd_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %11, %struct.eap_pwd_data** %8, align 8
  %12 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SHA256_MAC_LEN, align 4
  %23 = add nsw i32 1, %22
  %24 = call i32* @os_memdup(i32 %21, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @SHA256_MAC_LEN, align 4
  %30 = add nsw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %28, %27, %17
  %35 = load i32*, i32** %4, align 8
  ret i32* %35
}

declare dso_local i32* @os_memdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
