; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_parse_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_message = type { i32, i32, i8*, i8*, i8*, i64, i64 }
%struct.ieee802_11_elems = type { i32, i32, i64, i64, i64 }

@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"P2P: Failed to parse P2P IE data\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"P2P: P2P IE data\00", align 1
@WFD_IE_VENDOR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_parse_ies(i32* %0, i64 %1, %struct.p2p_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.p2p_message*, align 8
  %8 = alloca %struct.ieee802_11_elems, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.p2p_message* %2, %struct.p2p_message** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @ieee802_11_parse_elems(i32* %9, i64 %10, %struct.ieee802_11_elems* %8, i32 0)
  %12 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %19 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 2
  %28 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %29 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %34 = call i8* @ieee802_11_vendor_ie_concat(i32* %31, i64 %32, i32 %33)
  %35 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %36 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %38 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %43 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %46 = call i64 @p2p_parse_wps_ie(i8* %44, %struct.p2p_message* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %50 = call i32 @p2p_parse_free(%struct.p2p_message* %49)
  store i32 -1, i32* %4, align 4
  br label %94

51:                                               ; preds = %41, %30
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @P2P_IE_VENDOR_TYPE, align 4
  %55 = call i8* @ieee802_11_vendor_ie_concat(i32* %52, i64 %53, i32 %54)
  %56 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %57 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %59 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %51
  %63 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %64 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %67 = call i64 @p2p_parse_p2p_ie(i8* %65, %struct.p2p_message* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %73 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @MSG_MSGDUMP, align 4
  %78 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %79 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @wpa_hexdump_buf(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %84 = call i32 @p2p_parse_free(%struct.p2p_message* %83)
  store i32 -1, i32* %4, align 4
  br label %94

85:                                               ; preds = %62, %51
  %86 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %89 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.p2p_message*, %struct.p2p_message** %7, align 8
  %93 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %85, %82, %48
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i8* @ieee802_11_vendor_ie_concat(i32*, i64, i32) #1

declare dso_local i64 @p2p_parse_wps_ie(i8*, %struct.p2p_message*) #1

declare dso_local i32 @p2p_parse_free(%struct.p2p_message*) #1

declare dso_local i64 @p2p_parse_p2p_ie(i8*, %struct.p2p_message*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
