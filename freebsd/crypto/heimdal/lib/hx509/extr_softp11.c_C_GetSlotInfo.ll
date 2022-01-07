; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_GetSlotInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_GetSlotInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"GetSlotInfo: slot: %d : %s\0A\00", align 1
@CKR_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Heimdal hx509 SoftToken (slot)\00", align 1
@CKF_TOKEN_PRESENT = common dso_local global i32 0, align 4
@soft_token = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CKF_HW_SLOT = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_GetSlotInfo(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %6 = call i32 (...) @INIT_CONTEXT()
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (...) @has_session()
  %9 = call i32 @st_logf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_11__* %10, i32 18, i32 56)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @snprintf_fill(i8* %20, i32 8, i8 signext 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @snprintf_fill(i8* %25, i32 8, i8 signext 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @CKF_TOKEN_PRESENT, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @soft_token, i32 0, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load i32, i32* @CKF_HW_SLOT, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %16
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @CKR_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %38, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*, i32, i32) #1

declare dso_local i32 @has_session(...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @snprintf_fill(i8*, i32, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
