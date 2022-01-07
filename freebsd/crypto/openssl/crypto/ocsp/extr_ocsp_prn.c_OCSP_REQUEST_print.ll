; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_prn.c_OCSP_REQUEST_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_prn.c_OCSP_REQUEST_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"OCSP Request Data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"    Version: %lu (0x%lx)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\0A    Requestor Name: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A    Requestor List:\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Request Single Extensions\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Request Extensions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_REQUEST_print(i32* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %13, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @BIO_write(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 19)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %135

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ASN1_INTEGER_get(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @BIO_printf(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %135

35:                                               ; preds = %23
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @BIO_write(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 21)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %135

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @GENERAL_NAME_print(i32* %46, i32* %49)
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @BIO_write(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 21)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %135

56:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sk_OCSP_ONEREQ_num(i32 %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call %struct.TYPE_10__* @sk_OCSP_ONEREQ_value(i32 %67, i32 %68)
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %11, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ocsp_certid_print(i32* %73, i32* %74, i32 8)
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @X509V3_extensions_print(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %79, i64 %80, i32 8)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %64
  br label %135

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @X509V3_extensions_print(i32* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %92, i64 %93, i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %135

97:                                               ; preds = %88
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = icmp ne %struct.TYPE_7__* %98, null
  br i1 %99, label %100, label %134

100:                                              ; preds = %97
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @X509_signature_print(i32* %101, i32* %103, i32 %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %130, %100
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sk_X509_num(i32 %112)
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %108
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @sk_X509_value(i32 %119, i32 %120)
  %122 = call i32 @X509_print(i32* %116, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @sk_X509_value(i32 %126, i32 %127)
  %129 = call i32 @PEM_write_bio_X509(i32* %123, i32 %128)
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %108

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %133, %97
  store i32 1, i32* %4, align 4
  br label %136

135:                                              ; preds = %96, %83, %55, %44, %34, %22
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @ASN1_INTEGER_get(i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i64, i64) #1

declare dso_local i32 @GENERAL_NAME_print(i32*, i32*) #1

declare dso_local i32 @sk_OCSP_ONEREQ_num(i32) #1

declare dso_local %struct.TYPE_10__* @sk_OCSP_ONEREQ_value(i32, i32) #1

declare dso_local i32 @ocsp_certid_print(i32*, i32*, i32) #1

declare dso_local i32 @X509V3_extensions_print(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @X509_signature_print(i32*, i32*, i32) #1

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i32 @X509_print(i32*, i32) #1

declare dso_local i32 @sk_X509_value(i32, i32) #1

declare dso_local i32 @PEM_write_bio_X509(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
