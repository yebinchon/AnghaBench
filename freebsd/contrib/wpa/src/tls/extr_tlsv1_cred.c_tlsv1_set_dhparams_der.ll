; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_dhparams_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { i64, i64, i32*, i32* }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"DH: DH parameters did not start with a valid SEQUENCE - found class %d tag 0x%x\00", align 1
@ASN1_TAG_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"DH: No INTEGER tag found for p; class=%d tag=0x%x\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DH: prime (p)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"DH: No INTEGER tag found for g; class=%d tag=0x%x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"DH: base (g)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_credentials*, i32*, i64)* @tlsv1_set_dhparams_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_set_dhparams_der(%struct.tlsv1_credentials* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_credentials*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @asn1_get_next(i32* %15, i32 %17, %struct.asn1_hdr* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %20, %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %35)
  store i32 -1, i32* %4, align 4
  br label %169

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @asn1_get_next(i32* %40, i32 %47, %struct.asn1_hdr* %8)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %169

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ASN1_TAG_INTEGER, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %66)
  store i32 -1, i32* %4, align 4
  br label %169

68:                                               ; preds = %56
  %69 = load i32, i32* @MSG_MSGDUMP, align 4
  %70 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @wpa_hexdump(i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %71, i64 %73)
  %75 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %169

79:                                               ; preds = %68
  %80 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @os_free(i32* %82)
  %84 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @os_memdup(i32* %85, i64 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %91 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  %92 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %93 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %169

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %101 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %9, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i64 @asn1_get_next(i32* %107, i32 %114, %struct.asn1_hdr* %8)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %169

118:                                              ; preds = %97
  %119 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ASN1_TAG_INTEGER, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @wpa_printf(i32 %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %131, i64 %133)
  store i32 -1, i32* %4, align 4
  br label %169

135:                                              ; preds = %123
  %136 = load i32, i32* @MSG_MSGDUMP, align 4
  %137 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @wpa_hexdump(i32 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %138, i64 %140)
  %142 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %169

146:                                              ; preds = %135
  %147 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %148 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @os_free(i32* %149)
  %151 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @os_memdup(i32* %152, i64 %154)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %158 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %157, i32 0, i32 2
  store i32* %156, i32** %158, align 8
  %159 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %160 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %146
  store i32 -1, i32* %4, align 4
  br label %169

164:                                              ; preds = %146
  %165 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %5, align 8
  %168 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %164, %163, %145, %128, %117, %96, %78, %61, %50, %30
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
