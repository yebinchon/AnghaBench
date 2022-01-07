; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_Verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_Verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.st_object** }
%struct.st_object = type { i32 }
%struct.session_state = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"Verify\0A\00", align 1
@CKR_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@soft_token = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CKR_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@CKR_GENERAL_ERROR = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_Verify(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.session_state*, align 8
  %13 = alloca %struct.st_object*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = call i32 (...) @INIT_CONTEXT()
  %20 = call i32 @st_logf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @VERIFY_SESSION_HANDLE(i32 %21, %struct.session_state** %12)
  %23 = load %struct.session_state*, %struct.session_state** %12, align 8
  %24 = getelementptr inbounds %struct.session_state, %struct.session_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %28, i32* %6, align 4
  br label %69

29:                                               ; preds = %5
  %30 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @soft_token, i32 0, i32 0, i32 0), align 8
  %31 = load %struct.session_state*, %struct.session_state** %12, align 8
  %32 = getelementptr inbounds %struct.session_state, %struct.session_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.st_object*, %struct.st_object** %30, i64 %34
  %36 = load %struct.st_object*, %struct.st_object** %35, align 8
  store %struct.st_object* %36, %struct.st_object** %13, align 8
  %37 = load %struct.session_state*, %struct.session_state** %12, align 8
  %38 = getelementptr inbounds %struct.session_state, %struct.session_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %44 [
    i32 128, label %42
  ]

42:                                               ; preds = %29
  %43 = call i32* (...) @hx509_signature_rsa_pkcs1_x509()
  store i32* %43, i32** %14, align 8
  br label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @CKR_FUNCTION_NOT_SUPPORTED, align 4
  store i32 %45, i32* %15, align 4
  br label %67

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @context, align 4
  %56 = load %struct.st_object*, %struct.st_object** %13, align 8
  %57 = getelementptr inbounds %struct.st_object, %struct.st_object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @_hx509_verify_signature(i32 %55, i32 %58, i32* %59, %struct.TYPE_9__* %17, %struct.TYPE_9__* %18)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* @CKR_GENERAL_ERROR, align 4
  store i32 %64, i32* %15, align 4
  br label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @CKR_OK, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %65, %63, %44
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %27
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i32* @hx509_signature_rsa_pkcs1_x509(...) #1

declare dso_local i32 @_hx509_verify_signature(i32, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
