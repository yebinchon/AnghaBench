; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto.c_time_encryption.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_crypto.c_time_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"krb5_generate_random_keyblock\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"krb5_enctype_to_string\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"krb5_crypto_init\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"encrypt: %d\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s size: %7lu iterations: %d time: %3ld.%06ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @time_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_encryption(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @krb5_generate_random_keyblock(i32 %18, i32 %19, i32* %12)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %24, i32 1, i64 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @krb5_enctype_to_string(i32 %28, i32 %29, i8** %15)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %34, i32 1, i64 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @krb5_errx(i32 %43, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %16, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @memset(i8* %46, i32 0, i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @krb5_crypto_init(i32 %49, i32* %12, i32 0, i32* %13)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %11, align 8
  %56 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %54, i32 1, i64 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %45
  %58 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %78, %57
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @krb5_encrypt(i32 %64, i32 %65, i32 0, i8* %66, i64 %67, i32* %14)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %72, i32 1, i64 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %63
  %77 = call i32 @krb5_data_free(i32* %14)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %59

81:                                               ; preds = %59
  %82 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %83 = call i32 @timevalsub(%struct.timeval* %10, %struct.timeval* %9)
  %84 = load i8*, i8** %15, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %84, i64 %85, i32 %86, i64 %88, i64 %90)
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @krb5_crypto_destroy(i32 %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @krb5_free_keyblock_contents(i32 %99, i32* %12)
  ret void
}

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @krb5_encrypt(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
