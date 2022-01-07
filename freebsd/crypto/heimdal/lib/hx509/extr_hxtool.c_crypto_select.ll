; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crypto_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_crypto_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_select_options = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@HX509_SELECT_DIGEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"public-sig\00", align 1
@HX509_SELECT_PUBLIC_SIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@HX509_SELECT_SECRET_ENC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown type: %s\00", align 1
@context = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"hx509_crypto_available\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_select(%struct.crypto_select_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.crypto_select_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.crypto_select_options* %0, %struct.crypto_select_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i32, i32* @HX509_SELECT_DIGEST, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %19 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @strcmp(i64 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @HX509_SELECT_DIGEST, align 4
  store i32 %24, i32* %10, align 4
  br label %48

25:                                               ; preds = %17
  %26 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %27 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @strcmp(i64 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @HX509_SELECT_PUBLIC_SIG, align 4
  store i32 %32, i32* %10, align 4
  br label %47

33:                                               ; preds = %25
  %34 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %35 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strcmp(i64 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @HX509_SELECT_SECRET_ENC, align 4
  store i32 %40, i32* %10, align 4
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %43 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %39
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %51 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @context, align 4
  %57 = load %struct.crypto_select_options*, %struct.crypto_select_options** %4, align 8
  %58 = getelementptr inbounds %struct.crypto_select_options, %struct.crypto_select_options* %57, i32 0, i32 0
  %59 = call i32 @peer_strings(i32 %56, i32** %7, %struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* @context, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @hx509_crypto_select(i32 %61, i32 %62, i32* null, i32* %63, %struct.TYPE_5__* %8)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %71 = call i32 @der_print_heim_oid(i32* %70, i8 signext 46, i8** %11)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @free(i8* %74)
  %76 = call i32 @free_AlgorithmIdentifier(%struct.TYPE_5__* %8)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @hx509_peer_info_free(i32* %77)
  ret i32 0
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @peer_strings(i32, i32**, %struct.TYPE_6__*) #1

declare dso_local i32 @hx509_crypto_select(i32, i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_AlgorithmIdentifier(%struct.TYPE_5__*) #1

declare dso_local i32 @hx509_peer_info_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
