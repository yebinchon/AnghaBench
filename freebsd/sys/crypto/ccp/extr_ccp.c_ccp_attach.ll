; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i64, i32, i32, i32 }

@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not get crypto driver id\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@g_ccp_softc = common dso_local global %struct.ccp_softc* null, align 8
@VERSION_CAP_TRNG = common dso_local global i32 0, align 4
@random_ccp = common dso_local global i32 0, align 4
@VERSION_CAP_AES = common dso_local global i32 0, align 4
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@CRYPTO_AES_ICM = common dso_local global i32 0, align 4
@CRYPTO_AES_NIST_GCM_16 = common dso_local global i32 0, align 4
@CRYPTO_AES_128_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_192_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_256_NIST_GMAC = common dso_local global i32 0, align 4
@CRYPTO_AES_XTS = common dso_local global i32 0, align 4
@VERSION_CAP_SHA = common dso_local global i32 0, align 4
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_256_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_384_HMAC = common dso_local global i32 0, align 4
@CRYPTO_SHA2_512_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ccp_softc* @device_get_softc(i32 %6)
  store %struct.ccp_softc* %7, %struct.ccp_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %13 = call i64 @crypto_get_driverid(i32 %11, i32 4, i32 %12)
  %14 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %123

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ccp_hw_attach(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %123

31:                                               ; preds = %24
  %32 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %32, i32 0, i32 2
  %34 = load i32, i32* @MTX_DEF, align 4
  %35 = call i32 @mtx_init(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %34)
  %36 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %37 = call i32 @ccp_initialize_queues(%struct.ccp_softc* %36)
  %38 = load %struct.ccp_softc*, %struct.ccp_softc** @g_ccp_softc, align 8
  %39 = icmp eq %struct.ccp_softc* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  store %struct.ccp_softc* %41, %struct.ccp_softc** @g_ccp_softc, align 8
  %42 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VERSION_CAP_TRNG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @random_source_register(i32* @random_ccp)
  br label %50

50:                                               ; preds = %48, %40
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VERSION_CAP_AES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %51
  %59 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %63 = call i32 @crypto_register(i64 %61, i32 %62, i32 0, i32 0)
  %64 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @CRYPTO_AES_ICM, align 4
  %68 = call i32 @crypto_register(i64 %66, i32 %67, i32 0, i32 0)
  %69 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @CRYPTO_AES_NIST_GCM_16, align 4
  %73 = call i32 @crypto_register(i64 %71, i32 %72, i32 0, i32 0)
  %74 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @CRYPTO_AES_128_NIST_GMAC, align 4
  %78 = call i32 @crypto_register(i64 %76, i32 %77, i32 0, i32 0)
  %79 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @CRYPTO_AES_192_NIST_GMAC, align 4
  %83 = call i32 @crypto_register(i64 %81, i32 %82, i32 0, i32 0)
  %84 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @CRYPTO_AES_256_NIST_GMAC, align 4
  %88 = call i32 @crypto_register(i64 %86, i32 %87, i32 0, i32 0)
  %89 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @CRYPTO_AES_XTS, align 4
  %93 = call i32 @crypto_register(i64 %91, i32 %92, i32 0, i32 0)
  br label %94

94:                                               ; preds = %58, %51
  %95 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @VERSION_CAP_SHA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %103 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %106 = call i32 @crypto_register(i64 %104, i32 %105, i32 0, i32 0)
  %107 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @CRYPTO_SHA2_256_HMAC, align 4
  %111 = call i32 @crypto_register(i64 %109, i32 %110, i32 0, i32 0)
  %112 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @CRYPTO_SHA2_384_HMAC, align 4
  %116 = call i32 @crypto_register(i64 %114, i32 %115, i32 0, i32 0)
  %117 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @CRYPTO_SHA2_512_HMAC, align 4
  %121 = call i32 @crypto_register(i64 %119, i32 %120, i32 0, i32 0)
  br label %122

122:                                              ; preds = %101, %94
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %29, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.ccp_softc* @device_get_softc(i32) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ccp_hw_attach(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ccp_initialize_queues(%struct.ccp_softc*) #1

declare dso_local i32 @random_source_register(i32*) #1

declare dso_local i32 @crypto_register(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
