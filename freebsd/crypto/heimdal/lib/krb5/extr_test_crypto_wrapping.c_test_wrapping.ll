; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto_wrapping.c_test_wrapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto_wrapping.c_test_wrapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"krb5_generate_random_keyblock\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"krb5_enctype_to_string\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"krb5_crypto_init\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"encrypt size %lu using %s\00", align 1
@.str.5 = private unnamed_addr constant [94 x i8] c"calculated wrapped length %lu != real wrapped length %lu for data length %lu using enctype %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i32)* @test_wrapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wrapping(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @krb5_generate_random_keyblock(i32 %19, i32 %20, i32* %12)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %5
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @krb5_enctype_to_string(i32 %29, i32 %30, i8** %15)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %35, i32 1, i64 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i64, i64* %8, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %44, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %16, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memset(i8* %47, i32 0, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @krb5_crypto_init(i32 %50, i32* %12, i32 0, i32* %13)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %55, i32 1, i64 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %17, align 8
  br label %60

60:                                               ; preds = %97, %58
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %16, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i64 @krb5_encrypt(i32 %65, i32 %66, i32 0, i8* %67, i64 %68, %struct.TYPE_4__* %14)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %73, i32 1, i64 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %75, i8* %76)
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @krb5_get_wrapped_length(i32 %79, i32 %80, i64 %81)
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load i32, i32* %6, align 4
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %88, i32 1, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.5, i64 0, i64 0), i64 %89, i64 %91, i64 %92, i8* %93)
  br label %95

95:                                               ; preds = %87, %78
  %96 = call i32 @krb5_data_free(%struct.TYPE_4__* %14)
  br label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %17, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %17, align 8
  br label %60

101:                                              ; preds = %60
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @krb5_crypto_destroy(i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @krb5_free_keyblock_contents(i32 %109, i32* %12)
  ret void
}

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_encrypt(i32, i32, i32, i8*, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @krb5_get_wrapped_length(i32, i32, i64) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
