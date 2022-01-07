; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_p2p_sd_dns_uncompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_p2p_sd_dns_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\04_tcp\05local\00\00\0C\00\01\04_udp\C0\11\00\0C\00\01\00", align 1
@DNS_HEADER_LEN = common dso_local global i32 0, align 4
@P2P_SD_IN_MEMORY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i64)* @p2p_sd_dns_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_sd_dns_uncompress(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %110

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %110

27:                                               ; preds = %22
  %28 = load i32, i32* @DNS_HEADER_LEN, align 4
  %29 = load i32, i32* @P2P_SD_IN_MEMORY_LEN, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @os_malloc(i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %110

39:                                               ; preds = %27
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* @DNS_HEADER_LEN, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @P2P_SD_IN_MEMORY_LEN, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %14, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* @DNS_HEADER_LEN, align 4
  %55 = call i32 @os_memset(i8* %53, i32 0, i32 %54)
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* @DNS_HEADER_LEN, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* @P2P_SD_IN_MEMORY_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @os_memcpy(i8* %59, i8* %60, i64 %62)
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* @DNS_HEADER_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* @P2P_SD_IN_MEMORY_LEN, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @os_memcpy(i8* %70, i8* %71, i64 %72)
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %16, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @p2p_sd_dns_uncompress_label(i8** %16, i8* %78, i8* %79, i8** %15, i8* %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %39
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @os_free(i8* %85)
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %6, align 4
  br label %110

88:                                               ; preds = %39
  %89 = load i8*, i8** %16, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %16, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 46, i8* %94, align 1
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 0, i8* %96, align 1
  br label %107

97:                                               ; preds = %88
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 46
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %106, %92
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @os_free(i8* %108)
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %84, %38, %26, %21
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i32 @p2p_sd_dns_uncompress_label(i8**, i8*, i8*, i8**, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
