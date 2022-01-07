; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_nai_realm_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nai_realm = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NAI Realm Count: %u\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Invalid NAI Realm Count %u - not enough data (%u octets) for that many realms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nai_realm* (%struct.wpabuf*, i64*)* @nai_realm_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nai_realm* @nai_realm_parse(%struct.wpabuf* %0, i64* %1) #0 {
  %3 = alloca %struct.nai_realm*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nai_realm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.nai_realm* null, %struct.nai_realm** %3, align 8
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = call i64 @wpabuf_len(%struct.wpabuf* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.nai_realm* null, %struct.nai_realm** %3, align 8
  br label %78

21:                                               ; preds = %15
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = call i32* @wpabuf_head_u8(%struct.wpabuf* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @WPA_GET_LE16(i32* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %34, 2
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = udiv i64 %37, 5
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %21
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32 %44)
  store %struct.nai_realm* null, %struct.nai_realm** %3, align 8
  br label %78

46:                                               ; preds = %21
  %47 = load i64, i64* %10, align 8
  %48 = call %struct.nai_realm* @os_calloc(i64 %47, i32 4)
  store %struct.nai_realm* %48, %struct.nai_realm** %6, align 8
  %49 = load %struct.nai_realm*, %struct.nai_realm** %6, align 8
  %50 = icmp eq %struct.nai_realm* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store %struct.nai_realm* null, %struct.nai_realm** %3, align 8
  br label %78

52:                                               ; preds = %46
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.nai_realm*, %struct.nai_realm** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.nai_realm, %struct.nai_realm* %58, i64 %59
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32* @nai_realm_parse_realm(%struct.nai_realm* %60, i32* %61, i32* %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.nai_realm*, %struct.nai_realm** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @nai_realm_free(%struct.nai_realm* %67, i64 %68)
  store %struct.nai_realm* null, %struct.nai_realm** %3, align 8
  br label %78

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %53

74:                                               ; preds = %53
  %75 = load i64, i64* %10, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.nai_realm*, %struct.nai_realm** %6, align 8
  store %struct.nai_realm* %77, %struct.nai_realm** %3, align 8
  br label %78

78:                                               ; preds = %74, %66, %51, %40, %20, %14
  %79 = load %struct.nai_realm*, %struct.nai_realm** %3, align 8
  ret %struct.nai_realm* %79
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i64 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local %struct.nai_realm* @os_calloc(i64, i32) #1

declare dso_local i32* @nai_realm_parse_realm(%struct.nai_realm*, i32*, i32*) #1

declare dso_local i32 @nai_realm_free(%struct.nai_realm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
