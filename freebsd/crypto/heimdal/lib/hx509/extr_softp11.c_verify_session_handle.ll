; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_verify_session_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_verify_session_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.session_state* }
%struct.session_state = type { i64 }

@MAX_NUM_SESSION = common dso_local global i64 0, align 8
@soft_token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"use of invalid handle: 0x%08lx\0A\00", align 1
@CKR_SESSION_HANDLE_INVALID = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.session_state**)* @verify_session_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_session_handle(i64 %0, %struct.session_state** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.session_state**, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.session_state** %1, %struct.session_state*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @MAX_NUM_SESSION, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.session_state*, %struct.session_state** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soft_token, i32 0, i32 0), align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.session_state, %struct.session_state* %12, i64 %13
  %15 = getelementptr inbounds %struct.session_state, %struct.session_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MAX_NUM_SESSION, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @application_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @CKR_SESSION_HANDLE_INVALID, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load %struct.session_state**, %struct.session_state*** %5, align 8
  %34 = icmp ne %struct.session_state** %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.session_state*, %struct.session_state** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soft_token, i32 0, i32 0), align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.session_state, %struct.session_state* %36, i64 %37
  %39 = load %struct.session_state**, %struct.session_state*** %5, align 8
  store %struct.session_state* %38, %struct.session_state** %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* @CKR_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @application_error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
