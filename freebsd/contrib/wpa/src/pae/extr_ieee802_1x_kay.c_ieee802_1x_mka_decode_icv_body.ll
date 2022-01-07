; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_icv_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_decode_icv_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ieee802_1x_mka_participant = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee802_1x_mka_hdr = type { i32 }
%struct.ieee802_1x_mka_icv_body = type { i64* }

@MKA_HDR_LEN = common dso_local global i64 0, align 8
@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@MKA_ICV_INDICATOR = common dso_local global i64 0, align 8
@mka_alg_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.ieee802_1x_mka_participant*, i64*, i64)* @ieee802_1x_mka_decode_icv_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ieee802_1x_mka_decode_icv_body(%struct.ieee802_1x_mka_participant* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  %9 = alloca %struct.ieee802_1x_mka_icv_body*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64*, i64** %6, align 8
  store i64* %14, i64** %13, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %11, align 8
  br label %16

16:                                               ; preds = %40, %3
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @MKA_HDR_LEN, align 8
  %19 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %20 = add i64 %18, %19
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = load i64*, i64** %13, align 8
  %24 = bitcast i64* %23 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %24, %struct.ieee802_1x_mka_hdr** %8, align 8
  %25 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %26 = call i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr* %25)
  %27 = call i64 @MKA_ALIGN_LENGTH(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %8, align 8
  %29 = call i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @MKA_HDR_LEN, align 8
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %70

36:                                               ; preds = %22
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @MKA_ICV_INDICATOR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64, i64* @MKA_HDR_LEN, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* @MKA_HDR_LEN, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %46, %47
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %48
  store i64* %50, i64** %13, align 8
  br label %16

51:                                               ; preds = %36
  %52 = load i64*, i64** %13, align 8
  %53 = bitcast i64* %52 to %struct.ieee802_1x_mka_icv_body*
  store %struct.ieee802_1x_mka_icv_body* %53, %struct.ieee802_1x_mka_icv_body** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mka_alg_tbl, align 8
  %56 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %5, align 8
  %57 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %54, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i64* null, i64** %4, align 8
  br label %77

66:                                               ; preds = %51
  %67 = load %struct.ieee802_1x_mka_icv_body*, %struct.ieee802_1x_mka_icv_body** %9, align 8
  %68 = getelementptr inbounds %struct.ieee802_1x_mka_icv_body, %struct.ieee802_1x_mka_icv_body* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  store i64* %69, i64** %4, align 8
  br label %77

70:                                               ; preds = %35, %16
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64* %76, i64** %4, align 8
  br label %77

77:                                               ; preds = %70, %66, %65
  %78 = load i64*, i64** %4, align 8
  ret i64* %78
}

declare dso_local i64 @MKA_ALIGN_LENGTH(i32) #1

declare dso_local i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_hdr*) #1

declare dso_local i64 @get_mka_param_body_type(%struct.ieee802_1x_mka_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
