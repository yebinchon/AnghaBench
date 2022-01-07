; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntptime.c_timex_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntptime.c_timex_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timex_state.buf = internal global [32 x i8] zeroinitializer, align 16
@timex_states = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"TIME-#%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @timex_state(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8**, i8*** @timex_states, align 8
  %7 = call i64 @COUNTOF(i8** %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i8**, i8*** @timex_states, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @timex_state.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @timex_state.buf, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i64 @COUNTOF(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
