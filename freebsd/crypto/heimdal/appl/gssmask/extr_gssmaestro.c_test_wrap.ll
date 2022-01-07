; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_test_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"encrypt_token failed to host: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"decrypt_token failed to host: %s\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"decrypted'ed token have wrong length (%lu != %lu)\00", align 1
@GSMERR_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"decryptd'ed token have wrong data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.client*, i64, %struct.client*, i64, i32)* @test_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_wrap(%struct.client* %0, i64 %1, %struct.client* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.client*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.client* %2, %struct.client** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 3, i32* %17, align 8
  %18 = call i32 @krb5_data_zero(%struct.TYPE_8__* %13)
  %19 = call i32 @krb5_data_zero(%struct.TYPE_8__* %14)
  %20 = load %struct.client*, %struct.client** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @encrypt_token(%struct.client* %20, i64 %21, i32 %22, %struct.TYPE_8__* %12, %struct.TYPE_8__* %13)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.client*, %struct.client** %7, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %6, align 8
  br label %78

32:                                               ; preds = %5
  %33 = load %struct.client*, %struct.client** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @decrypt_token(%struct.client* %33, i64 %34, i32 %35, %struct.TYPE_8__* %13, %struct.TYPE_8__* %14)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = call i32 @krb5_data_free(%struct.TYPE_8__* %13)
  %41 = load %struct.client*, %struct.client** %9, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %6, align 8
  br label %78

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load i64, i64* @GSMERR_ERROR, align 8
  store i64 %60, i64* %15, align 8
  br label %74

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @memcmp(i8* %63, i8* %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i64, i64* @GSMERR_ERROR, align 8
  store i64 %72, i64* %15, align 8
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %73, %52
  %75 = call i32 @krb5_data_free(%struct.TYPE_8__* %13)
  %76 = call i32 @krb5_data_free(%struct.TYPE_8__* %14)
  %77 = load i64, i64* %15, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %74, %39, %26
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_8__*) #1

declare dso_local i64 @encrypt_token(%struct.client*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @decrypt_token(%struct.client*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
