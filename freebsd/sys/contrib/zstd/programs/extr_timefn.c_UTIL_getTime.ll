; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_timefn.c_UTIL_getTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_timefn.c_UTIL_getTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTIL_TIME_INITIALIZER = common dso_local global i32 0, align 4
@TIME_UTC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"timefn::timespec_get\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTIL_getTime() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @UTIL_TIME_INITIALIZER, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @TIME_UTC, align 8
  %4 = call i64 @timespec_get(i32* %1, i64 %3)
  %5 = load i64, i64* @TIME_UTC, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @timespec_get(i32*, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
