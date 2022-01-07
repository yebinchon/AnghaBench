; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_free_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*******)* @terminal_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_free_buffer(i32******* %0) #0 {
  %2 = alloca i32*******, align 8
  %3 = alloca i32******, align 8
  %4 = alloca i32******, align 8
  store i32******* %0, i32******** %2, align 8
  %5 = load i32*******, i32******** %2, align 8
  %6 = load i32******, i32******* %5, align 8
  %7 = icmp eq i32****** %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load i32*******, i32******** %2, align 8
  %11 = load i32******, i32******* %10, align 8
  store i32****** %11, i32******* %3, align 8
  %12 = load i32*******, i32******** %2, align 8
  store i32****** null, i32******* %12, align 8
  %13 = load i32******, i32******* %3, align 8
  store i32****** %13, i32******* %4, align 8
  br label %14

14:                                               ; preds = %23, %9
  %15 = load i32******, i32******* %4, align 8
  %16 = load i32*****, i32****** %15, align 8
  %17 = icmp ne i32***** %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32******, i32******* %4, align 8
  %20 = load i32*****, i32****** %19, align 8
  %21 = bitcast i32***** %20 to i32******
  %22 = call i32 @el_free(i32****** %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32******, i32******* %4, align 8
  %25 = getelementptr inbounds i32*****, i32****** %24, i32 1
  store i32****** %25, i32******* %4, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load i32******, i32******* %3, align 8
  %28 = call i32 @el_free(i32****** %27)
  br label %29

29:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @el_free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
