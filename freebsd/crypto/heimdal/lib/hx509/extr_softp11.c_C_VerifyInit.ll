; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_VerifyInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_VerifyInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_state = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.st_object = type { i32 }

@CKM_RSA_PKCS = common dso_local global i32 0, align 4
@CK_TRUE = common dso_local global i32 0, align 4
@CKA_VERIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"VerifyInit\0A\00", align 1
@CKR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @C_VerifyInit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.session_state*, align 8
  %9 = alloca [1 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.TYPE_3__], align 16
  %12 = alloca %struct.st_object*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %15 = load i32, i32* @CKM_RSA_PKCS, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @CK_TRUE, align 4
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* @CKA_VERIFY, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32* %10, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 4, i32* %21, align 8
  %22 = call i32 (...) @INIT_CONTEXT()
  %23 = call i32 @st_logf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @VERIFY_SESSION_HANDLE(i32 %24, %struct.session_state** %8)
  %26 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @commonInit(%struct.TYPE_3__* %26, i32 1, i32* %27, i32 1, i32 %28, i32 %29, %struct.st_object** %12)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %4, align 8
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.session_state*, %struct.session_state** %8, align 8
  %37 = getelementptr inbounds %struct.session_state, %struct.session_state* %36, i32 0, i32 1
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @dup_mechanism(i32* %37, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @CKR_OK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.st_object*, %struct.st_object** %12, align 8
  %45 = call i32 @OBJECT_ID(%struct.st_object* %44)
  %46 = load %struct.session_state*, %struct.session_state** %8, align 8
  %47 = getelementptr inbounds %struct.session_state, %struct.session_state* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %33
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i64 @commonInit(%struct.TYPE_3__*, i32, i32*, i32, i32, i32, %struct.st_object**) #1

declare dso_local i64 @dup_mechanism(i32*, i32) #1

declare dso_local i32 @OBJECT_ID(%struct.st_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
