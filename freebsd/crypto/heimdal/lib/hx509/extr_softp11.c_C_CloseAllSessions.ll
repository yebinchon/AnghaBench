; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_CloseAllSessions.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_CloseAllSessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"CloseAllSessions\0A\00", align 1
@MAX_NUM_SESSION = common dso_local global i64 0, align 8
@soft_token = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CK_INVALID_HANDLE = common dso_local global i64 0, align 8
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_CloseAllSessions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @INIT_CONTEXT()
  %5 = call i32 @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MAX_NUM_SESSION, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @soft_token, i32 0, i32 0), align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CK_INVALID_HANDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @soft_token, i32 0, i32 0), align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = call i32 @close_session(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %18, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* @CKR_OK, align 4
  ret i32 %28
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @close_session(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
