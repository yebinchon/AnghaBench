; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_icv_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_encode_icv_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 (i32, i32, i32, i32, i32*)* }
%struct.ieee802_1x_mka_participant = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.ieee802_1x_mka_icv_body = type { i32 }

@MAX_ICV_LEN = common dso_local global i32 0, align 4
@mka_alg_tbl = common dso_local global %struct.TYPE_6__* null, align 8
@DEFAULT_ICV_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"KaY: ICV Indicator\00", align 1
@MKA_HDR_LEN = common dso_local global i32 0, align 4
@MKA_ICV_INDICATOR = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"KaY: failed to calculate ICV\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"KaY: ICV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*, %struct.wpabuf*)* @ieee802_1x_mka_encode_icv_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_encode_icv_body(%struct.ieee802_1x_mka_participant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.ieee802_1x_mka_icv_body*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %11 = load i32, i32* @MAX_ICV_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %16 = call i32 @ieee802_1x_mka_get_icv_length(%struct.ieee802_1x_mka_participant* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mka_alg_tbl, align 8
  %18 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEFAULT_ICV_LEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %32 = load i32, i32* @MKA_HDR_LEN, align 4
  %33 = call %struct.ieee802_1x_mka_icv_body* @wpabuf_put(%struct.wpabuf* %31, i32 %32)
  store %struct.ieee802_1x_mka_icv_body* %33, %struct.ieee802_1x_mka_icv_body** %6, align 8
  %34 = load i32, i32* @MKA_ICV_INDICATOR, align 4
  %35 = load %struct.ieee802_1x_mka_icv_body*, %struct.ieee802_1x_mka_icv_body** %6, align 8
  %36 = getelementptr inbounds %struct.ieee802_1x_mka_icv_body, %struct.ieee802_1x_mka_icv_body* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MKA_HDR_LEN, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ieee802_1x_mka_icv_body*, %struct.ieee802_1x_mka_icv_body** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_icv_body* %40, i32 %41)
  br label %43

43:                                               ; preds = %28, %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mka_alg_tbl, align 8
  %45 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %46 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64 (i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32*)** %51, align 8
  %53 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %54 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %58 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %62 = call i32 @wpabuf_head(%struct.wpabuf* %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %64 = call i32 @wpabuf_len(%struct.wpabuf* %63)
  %65 = call i64 %52(i32 %56, i32 %60, i32 %62, i32 %64, i32* %14)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %43
  %68 = load i32, i32* @MSG_ERROR, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

70:                                               ; preds = %43
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32 %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call %struct.ieee802_1x_mka_icv_body* @wpabuf_put(%struct.wpabuf* %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @os_memcpy(%struct.ieee802_1x_mka_icv_body* %76, i32* %14, i32 %77)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %70, %67
  %80 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee802_1x_mka_get_icv_length(%struct.ieee802_1x_mka_participant*) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.ieee802_1x_mka_icv_body* @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i32 @set_mka_param_body_len(%struct.ieee802_1x_mka_icv_body*, i32) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(%struct.ieee802_1x_mka_icv_body*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
