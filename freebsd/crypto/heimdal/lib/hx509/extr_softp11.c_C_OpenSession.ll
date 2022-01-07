; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_OpenSession.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_OpenSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"OpenSession: slot: %d\0A\00", align 1
@soft_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_NUM_SESSION = common dso_local global i64 0, align 8
@CKR_SESSION_COUNT = common dso_local global i32 0, align 4
@CK_INVALID_HANDLE = common dso_local global i64 0, align 8
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_OpenSession(i64 %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = call i32 (...) @INIT_CONTEXT()
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @st_logf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0), align 8
  %18 = load i64, i64* @MAX_NUM_SESSION, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @CKR_SESSION_COUNT, align 4
  store i32 %21, i32* %6, align 4
  br label %65

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 3), align 4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 2), align 8
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %39, %22
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @MAX_NUM_SESSION, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CK_INVALID_HANDLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %25

42:                                               ; preds = %37, %25
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @MAX_NUM_SESSION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @abort() #3
  unreachable

48:                                               ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0), align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0), align 8
  %51 = call i32 (...) @random()
  %52 = and i32 %51, 1048575
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @CKR_OK, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %48, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
