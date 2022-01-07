; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_move_word_right.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_move_word_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdbuf_pos = common dso_local global i64 0, align 8
@cmdbuf_len = common dso_local global i64 0, align 8
@cmdbuf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @move_word_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_word_right() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = load i64, i64* @cmdbuf_pos, align 8
  %3 = load i64, i64* @cmdbuf_len, align 8
  %4 = icmp ult i64 %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i8*, i8** @cmdbuf, align 8
  %7 = load i64, i64* @cmdbuf_pos, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ false, %1 ], [ %11, %5 ]
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load i64, i64* @cmdbuf_pos, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @cmdbuf_pos, align 8
  br label %1

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* @cmdbuf_pos, align 8
  %20 = load i64, i64* @cmdbuf_len, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** @cmdbuf, align 8
  %24 = load i64, i64* @cmdbuf_pos, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 32
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* @cmdbuf_pos, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @cmdbuf_pos, align 8
  br label %18

34:                                               ; preds = %29
  %35 = call i32 (...) @edit_redraw()
  ret void
}

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
