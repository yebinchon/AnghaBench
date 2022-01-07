; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_Sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_Sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.st_object** }
%struct.st_object = type { i32 }
%struct.session_state = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"Sign\0A\00", align 1
@CKR_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"signature len NULL\0A\00", align 1
@NULL_PTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"data NULL\0A\00", align 1
@soft_token = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"private key NULL\0A\00", align 1
@CKR_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@CKR_DEVICE_ERROR = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_Sign(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.session_state*, align 8
  %13 = alloca %struct.st_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = call i32 (...) @INIT_CONTEXT()
  %20 = call i32 @st_logf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @VERIFY_SESSION_HANDLE(i32 %21, %struct.session_state** %12)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.session_state*, %struct.session_state** %12, align 8
  %26 = getelementptr inbounds %struct.session_state, %struct.session_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %30, i32* %6, align 4
  br label %116

31:                                               ; preds = %5
  %32 = load i64*, i64** %11, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 @st_logf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %36, i32* %14, align 4
  br label %103

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @NULL_PTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @st_logf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %43, i32* %14, align 4
  br label %103

44:                                               ; preds = %37
  %45 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @soft_token, i32 0, i32 0, i32 0), align 8
  %46 = load %struct.session_state*, %struct.session_state** %12, align 8
  %47 = getelementptr inbounds %struct.session_state, %struct.session_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.st_object*, %struct.st_object** %45, i64 %49
  %51 = load %struct.st_object*, %struct.st_object** %50, align 8
  store %struct.st_object* %51, %struct.st_object** %13, align 8
  %52 = load %struct.st_object*, %struct.st_object** %13, align 8
  %53 = getelementptr inbounds %struct.st_object, %struct.st_object* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @hx509_cert_have_private_key(i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = call i32 @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %59, i32* %6, align 4
  br label %116

60:                                               ; preds = %44
  %61 = load %struct.session_state*, %struct.session_state** %12, align 8
  %62 = getelementptr inbounds %struct.session_state, %struct.session_state* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %68 [
    i32 128, label %66
  ]

66:                                               ; preds = %60
  %67 = call i32* (...) @hx509_signature_rsa_pkcs1_x509()
  store i32* %67, i32** %16, align 8
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @CKR_FUNCTION_NOT_SUPPORTED, align 4
  store i32 %69, i32* %14, align 4
  br label %103

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32* %72, i32** %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @context, align 4
  %77 = load %struct.st_object*, %struct.st_object** %13, align 8
  %78 = getelementptr inbounds %struct.st_object, %struct.st_object* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @_hx509_cert_private_key(i32 %79)
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @_hx509_create_signature(i32 %76, i32 %80, i32* %81, %struct.TYPE_10__* %18, i32* null, %struct.TYPE_10__* %17)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @CKR_DEVICE_ERROR, align 4
  store i32 %86, i32* %14, align 4
  br label %103

87:                                               ; preds = %70
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %11, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @NULL_PTR, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @memcpy(i64 %95, i32* %97, i64 %99)
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i32, i32* @CKR_OK, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %101, %85, %68, %41, %34
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @memset(i32* %109, i32 0, i64 %111)
  %113 = call i32 @der_free_octet_string(%struct.TYPE_10__* %17)
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %57, %29
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i64 @hx509_cert_have_private_key(i32) #1

declare dso_local i32* @hx509_signature_rsa_pkcs1_x509(...) #1

declare dso_local i32 @_hx509_create_signature(i32, i32, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @_hx509_cert_private_key(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
