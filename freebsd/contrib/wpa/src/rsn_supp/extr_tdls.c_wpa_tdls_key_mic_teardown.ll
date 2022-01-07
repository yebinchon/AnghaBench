; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_key_mic_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_key_mic_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_tdls_ftie = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TDLS: No memory for MIC calculation\00", align 1
@TDLS_MIC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TDLS: Data for FTIE MIC\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"TDLS: KCK\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TDLS: FTIE MIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32*, i32*)* @wpa_tdls_key_mic_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_key_mic_teardown(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.wpa_tdls_ftie*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %125

24:                                               ; preds = %7
  %25 = load i32*, i32** %13, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = add i64 %30, 4
  %32 = add i64 %31, 4
  %33 = add i64 %32, 2
  %34 = load i32*, i32** %14, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %33, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = call i32* @os_zalloc(i32 %40)
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* @MSG_WARNING, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %125

47:                                               ; preds = %24
  %48 = load i32*, i32** %16, align 8
  store i32* %48, i32** %17, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 2, %53
  %55 = call i32 @os_memcpy(i32* %49, i32* %50, i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 2, %58
  %60 = load i32*, i32** %17, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @WPA_PUT_LE16(i32* %63, i32 %64)
  %66 = load i32*, i32** %17, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %17, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %17, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %17, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 2, %78
  %80 = call i32 @os_memcpy(i32* %74, i32* %75, i32 %79)
  %81 = load i32*, i32** %17, align 8
  %82 = bitcast i32* %81 to %struct.wpa_tdls_ftie*
  store %struct.wpa_tdls_ftie* %82, %struct.wpa_tdls_ftie** %18, align 8
  %83 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %18, align 8
  %84 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TDLS_MIC_LEN, align 4
  %87 = call i32 @os_memset(i32 %85, i32 0, i32 %86)
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 2, %90
  %92 = load i32*, i32** %17, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %17, align 8
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = ptrtoint i32* %97 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @wpa_hexdump(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %96, i32 %103)
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @wpa_hexdump_key(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %106, i32 16)
  %108 = load i32*, i32** %9, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @omac1_aes_128(i32* %108, i32* %109, i32 %116, i32* %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @os_free(i32* %119)
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @wpa_hexdump(i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %122, i32 16)
  %124 = load i32, i32* %19, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %47, %44, %23
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @omac1_aes_128(i32*, i32*, i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
