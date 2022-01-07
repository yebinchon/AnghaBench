; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_mutex_emul.c_ipf_mutex_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/lib/extr_mutex_emul.c_ipf_mutex_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initcount = common dso_local global i64 0, align 8
@mutex_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"initcount %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipf_mutex_clean() #0 {
  %1 = load i64, i64* @initcount, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i64, i64* @mutex_file, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i64, i64* @mutex_file, align 8
  %8 = load i64, i64* @initcount, align 8
  %9 = call i32 @fprintf(i64 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = call i32 (...) @abort() #3
  unreachable

12:                                               ; preds = %0
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i64) #1

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
