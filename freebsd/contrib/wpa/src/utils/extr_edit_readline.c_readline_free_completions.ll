; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit_readline.c_readline_free_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit_readline.c_readline_free_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_completions = common dso_local global i32***** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @readline_free_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readline_free_completions() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*****, i32****** @pending_completions, align 8
  %3 = icmp eq i32***** %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %27

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %21, %5
  %7 = load i32*****, i32****** @pending_completions, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32****, i32***** %7, i64 %9
  %11 = load i32****, i32***** %10, align 8
  %12 = icmp ne i32**** %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load i32*****, i32****** @pending_completions, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32****, i32***** %14, i64 %16
  %18 = load i32****, i32***** %17, align 8
  %19 = bitcast i32**** %18 to i32*****
  %20 = call i32 @os_free(i32***** %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %6

24:                                               ; preds = %6
  %25 = load i32*****, i32****** @pending_completions, align 8
  %26 = call i32 @os_free(i32***** %25)
  store i32***** null, i32****** @pending_completions, align 8
  br label %27

27:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @os_free(i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
