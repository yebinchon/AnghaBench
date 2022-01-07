; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_ocsp_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_ocsp_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_fetch_options = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@context = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MEMORY:ocsp-pool\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ocsp-pool\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"MEMORY:ocsp-req\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"hx509_certs_append: req: %s: %d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"hx509_ocsp_request: req: %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"POST %s HTTP/1.0\0D\0AContent-Type: application/ocsp-request\0D\0AContent-Length: %ld\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocsp_fetch(%struct.ocsp_fetch_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.ocsp_fetch_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.ocsp_fetch_options* %0, %struct.ocsp_fetch_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %11, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %18 = call i32 @memset(%struct.TYPE_6__** %11, i32 0, i32 8)
  %19 = load i32, i32* @context, align 4
  %20 = call i32 @hx509_lock_init(i32 %19, i32* %12)
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.ocsp_fetch_options*, %struct.ocsp_fetch_options** %4, align 8
  %23 = getelementptr inbounds %struct.ocsp_fetch_options, %struct.ocsp_fetch_options* %22, i32 0, i32 3
  %24 = call i32 @lock_strings(i32 %21, i32* %23)
  %25 = load %struct.ocsp_fetch_options*, %struct.ocsp_fetch_options** %4, align 8
  %26 = getelementptr inbounds %struct.ocsp_fetch_options, %struct.ocsp_fetch_options* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.ocsp_fetch_options*, %struct.ocsp_fetch_options** %4, align 8
  %32 = getelementptr inbounds %struct.ocsp_fetch_options, %struct.ocsp_fetch_options* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.ocsp_fetch_options*, %struct.ocsp_fetch_options** %4, align 8
  %37 = getelementptr inbounds %struct.ocsp_fetch_options, %struct.ocsp_fetch_options* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @context, align 4
  %41 = call i32 @hx509_certs_init(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %8)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @context, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @hx509_err(i32 %45, i32 1, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* @context, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.ocsp_fetch_options*, %struct.ocsp_fetch_options** %4, align 8
  %53 = getelementptr inbounds %struct.ocsp_fetch_options, %struct.ocsp_fetch_options* %52, i32 0, i32 1
  %54 = call i32 @certs_strings(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %51, i32* %53)
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %15, align 8
  %58 = load i32, i32* @context, align 4
  %59 = call i32 @hx509_certs_init(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32* %7)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, i32* @context, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @hx509_err(i32 %63, i32 1, i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %48
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %92, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i32, i32* @context, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @hx509_certs_append(i32 %72, i32 %73, i32 %74, i8* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %71
  %84 = load i8**, i8*** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %67

95:                                               ; preds = %67
  %96 = load i32, i32* @context, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %100 = call i32 @hx509_ocsp_request(i32 %96, i32 %97, i32 %98, i32* null, i32* null, %struct.TYPE_6__* %9, %struct.TYPE_6__* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i8*, i8** %15, align 8
  %108 = call i32* @fopen(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %108, i32** %17, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (...) @abort() #3
  unreachable

113:                                              ; preds = %106
  %114 = load i32*, i32** %17, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @fprintf(i32* %114, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* %115, i64 %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = call i32 @fwrite(i32 %120, i64 %122, i32 1, i32* %123)
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %128 = icmp ne %struct.TYPE_6__* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %113
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = call i32 @der_free_octet_string(%struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %129, %113
  %133 = call i32 @hx509_certs_free(i32* %7)
  %134 = call i32 @hx509_certs_free(i32* %8)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @certs_strings(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_append(i32, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hx509_ocsp_request(i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i64) #1

declare dso_local i32 @fwrite(i32, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_6__*) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
