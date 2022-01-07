; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_testrs6000.c_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_testrs6000.c_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.sigcontext = type { i32 }

@SIGALRM = common dso_local global i32 0, align 4
@adjustment = common dso_local global i32 0, align 4
@result = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"adjtime call failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"result.u = %d.%06.6d  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeout(i32 %0, i32 %1, %struct.sigcontext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigcontext*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.sigcontext* %2, %struct.sigcontext** %7, align 8
  %8 = load i32, i32* @SIGALRM, align 4
  %9 = call i32 @signal(i32 %8, i32 (i32, i32, %struct.sigcontext*)* @timeout)
  %10 = call i64 @adjtime(i32* @adjustment, %struct.TYPE_3__* @result)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @result, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @result, i32 0, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %14
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @result, i32 0, i32 0), align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @result, i32 0, i32 1), align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @signal(i32, i32 (i32, i32, %struct.sigcontext*)*) #1

declare dso_local i64 @adjtime(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
