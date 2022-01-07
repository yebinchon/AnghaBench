; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_make_revocation_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_make_revocation_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@crl_reasons = common dso_local global i8** null, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown CRL reason %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid object identifier %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"holdInstruction\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid time format %s. Need YYYYMMDDHHMMSSZ\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"keyTime\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CAkeyTime\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"revocation reason\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @make_revocation_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_revocation_str(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %73 [
    i32 129, label %13
    i32 128, label %13
    i32 132, label %14
    i32 131, label %45
    i32 130, label %58
    i32 133, label %58
  ]

13:                                               ; preds = %2, %2
  br label %73

14:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i8**, i8*** @crl_reasons, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcasecmp(i8* %19, i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i8**, i8*** @crl_reasons, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  br label %37

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %15

37:                                               ; preds = %27, %15
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_err, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @BIO_printf(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i8* null, i8** %3, align 8
  br label %139

44:                                               ; preds = %37
  br label %73

45:                                               ; preds = %2
  %46 = load i8*, i8** %5, align 8
  %47 = call i32* @OBJ_txt2obj(i8* %46, i32 0)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @ASN1_OBJECT_free(i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @bio_err, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @BIO_printf(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i8* null, i8** %3, align 8
  br label %139

56:                                               ; preds = %45
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %8, align 8
  br label %73

58:                                               ; preds = %2, %2
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @ASN1_GENERALIZEDTIME_set_string(i32* null, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @bio_err, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @BIO_printf(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  store i8* null, i8** %3, align 8
  br label %139

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 130
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %72

71:                                               ; preds = %66
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %2, %72, %56, %44, %13
  %74 = call %struct.TYPE_4__* @X509_gmtime_adj(i32* null, i32 0)
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %10, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i8* null, i8** %3, align 8
  br label %139

78:                                               ; preds = %73
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = add nsw i64 %87, 1
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %85, %78
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = add nsw i64 %98, 1
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %96, %93
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @app_malloc(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @OPENSSL_strlcpy(i8* %107, i8* %111, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @OPENSSL_strlcat(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @OPENSSL_strlcat(i8* %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %104
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @OPENSSL_strlcat(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @OPENSSL_strlcat(i8* %131, i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %127, %124
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %137 = call i32 @ASN1_UTCTIME_free(%struct.TYPE_4__* %136)
  %138 = load i8*, i8** %6, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %135, %77, %62, %52, %40
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_set_string(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @X509_gmtime_adj(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @ASN1_UTCTIME_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
