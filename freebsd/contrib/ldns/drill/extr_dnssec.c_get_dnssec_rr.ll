; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_get_dnssec_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_get_dnssec_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_PACKET_UNKNOWN = common dso_local global i64 0, align 8
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@LDNS_PACKET_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_PACKET_NODATA = common dso_local global i64 0, align 8
@LDNS_PACKET_ANSWER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_dnssec_rr(i32* %0, i32* %1, i64 %2, i32** %3, i32** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load i64, i64* @LDNS_PACKET_UNKNOWN, align 8
  store i64 %15, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i32**, i32*** %10, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32**, i32*** %10, align 8
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i64, i64* @LDNS_PACKET_UNKNOWN, align 8
  store i64 %24, i64* %6, align 8
  br label %134

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @ldns_pkt_reply_type(i32* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %70

30:                                               ; preds = %25
  %31 = load i32**, i32*** %10, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %38 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %34, i32* %35, i64 %36, i32 %37)
  %39 = load i32**, i32*** %10, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32**, i32*** %10, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %33
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %48 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %44, i32* %45, i64 %46, i32 %47)
  %49 = load i32**, i32*** %10, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %33
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32**, i32*** %11, align 8
  %53 = icmp ne i32** %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %58 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %59 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %55, i32* %56, i64 %57, i32 %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %66 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %67 = call i32* @ldns_pkt_rr_list_by_name_and_type(i32* %63, i32* %64, i64 %65, i32 %66)
  store i32* %67, i32** %13, align 8
  br label %68

68:                                               ; preds = %62, %54
  br label %69

69:                                               ; preds = %68, %51
  br label %88

70:                                               ; preds = %25
  %71 = load i32**, i32*** %10, align 8
  %72 = icmp ne i32** %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %77 = call i32* @ldns_pkt_rr_list_by_type(i32* %74, i64 %75, i32 %76)
  %78 = load i32**, i32*** %10, align 8
  store i32* %77, i32** %78, align 8
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i32**, i32*** %11, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %85 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %86 = call i32* @ldns_pkt_rr_list_by_type(i32* %83, i64 %84, i32 %85)
  store i32* %86, i32** %13, align 8
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32**, i32*** %11, align 8
  %90 = icmp ne i32** %89, null
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  %92 = call i32* (...) @ldns_rr_list_new()
  %93 = load i32**, i32*** %11, align 8
  store i32* %92, i32** %93, align 8
  store i64 0, i64* %14, align 8
  br label %94

94:                                               ; preds = %116, %91
  %95 = load i64, i64* %14, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @ldns_rr_list_rr_count(i32* %96)
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i64, i64* %9, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @ldns_rr_list_rr(i32* %101, i64 %102)
  %104 = call i32 @ldns_rr_rrsig_typecovered(i32 %103)
  %105 = call i64 @ldns_rdf2rr_type(i32 %104)
  %106 = icmp eq i64 %100, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i32**, i32*** %11, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i32 @ldns_rr_list_rr(i32* %110, i64 %111)
  %113 = call i32 @ldns_rr_clone(i32 %112)
  %114 = call i32 @ldns_rr_list_push_rr(i32* %109, i32 %113)
  br label %115

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %14, align 8
  br label %94

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119, %88
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @ldns_rr_list_deep_free(i32* %121)
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @LDNS_PACKET_NXDOMAIN, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* @LDNS_PACKET_NODATA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %120
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* %6, align 8
  br label %134

132:                                              ; preds = %126
  %133 = load i64, i64* @LDNS_PACKET_ANSWER, align 8
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %132, %130, %23
  %135 = load i64, i64* %6, align 8
  ret i64 %135
}

declare dso_local i64 @ldns_pkt_reply_type(i32*) #1

declare dso_local i32* @ldns_pkt_rr_list_by_name_and_type(i32*, i32*, i64, i32) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i64, i32) #1

declare dso_local i32* @ldns_rr_list_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i64 @ldns_rdf2rr_type(i32) #1

declare dso_local i32 @ldns_rr_rrsig_typecovered(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_clone(i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
