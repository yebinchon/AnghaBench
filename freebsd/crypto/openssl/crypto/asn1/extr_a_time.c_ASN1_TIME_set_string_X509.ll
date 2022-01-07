; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_set_string_X509.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_ASN1_TIME_set_string_X509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i32 }
%struct.tm = type { i32 }

@ASN1_STRING_FLAG_X509_TIME = common dso_local global i32 0, align 4
@V_ASN1_UTCTIME = common dso_local global i8* null, align 8
@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_TIME_set_string_X509(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.tm, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i64 %9, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @ASN1_STRING_FLAG_X509_TIME, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @V_ASN1_UTCTIME, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = call i32 @ASN1_TIME_check(%struct.TYPE_5__* %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = call i32 @ASN1_TIME_check(%struct.TYPE_5__* %5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %89

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = call i32 @asn1_time_to_tm(%struct.tm* %6, %struct.TYPE_5__* %5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %89

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_utc(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 2
  store i64 %47, i64* %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i8* @OPENSSL_zalloc(i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %89

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(i8* %59, i8* %61, i64 %63)
  %65 = load i8*, i8** @V_ASN1_UTCTIME, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %57, %39
  br label %69

69:                                               ; preds = %68, %30, %27
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = icmp eq %struct.TYPE_5__* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = bitcast %struct.TYPE_5__* %73 to i32*
  %75 = bitcast %struct.TYPE_5__* %5 to i32*
  %76 = call i64 @ASN1_STRING_copy(i32* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %69
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @OPENSSL_free(i8* %86)
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %56, %38, %25
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASN1_TIME_check(%struct.TYPE_5__*) #1

declare dso_local i32 @asn1_time_to_tm(%struct.tm*, %struct.TYPE_5__*) #1

declare dso_local i64 @is_utc(i32) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ASN1_STRING_copy(i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
