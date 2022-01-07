; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_open_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11.c_pkcs11_open_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs11_provider = type { %struct.TYPE_5__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 (i32, i32, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32)*, i64 (i32)* }

@CKF_LOGIN_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pin required\00", align 1
@CKF_RW_SESSION = common dso_local global i32 0, align 4
@CKF_SERIAL_SESSION = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"C_OpenSession failed: %lu\00", align 1
@CKU_USER = common dso_local global i32 0, align 4
@CKR_USER_ALREADY_LOGGED_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"C_Login failed: %lu\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"C_CloseSession failed: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs11_provider*, i64, i8*)* @pkcs11_open_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_open_session(%struct.pkcs11_provider* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkcs11_provider*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pkcs11_provider* %0, %struct.pkcs11_provider** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %5, align 8
  %13 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %5, align 8
  %16 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CKF_LOGIN_REQUIRED, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %108

36:                                               ; preds = %30, %27, %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64 (i32, i32, i32*, i32*, i32*)*, i64 (i32, i32, i32*, i32*, i32*)** %38, align 8
  %40 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %5, align 8
  %41 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CKF_RW_SESSION, align 4
  %47 = load i32, i32* @CKF_SERIAL_SESSION, align 4
  %48 = or i32 %46, %47
  %49 = call i64 %39(i32 %45, i32 %48, i32* null, i32* null, i32* %10)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* @CKR_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  store i32 -1, i32* %4, align 4
  br label %108

55:                                               ; preds = %36
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %100

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @CKU_USER, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i64 %64(i32 %65, i32 %66, i32* %68, i32 %70)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @CKR_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %61
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @CKR_USER_ALREADY_LOGGED_IN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64 (i32)*, i64 (i32)** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 %84(i32 %85)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* @CKR_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %89, %79
  store i32 -1, i32* %4, align 4
  br label %108

93:                                               ; preds = %75, %61
  %94 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %5, align 8
  %95 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %58, %55
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.pkcs11_provider*, %struct.pkcs11_provider** %5, align 8
  %103 = getelementptr inbounds %struct.pkcs11_provider, %struct.pkcs11_provider* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %101, i32* %107, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %92, %52, %34
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
