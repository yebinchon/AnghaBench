; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_ftie_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_ftie_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_tdls_ftie = type { i32 }
%struct.wpa_tdls_lnkid = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TDLS: No memory for MIC calculation\00", align 1
@TDLS_MIC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TDLS: Data for FTIE MIC\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"TDLS: KCK\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"TDLS: FTIE MIC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32*, i32*, i32*)* @wpa_tdls_ftie_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_ftie_mic(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.wpa_tdls_ftie*, align 8
  %19 = alloca %struct.wpa_tdls_lnkid*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %23, 1
  %25 = add nsw i32 %24, 2
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = add nsw i32 %29, 2
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = add nsw i32 %34, 2
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = add nsw i32 %39, 2
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = call i32* @os_zalloc(i32 %45)
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %7
  %50 = load i32, i32* @MSG_WARNING, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %172

52:                                               ; preds = %7
  %53 = load i32*, i32** %16, align 8
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = bitcast i32* %54 to %struct.wpa_tdls_lnkid*
  store %struct.wpa_tdls_lnkid* %55, %struct.wpa_tdls_lnkid** %19, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %19, align 8
  %58 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @os_memcpy(i32* %56, i32* %59, i32 %60)
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = load i32*, i32** %17, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load %struct.wpa_tdls_lnkid*, %struct.wpa_tdls_lnkid** %19, align 8
  %68 = getelementptr inbounds %struct.wpa_tdls_lnkid, %struct.wpa_tdls_lnkid* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @ETH_ALEN, align 4
  %71 = call i32 @os_memcpy(i32* %66, i32* %69, i32 %70)
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %17, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %17, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32*, i32** %17, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 2, %83
  %85 = call i32 @os_memcpy(i32* %79, i32* %80, i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 2, %88
  %90 = load i32*, i32** %17, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %17, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 2, %97
  %99 = call i32 @os_memcpy(i32* %93, i32* %94, i32 %98)
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 2, %102
  %104 = load i32*, i32** %17, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %17, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 2, %111
  %113 = call i32 @os_memcpy(i32* %107, i32* %108, i32 %112)
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 2, %116
  %118 = load i32*, i32** %17, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %17, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 2, %125
  %127 = call i32 @os_memcpy(i32* %121, i32* %122, i32 %126)
  %128 = load i32*, i32** %17, align 8
  %129 = bitcast i32* %128 to %struct.wpa_tdls_ftie*
  store %struct.wpa_tdls_ftie* %129, %struct.wpa_tdls_ftie** %18, align 8
  %130 = load %struct.wpa_tdls_ftie*, %struct.wpa_tdls_ftie** %18, align 8
  %131 = getelementptr inbounds %struct.wpa_tdls_ftie, %struct.wpa_tdls_ftie* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TDLS_MIC_LEN, align 4
  %134 = call i32 @os_memset(i32 %132, i32 0, i32 %133)
  %135 = load i32*, i32** %14, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 2, %137
  %139 = load i32*, i32** %17, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %17, align 8
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i32*, i32** %16, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = ptrtoint i32* %144 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i32 @wpa_hexdump(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %143, i32 %150)
  %152 = load i32, i32* @MSG_DEBUG, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @wpa_hexdump_key(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %153, i32 16)
  %155 = load i32*, i32** %9, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = ptrtoint i32* %157 to i64
  %160 = ptrtoint i32* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @omac1_aes_128(i32* %155, i32* %156, i32 %163, i32* %164)
  store i32 %165, i32* %20, align 4
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @os_free(i32* %166)
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @wpa_hexdump(i32 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %169, i32 16)
  %171 = load i32, i32* %20, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %52, %49
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

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
