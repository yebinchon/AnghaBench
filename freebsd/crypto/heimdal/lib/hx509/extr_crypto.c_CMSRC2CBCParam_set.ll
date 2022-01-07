; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_CMSRC2CBCParam_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_CMSRC2CBCParam_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct._RC2_params*, i32 }
%struct._RC2_params = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HX509_CRYPTO_SIG_INVALID_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @CMSRC2CBCParam_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CMSRC2CBCParam_set(i32 %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca %struct._RC2_params*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @decode_CMSRC2CBCParameter(i32 %16, i32 %19, %struct.TYPE_12__* %10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @hx509_clear_error_string(i32 %24)
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %84

27:                                               ; preds = %4
  %28 = call %struct._RC2_params* @calloc(i32 1, i32 4)
  store %struct._RC2_params* %28, %struct._RC2_params** %11, align 8
  %29 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %30 = icmp eq %struct._RC2_params* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 @free_CMSRC2CBCParameter(%struct.TYPE_12__* %10)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @hx509_clear_error_string(i32 %33)
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %84

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %57 [
    i32 160, label %39
    i32 120, label %45
    i32 58, label %51
  ]

39:                                               ; preds = %36
  %40 = call i32 (...) @EVP_rc2_40_cbc()
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %44 = getelementptr inbounds %struct._RC2_params, %struct._RC2_params* %43, i32 0, i32 0
  store i32 40, i32* %44, align 4
  br label %62

45:                                               ; preds = %36
  %46 = call i32 (...) @EVP_rc2_64_cbc()
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %50 = getelementptr inbounds %struct._RC2_params, %struct._RC2_params* %49, i32 0, i32 0
  store i32 64, i32* %50, align 4
  br label %62

51:                                               ; preds = %36
  %52 = call i32 (...) @EVP_rc2_cbc()
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %56 = getelementptr inbounds %struct._RC2_params, %struct._RC2_params* %55, i32 0, i32 0
  store i32 128, i32* %56, align 4
  br label %62

57:                                               ; preds = %36
  %58 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %59 = call i32 @free(%struct._RC2_params* %58)
  %60 = call i32 @free_CMSRC2CBCParameter(%struct.TYPE_12__* %10)
  %61 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %61, i32* %5, align 4
  br label %84

62:                                               ; preds = %51, %45, %39
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = call i32 @der_copy_octet_string(i32* %66, %struct.TYPE_11__* %67)
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = call i32 @free_CMSRC2CBCParameter(%struct.TYPE_12__* %10)
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %75 = call i32 @free(%struct._RC2_params* %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @hx509_clear_error_string(i32 %76)
  br label %82

78:                                               ; preds = %69
  %79 = load %struct._RC2_params*, %struct._RC2_params** %11, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store %struct._RC2_params* %79, %struct._RC2_params** %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %57, %31, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @decode_CMSRC2CBCParameter(i32, i32, %struct.TYPE_12__*, i64*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local %struct._RC2_params* @calloc(i32, i32) #1

declare dso_local i32 @free_CMSRC2CBCParameter(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_rc2_40_cbc(...) #1

declare dso_local i32 @EVP_rc2_64_cbc(...) #1

declare dso_local i32 @EVP_rc2_cbc(...) #1

declare dso_local i32 @free(%struct._RC2_params*) #1

declare dso_local i32 @der_copy_octet_string(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
