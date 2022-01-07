; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_delete_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit.c_delete_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmdbuf_pos = common dso_local global i32 0, align 4
@cmdbuf = common dso_local global i8* null, align 8
@cmdbuf_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_word() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @edit_clear_line()
  %3 = load i32, i32* @cmdbuf_pos, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i8*, i8** @cmdbuf, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br label %16

16:                                               ; preds = %7, %4
  %17 = phi i1 [ false, %4 ], [ %15, %7 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %1, align 4
  br label %4

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %1, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** @cmdbuf, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 32
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi i1 [ false, %22 ], [ %33, %25 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %1, align 4
  br label %22

39:                                               ; preds = %34
  %40 = load i8*, i8** @cmdbuf, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** @cmdbuf, align 8
  %45 = load i32, i32* @cmdbuf_pos, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i32, i32* @cmdbuf_len, align 4
  %49 = load i32, i32* @cmdbuf_pos, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @os_memmove(i8* %43, i8* %47, i32 %50)
  %52 = load i32, i32* @cmdbuf_pos, align 4
  %53 = load i32, i32* %1, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @cmdbuf_len, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* @cmdbuf_len, align 4
  %57 = load i32, i32* %1, align 4
  store i32 %57, i32* @cmdbuf_pos, align 4
  %58 = call i32 (...) @edit_redraw()
  ret void
}

declare dso_local i32 @edit_clear_line(...) #1

declare dso_local i32 @os_memmove(i8*, i8*, i32) #1

declare dso_local i32 @edit_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
