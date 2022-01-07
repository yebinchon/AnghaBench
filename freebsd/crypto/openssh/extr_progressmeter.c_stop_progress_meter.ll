; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_stop_progress_meter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_stop_progress_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_pos = common dso_local global i64 0, align 8
@end_pos = common dso_local global i64 0, align 8
@vwrite = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_progress_meter() #0 {
  %1 = call i32 @alarm(i32 0)
  %2 = call i32 (...) @can_output()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %15

5:                                                ; preds = %0
  %6 = load i64, i64* @cur_pos, align 8
  %7 = load i64, i64* @end_pos, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 (...) @refresh_progress_meter()
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i32, i32* @vwrite, align 4
  %13 = load i32, i32* @STDOUT_FILENO, align 4
  %14 = call i32 @atomicio(i32 %12, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %15

15:                                               ; preds = %11, %4
  ret void
}

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @can_output(...) #1

declare dso_local i32 @refresh_progress_meter(...) #1

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
