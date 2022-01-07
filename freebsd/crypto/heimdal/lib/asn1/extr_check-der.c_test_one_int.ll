; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_one_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_one_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"integer %d encode failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"integer %d encode fail with %d len %lu, result len %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"integer %d decode failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"integer %d decoded diffrent len %lu != %lu\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"decode decoded to diffrent value %d != %d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"precanary dead %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"postecanary dead %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_one_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_one_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @_heim_len_int(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 %11, 2
  %13 = call i8* @emalloc(i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 -1, i8* %15, align 1
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 -1, i8* %19, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @memset(i8* %21, i32 0, i64 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @der_put_integer(i8* %28, i64 %29, i32* %3, i64* %7)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i32 1, i32* %2, align 4
  br label %98

37:                                               ; preds = %1
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i64 %44, i64 %45)
  store i32 1, i32* %2, align 4
  br label %98

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @der_get_integer(i8* %49, i64 %50, i32* %5, i64* %7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  store i32 1, i32* %2, align 4
  br label %98

58:                                               ; preds = %47
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %63, i64 %64, i64 %65)
  store i32 1, i32* %2, align 4
  br label %98

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73)
  store i32 1, i32* %2, align 4
  br label %98

75:                                               ; preds = %67
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 255
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  store i32 1, i32* %2, align 4
  br label %98

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 255
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  store i32 1, i32* %2, align 4
  br label %98

95:                                               ; preds = %84
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @free(i8* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %92, %81, %71, %62, %54, %41, %33
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @_heim_len_int(i32) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @der_put_integer(i8*, i64, i32*, i64*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @der_get_integer(i8*, i64, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
