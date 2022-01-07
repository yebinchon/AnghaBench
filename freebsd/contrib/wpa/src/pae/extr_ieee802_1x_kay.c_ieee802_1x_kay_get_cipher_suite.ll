; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_get_cipher_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_get_cipher_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_ciphersuite = type { i64 }
%struct.ieee802_1x_mka_participant = type { i32 }

@CS_ID_LEN = common dso_local global i32 0, align 4
@CS_TABLE_SIZE = common dso_local global i32 0, align 4
@cipher_suite_tbl = common dso_local global %struct.macsec_ciphersuite* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macsec_ciphersuite* (%struct.ieee802_1x_mka_participant*, i32*, i32*)* @ieee802_1x_kay_get_cipher_suite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macsec_ciphersuite* @ieee802_1x_kay_get_cipher_suite(%struct.ieee802_1x_mka_participant* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.macsec_ciphersuite*, align 8
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @CS_ID_LEN, align 4
  %13 = call i32 @os_memcpy(i32* %10, i32* %11, i32 %12)
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @be_to_host64(i32 %14)
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CS_TABLE_SIZE, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.macsec_ciphersuite*, %struct.macsec_ciphersuite** @cipher_suite_tbl, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.macsec_ciphersuite, %struct.macsec_ciphersuite* %21, i64 %23
  %25 = getelementptr inbounds %struct.macsec_ciphersuite, %struct.macsec_ciphersuite* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.macsec_ciphersuite*, %struct.macsec_ciphersuite** @cipher_suite_tbl, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.macsec_ciphersuite, %struct.macsec_ciphersuite* %32, i64 %34
  store %struct.macsec_ciphersuite* %35, %struct.macsec_ciphersuite** %4, align 8
  br label %41

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %16

40:                                               ; preds = %16
  store %struct.macsec_ciphersuite* null, %struct.macsec_ciphersuite** %4, align 8
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.macsec_ciphersuite*, %struct.macsec_ciphersuite** %4, align 8
  ret %struct.macsec_ciphersuite* %42
}

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @be_to_host64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
