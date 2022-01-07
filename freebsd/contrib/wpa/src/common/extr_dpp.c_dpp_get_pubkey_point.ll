; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_pubkey_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_get_pubkey_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"DDP: Failed to determine public key encoding length\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"DDP: Failed to encode public key (res=%d/%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (i32*, i32)* @dpp_get_pubkey_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_get_pubkey_point(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %73

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %19 = call i32 @EC_KEY_set_conv_form(i32* %17, i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @i2o_ECPublicKey(i32* %20, i8** null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @EC_KEY_free(i32* %27)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %73

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.wpabuf* @wpabuf_alloc(i32 %30)
  store %struct.wpabuf* %31, %struct.wpabuf** %9, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = icmp ne %struct.wpabuf* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @EC_KEY_free(i32* %35)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %73

37:                                               ; preds = %29
  %38 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @wpabuf_put(%struct.wpabuf* %38, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @i2o_ECPublicKey(i32* %41, i8** %10)
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @EC_KEY_free(i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* @MSG_ERROR, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %54 = call i32 @wpabuf_free(%struct.wpabuf* %53)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %73

55:                                               ; preds = %37
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %55
  %59 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %60 = call i8* @wpabuf_mhead(%struct.wpabuf* %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @os_memmove(i8* %61, i8* %63, i32 %65)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %68 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %58, %55
  %72 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %72, %struct.wpabuf** %3, align 8
  br label %73

73:                                               ; preds = %71, %48, %34, %24, %15
  %74 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %74
}

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EC_KEY_set_conv_form(i32*, i32) #1

declare dso_local i32 @i2o_ECPublicKey(i32*, i8**) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i8* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @os_memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
