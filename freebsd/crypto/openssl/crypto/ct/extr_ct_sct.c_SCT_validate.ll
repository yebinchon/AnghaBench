; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }

@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@SCT_VALIDATION_STATUS_UNKNOWN_VERSION = common dso_local global i64 0, align 8
@SCT_VALIDATION_STATUS_UNKNOWN_LOG = common dso_local global i64 0, align 8
@CT_LOG_ENTRY_TYPE_PRECERT = common dso_local global i64 0, align 8
@SCT_VALIDATION_STATUS_UNVERIFIED = common dso_local global i8* null, align 8
@SCT_VALIDATION_STATUS_VALID = common dso_local global i64 0, align 8
@SCT_VALIDATION_STATUS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_validate(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCT_VERSION_V1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @SCT_VALIDATION_STATUS_UNKNOWN_VERSION, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @CTLOG_STORE_get0_log_by_id(i32 %24, i32 %27, i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i64, i64* @SCT_VALIDATION_STATUS_UNKNOWN_LOG, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %132

38:                                               ; preds = %21
  %39 = call i32* (...) @SCT_CTX_new()
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %124

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @CTLOG_get0_public_key(i32* %44)
  %46 = call i32 @X509_PUBKEY_set(i32** %9, i32* %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %124

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @SCT_CTX_set1_pubkey(i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %124

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = call i64 @SCT_get_log_entry_type(%struct.TYPE_7__* %56)
  %58 = load i64, i64* @CT_LOG_ENTRY_TYPE_PRECERT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** @SCT_VALIDATION_STATUS_UNVERIFIED, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %117

70:                                               ; preds = %60
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32* @X509_get0_pubkey(i32* %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @X509_PUBKEY_set(i32** %8, i32* %75)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %124

79:                                               ; preds = %70
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @SCT_CTX_set1_issuer_pubkey(i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %124

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %55
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SCT_CTX_set_time(i32* %87, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @SCT_CTX_set1_cert(i32* %92, i32 %95, i32* null)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load i8*, i8** @SCT_VALIDATION_STATUS_UNVERIFIED, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %116

103:                                              ; preds = %86
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = call i32 @SCT_CTX_verify(i32* %104, %struct.TYPE_7__* %105)
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i64, i64* @SCT_VALIDATION_STATUS_VALID, align 8
  br label %112

110:                                              ; preds = %103
  %111 = load i64, i64* @SCT_VALIDATION_STATUS_INVALID, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %98
  br label %117

117:                                              ; preds = %116, %65
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SCT_VALIDATION_STATUS_VALID, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %117, %84, %78, %54, %48, %42
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @X509_PUBKEY_free(i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @X509_PUBKEY_free(i32* %127)
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @SCT_CTX_free(i32* %129)
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %124, %34, %17
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32* @CTLOG_STORE_get0_log_by_id(i32, i32, i32) #1

declare dso_local i32* @SCT_CTX_new(...) #1

declare dso_local i32 @X509_PUBKEY_set(i32**, i32*) #1

declare dso_local i32* @CTLOG_get0_public_key(i32*) #1

declare dso_local i32 @SCT_CTX_set1_pubkey(i32*, i32*) #1

declare dso_local i64 @SCT_get_log_entry_type(%struct.TYPE_7__*) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @SCT_CTX_set1_issuer_pubkey(i32*, i32*) #1

declare dso_local i32 @SCT_CTX_set_time(i32*, i32) #1

declare dso_local i32 @SCT_CTX_set1_cert(i32*, i32, i32*) #1

declare dso_local i32 @SCT_CTX_verify(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @X509_PUBKEY_free(i32*) #1

declare dso_local i32 @SCT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
