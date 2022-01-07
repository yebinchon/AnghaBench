; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_lineedit.c_ntp_readline_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_lineedit.c_ntp_readline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lineedit_prompt = common dso_local global i64 0, align 8
@ntp_readline_initted = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_PROMPT = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@hev = common dso_local global i32 0, align 4
@ntp_el = common dso_local global i32* null, align 8
@ntp_hist = common dso_local global i32* null, align 8
@ntp_prompt_callback = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntp_readline_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i64, i64* @lineedit_prompt, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @lineedit_prompt, align 8
  %11 = call i32 @free(i64 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @estrdup(i8* %13)
  store i64 %14, i64* @lineedit_prompt, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @ntp_readline_initted, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
