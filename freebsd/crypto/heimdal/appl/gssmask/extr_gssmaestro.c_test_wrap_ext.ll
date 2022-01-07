; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_wrap_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_wrap_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"trailer\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"encrypt_token failed to host: %s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"decrypt_token failed to host: %s\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"decrypted'ed token have wrong length (%lu != %lu)\00", align 1
@GSMERR_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"decryptd'ed token have wrong data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.client*, i64, %struct.client*, i64, i32, i32)* @test_wrap_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_wrap_ext(%struct.client* %0, i64 %1, %struct.client* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.client* %2, %struct.client** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 6, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32 32, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 7, i32* %25, align 8
  %26 = call i32 @krb5_data_zero(%struct.TYPE_12__* %17)
  %27 = call i32 @krb5_data_zero(%struct.TYPE_12__* %18)
  %28 = load %struct.client*, %struct.client** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @wrap_token_ext(%struct.client* %28, i64 %29, i32 %30, i32 %31, %struct.TYPE_12__* %14, %struct.TYPE_12__* %15, %struct.TYPE_12__* %16, %struct.TYPE_12__* %17)
  store i64 %32, i64* %19, align 8
  %33 = load i64, i64* %19, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %6
  %36 = load %struct.client*, %struct.client** %8, align 8
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %19, align 8
  store i64 %40, i64* %7, align 8
  br label %88

41:                                               ; preds = %6
  %42 = load %struct.client*, %struct.client** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @unwrap_token_ext(%struct.client* %42, i64 %43, i32 %44, i32 %45, %struct.TYPE_12__* %14, %struct.TYPE_12__* %17, %struct.TYPE_12__* %16, %struct.TYPE_12__* %18)
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = call i32 @krb5_data_free(%struct.TYPE_12__* %17)
  %51 = load %struct.client*, %struct.client** %10, align 8
  %52 = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %19, align 8
  store i64 %55, i64* %7, align 8
  br label %88

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %65, i64 %68)
  %70 = load i64, i64* @GSMERR_ERROR, align 8
  store i64 %70, i64* %19, align 8
  br label %84

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @memcmp(i8* %73, i8* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i64, i64* @GSMERR_ERROR, align 8
  store i64 %82, i64* %19, align 8
  br label %83

83:                                               ; preds = %80, %71
  br label %84

84:                                               ; preds = %83, %62
  %85 = call i32 @krb5_data_free(%struct.TYPE_12__* %17)
  %86 = call i32 @krb5_data_free(%struct.TYPE_12__* %18)
  %87 = load i64, i64* %19, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %84, %49, %35
  %89 = load i64, i64* %7, align 8
  ret i64 %89
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_12__*) #1

declare dso_local i64 @wrap_token_ext(%struct.client*, i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @unwrap_token_ext(%struct.client*, i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_12__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
