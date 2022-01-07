; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crypto_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crypto_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_available_options = type { i64 }
%struct.TYPE_4__ = type { i32 }

@HX509_SELECT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@HX509_SELECT_DIGEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"public-sig\00", align 1
@HX509_SELECT_PUBLIC_SIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@HX509_SELECT_SECRET_ENC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"unknown type: %s\00", align 1
@context = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"hx509_crypto_available\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_available(%struct.crypto_available_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.crypto_available_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.crypto_available_options* %0, %struct.crypto_available_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load i32, i32* @HX509_SELECT_ALL, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %20 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strcmp(i64 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @HX509_SELECT_ALL, align 4
  store i32 %25, i32* %11, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %28 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @strcmp(i64 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @HX509_SELECT_DIGEST, align 4
  store i32 %33, i32* %11, align 4
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @strcmp(i64 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @HX509_SELECT_PUBLIC_SIG, align 4
  store i32 %41, i32* %11, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %44 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strcmp(i64 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @HX509_SELECT_SECRET_ENC, align 4
  store i32 %49, i32* %11, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.crypto_available_options*, %struct.crypto_available_options** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_available_options, %struct.crypto_available_options* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %48
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %24
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32, i32* @context, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @hx509_crypto_available(i32 %60, i32 %61, i32* null, %struct.TYPE_4__** %7, i32* %8)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @der_print_heim_oid(i32* %77, i8 signext 46, i8** %12)
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @hx509_crypto_free_algs(%struct.TYPE_4__* %87, i32 %88)
  ret i32 0
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hx509_crypto_available(i32, i32, i32*, %struct.TYPE_4__**, i32*) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_crypto_free_algs(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
