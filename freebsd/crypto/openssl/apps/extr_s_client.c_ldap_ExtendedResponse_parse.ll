; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_ldap_ExtendedResponse_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_ldap_ExtendedResponse_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected LDAP response\0A\00", align 1
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4
@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"No MessageID\0A\00", align 1
@V_ASN1_APPLICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Not ExtendedResponse\0A\00", align 1
@V_ASN1_ENUMERATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Not LDAPResult\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ldap_ExtendedResponse_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldap_ExtendedResponse_parse(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 -1, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @ASN1_get_object(i8** %5, i64* %7, i32* %8, i32* %9, i64 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25, %21, %2
  %35 = load i32, i32* @bio_err, align 4
  %36 = call i32 @BIO_printf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %135

37:                                               ; preds = %25
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @ASN1_get_object(i8** %5, i64* %7, i32* %8, i32* %9, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @V_ASN1_INTEGER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48, %44, %37
  %58 = load i32, i32* @bio_err, align 4
  %59 = call i32 @BIO_printf(i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %135

60:                                               ; preds = %48
  %61 = load i64, i64* %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @ASN1_get_object(i8** %5, i64* %7, i32* %8, i32* %9, i64 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @V_ASN1_APPLICATION, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 24
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %74, %60
  %82 = load i32, i32* @bio_err, align 4
  %83 = call i32 @BIO_printf(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %135

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @ASN1_get_object(i8** %5, i64* %7, i32* %8, i32* %9, i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %111, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @V_ASN1_ENUMERATED, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %102, %99, %95, %84
  %112 = load i32, i32* @bio_err, align 4
  %113 = call i32 @BIO_printf(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %135

114:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %131, %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %7, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %121, 8
  store i32 %122, i32* %11, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %115

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %134, %111, %81, %57, %34
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
