; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_move_word_left.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_move_word_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdbuf_pos = common dso_local global i32 0, align 4
@cmdbuf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @move_word_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_word_left() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = load i32, i32* @cmdbuf_pos, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load i8*, i8** @cmdbuf, align 8
  %6 = load i32, i32* @cmdbuf_pos, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i1 [ false, %1 ], [ %12, %4 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i32, i32* @cmdbuf_pos, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @cmdbuf_pos, align 4
  br label %1

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* @cmdbuf_pos, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** @cmdbuf, align 8
  %24 = load i32, i32* @cmdbuf_pos, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 32
  br label %31

31:                                               ; preds = %22, %19
  %32 = phi i1 [ false, %19 ], [ %30, %22 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, i32* @cmdbuf_pos, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @cmdbuf_pos, align 4
  br label %19

36:                                               ; preds = %31
  %37 = call i32 (...) @edit_redraw()
  ret void
}

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
