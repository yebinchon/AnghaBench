; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_match_bonjour_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_match_bonjour_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_srv_bonjour = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_srv_bonjour*, i32*, i64)* @match_bonjour_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bonjour_query(%struct.p2p_srv_bonjour* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_srv_bonjour*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  store %struct.p2p_srv_bonjour* %0, %struct.p2p_srv_bonjour** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %14 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wpabuf_len(i32 %15)
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %86

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 -3
  %24 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %25 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @wpabuf_head_u8(i32 %26)
  %28 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %29 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpabuf_len(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 -3
  %35 = call i64 @os_memcmp(i32* %23, i32* %34, i64 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %86

38:                                               ; preds = %19
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %41 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpabuf_len(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %49 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @wpabuf_head(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 3
  %54 = call i64 @os_memcmp(i32* %47, i32* %51, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %86

57:                                               ; preds = %46, %38
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 3
  %62 = trunc i64 %61 to i32
  %63 = call i64 @p2p_sd_dns_uncompress(i8* %58, i32 256, i32* %59, i32 %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %86

66:                                               ; preds = %57
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %68 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %69 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @wpabuf_head(i32 %70)
  %72 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %5, align 8
  %73 = getelementptr inbounds %struct.p2p_srv_bonjour, %struct.p2p_srv_bonjour* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpabuf_len(i32 %74)
  %76 = sub nsw i32 %75, 3
  %77 = call i64 @p2p_sd_dns_uncompress(i8* %67, i32 256, i32* %71, i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %86

80:                                               ; preds = %66
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %83 = call i64 @os_strcmp(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %79, %65, %56, %37, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32* @wpabuf_head_u8(i32) #1

declare dso_local i32* @wpabuf_head(i32) #1

declare dso_local i64 @p2p_sd_dns_uncompress(i8*, i32, i32*, i32, i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
