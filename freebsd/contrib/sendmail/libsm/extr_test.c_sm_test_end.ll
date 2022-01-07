; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_test.c_sm_test_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_test.c_sm_test_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%d of %d tests completed successfully\0A\00", align 1
@SmTestIndex = common dso_local global i32 0, align 4
@SmTestNumErrors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"*** %d error%s in test! ***\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_test_end() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i32, i32* @SmTestIndex, align 4
  %3 = load i32, i32* @SmTestNumErrors, align 4
  %4 = sub nsw i32 %2, %3
  %5 = load i32, i32* @SmTestIndex, align 4
  %6 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  %7 = load i32, i32* @SmTestNumErrors, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* @SmTestNumErrors, align 4
  %12 = load i32, i32* @SmTestNumErrors, align 4
  %13 = icmp sgt i32 %12, 1
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %16 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %11, i8* %15)
  br label %17

17:                                               ; preds = %9, %0
  %18 = load i32, i32* @SmTestNumErrors, align 4
  ret i32 %18
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
