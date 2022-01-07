; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_p2p_sd_dns_uncompress_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_p2p_sd_dns_uncompress_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"P2P: Invalid domain name sequence starting with 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"P2P: No room for full DNS offset field\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"P2P: Invalid DNS pointer offset %u\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"P2P: Invalid domain name sequence - no room for label with length %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*, i32**, i32*)* @p2p_sd_dns_uncompress_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_sd_dns_uncompress_label(i8** %0, i8* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  br label %16

16:                                               ; preds = %132, %5
  %17 = load i32**, i32*** %10, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %158

21:                                               ; preds = %16
  %22 = load i32**, i32*** %10, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 192
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %21
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %6, align 4
  br label %159

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %93

40:                                               ; preds = %37
  %41 = load i32*, i32** %11, align 8
  %42 = load i32**, i32*** %10, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = ptrtoint i32* %41 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = icmp slt i64 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %159

52:                                               ; preds = %40
  %53 = load i32**, i32*** %10, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 63
  %58 = shl i32 %57, 8
  %59 = load i32**, i32*** %10, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %58, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32**, i32*** %10, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = icmp sge i64 %65, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %52
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %6, align 4
  br label %159

78:                                               ; preds = %52
  %79 = load i32**, i32*** %10, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32* %81, i32** %79, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %15, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32**, i32*** %10, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 -2
  %92 = call i32 @p2p_sd_dns_uncompress_label(i8** %86, i8* %87, i32* %88, i32** %15, i32* %91)
  store i32 %92, i32* %6, align 4
  br label %159

93:                                               ; preds = %37
  %94 = load i32**, i32*** %10, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 63
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %159

102:                                              ; preds = %93
  %103 = load i32**, i32*** %10, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %103, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32*, i32** %11, align 8
  %109 = load i32**, i32*** %10, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %108 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = icmp sgt i64 %107, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %102
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  store i32 -1, i32* %6, align 4
  br label %159

120:                                              ; preds = %102
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = load i8*, i8** %8, align 8
  %125 = load i8**, i8*** %7, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %124 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = icmp sgt i64 %123, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  store i32 -2, i32* %6, align 4
  br label %159

132:                                              ; preds = %120
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i32**, i32*** %10, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @os_memcpy(i8* %134, i32* %136, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load i32**, i32*** %10, align 8
  %141 = load i32*, i32** %140, align 8
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %140, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i8**, i8*** %7, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = sext i32 %144 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %145, align 8
  %149 = load i8**, i8*** %7, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 46, i8* %151, align 1
  %152 = load i8**, i8*** %7, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %152, align 8
  %155 = load i8**, i8*** %7, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 0, i8* %157, align 1
  br label %16

158:                                              ; preds = %16
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %158, %131, %116, %101, %78, %74, %49, %33
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
