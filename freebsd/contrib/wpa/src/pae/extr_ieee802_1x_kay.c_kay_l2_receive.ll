; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_kay_l2_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_kay_l2_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay = type { i32 }
%struct.ieee8023_hdr = type { i32 }
%struct.ieee802_1x_hdr = type { i64, i32, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"KaY: EAPOL frame too short (%lu)\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"KaY: EAPOL MPDU is invalid: (received len %lu, calculated len %lu, EAPOL length %u)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"KaY: Ignore extra octets following the Packey Body field\00", align 1
@EAPOL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"KaY: version %d does not support MKA\00", align 1
@ETH_P_PAE = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAPOL_MKA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"KaY: RX EAPOL-MKA\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"KaY: No MKA participant instance - ignore EAPOL-MKA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i64)* @kay_l2_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kay_l2_receive(i8* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee802_1x_kay*, align 8
  %10 = alloca %struct.ieee8023_hdr*, align 8
  %11 = alloca %struct.ieee802_1x_hdr*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ieee802_1x_kay*
  store %struct.ieee802_1x_kay* %14, %struct.ieee802_1x_kay** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %15, 20
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_MSGDUMP, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %102

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.ieee8023_hdr*
  store %struct.ieee8023_hdr* %23, %struct.ieee8023_hdr** %10, align 8
  %24 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %10, align 8
  %25 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %24, i64 1
  %26 = bitcast %struct.ieee8023_hdr* %25 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %26, %struct.ieee802_1x_hdr** %11, align 8
  %27 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be_to_host16(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 20, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load i32, i32* @MSG_MSGDUMP, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %11, align 8
  %41 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be_to_host16(i32 %42)
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39, i32 %43)
  br label %102

45:                                               ; preds = %21
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32* %53, i64 %56)
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %49, %45
  %60 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %11, align 8
  %61 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EAPOL_VERSION, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* @MSG_MSGDUMP, align 4
  %67 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %102

71:                                               ; preds = %59
  %72 = load %struct.ieee8023_hdr*, %struct.ieee8023_hdr** %10, align 8
  %73 = getelementptr inbounds %struct.ieee8023_hdr, %struct.ieee8023_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be_to_host16(i32 %74)
  %76 = load i32, i32* @ETH_P_PAE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %11, align 8
  %80 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE802_1X_TYPE_EAPOL_MKA, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %71
  br label %102

85:                                               ; preds = %78
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @wpa_hexdump(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %87, i64 %88)
  %90 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %9, align 8
  %91 = getelementptr inbounds %struct.ieee802_1x_kay, %struct.ieee802_1x_kay* %90, i32 0, i32 0
  %92 = call i64 @dl_list_empty(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %102

97:                                               ; preds = %85
  %98 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %9, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @ieee802_1x_kay_decode_mkpdu(%struct.ieee802_1x_kay* %98, i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %94, %84, %65, %36, %17
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @dl_list_empty(i32*) #1

declare dso_local i32 @ieee802_1x_kay_decode_mkpdu(%struct.ieee802_1x_kay*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
