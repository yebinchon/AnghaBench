; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c__hx509_request_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c__hx509_request_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"PKCS10:\00", align 1
@HX509_UNSUPPORTED_OPERATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unsupport type in %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to map file %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to decode %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_request_parse(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HX509_UNSUPPORTED_OPERATION, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @hx509_set_error_string(i32 %19, i32 0, i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @HX509_UNSUPPORTED_OPERATION, align 4
  store i32 %23, i32* %4, align 4
  br label %101

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 7
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @rk_undumpdata(i8* %27, i8** %13, i64* %11)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @hx509_set_error_string(i32 %32, i32 0, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %101

37:                                               ; preds = %24
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @decode_CertificationRequest(i8* %38, i64 %39, %struct.TYPE_6__* %8, i64* %12)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @rk_xfree(i8* %41)
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @hx509_set_error_string(i32 %46, i32 0, i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %4, align 4
  br label %101

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @hx509_request_init(i32 %52, i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = call i32 @free_CertificationRequest(%struct.TYPE_6__* %8)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %4, align 4
  br label %101

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %9, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = call i32 @hx509_request_set_SubjectPublicKeyInfo(i32 %62, i32 %64, i32* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = call i32 @free_CertificationRequest(%struct.TYPE_6__* %8)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @hx509_request_free(i32* %72)
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %4, align 4
  br label %101

75:                                               ; preds = %60
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @_hx509_name_from_Name(i32* %77, i32* %10)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = call i32 @free_CertificationRequest(%struct.TYPE_6__* %8)
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @hx509_request_free(i32* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %101

86:                                               ; preds = %75
  %87 = load i32, i32* %5, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @hx509_request_set_name(i32 %87, i32 %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = call i32 @hx509_name_free(i32* %10)
  %93 = call i32 @free_CertificationRequest(%struct.TYPE_6__* %8)
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @hx509_request_free(i32* %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %96, %81, %70, %57, %45, %31, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #1

declare dso_local i32 @decode_CertificationRequest(i8*, i64, %struct.TYPE_6__*, i64*) #1

declare dso_local i32 @rk_xfree(i8*) #1

declare dso_local i32 @hx509_request_init(i32, i32*) #1

declare dso_local i32 @free_CertificationRequest(%struct.TYPE_6__*) #1

declare dso_local i32 @hx509_request_set_SubjectPublicKeyInfo(i32, i32, i32*) #1

declare dso_local i32 @hx509_request_free(i32*) #1

declare dso_local i32 @_hx509_name_from_Name(i32*, i32*) #1

declare dso_local i32 @hx509_request_set_name(i32, i32, i32) #1

declare dso_local i32 @hx509_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
