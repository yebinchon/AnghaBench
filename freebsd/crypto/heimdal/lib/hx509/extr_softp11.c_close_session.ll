; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_close_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.session_state = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"application didn't do C_FindObjectsFinal\0A\00", align 1
@CK_INVALID_HANDLE = common dso_local global i32 0, align 4
@NULL_PTR = common dso_local global i8* null, align 8
@soft_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.session_state*)* @close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_session(%struct.session_state* %0) #0 {
  %2 = alloca %struct.session_state*, align 8
  store %struct.session_state* %0, %struct.session_state** %2, align 8
  %3 = load %struct.session_state*, %struct.session_state** %2, align 8
  %4 = getelementptr inbounds %struct.session_state, %struct.session_state* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @application_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.session_state*, %struct.session_state** %2, align 8
  %11 = call i32 @find_object_final(%struct.session_state* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @CK_INVALID_HANDLE, align 4
  %14 = load %struct.session_state*, %struct.session_state** %2, align 8
  %15 = getelementptr inbounds %struct.session_state, %struct.session_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** @NULL_PTR, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 1), align 8
  %17 = load i8*, i8** @NULL_PTR, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0), align 8
  %18 = load %struct.session_state*, %struct.session_state** %2, align 8
  %19 = call i32 @reset_crypto_state(%struct.session_state* %18)
  ret void
}

declare dso_local i32 @application_error(i8*) #1

declare dso_local i32 @find_object_final(%struct.session_state*) #1

declare dso_local i32 @reset_crypto_state(%struct.session_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
