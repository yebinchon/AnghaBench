; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ActionFlag = common dso_local global i32 0, align 4
@TCSHOP_INSERT = common dso_local global i32 0, align 4
@TCSHOP_NOP = common dso_local global i32 0, align 4
@ActionPos = common dso_local global i64 0, align 8
@UndoAction = common dso_local global i32 0, align 4
@Cursor = common dso_local global i64 0, align 8
@UndoPtr = common dso_local global i64 0, align 8
@UndoSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @c_delfini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_delfini() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ActionFlag, align 4
  %3 = load i32, i32* @TCSHOP_INSERT, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @c_alternativ_key_map(i32 0)
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @TCSHOP_NOP, align 4
  store i32 %9, i32* @ActionFlag, align 4
  %10 = load i64, i64* @ActionPos, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %44

13:                                               ; preds = %8
  %14 = load i32, i32* @TCSHOP_INSERT, align 4
  store i32 %14, i32* @UndoAction, align 4
  %15 = load i64, i64* @Cursor, align 8
  %16 = load i64, i64* @ActionPos, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i64, i64* @Cursor, align 8
  %20 = load i64, i64* @ActionPos, align 8
  %21 = sub nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @c_delbefore(i32 %23)
  %25 = call i32 (...) @RefCursor()
  br label %41

26:                                               ; preds = %13
  %27 = load i64, i64* @Cursor, align 8
  %28 = load i64, i64* @ActionPos, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* @ActionPos, align 8
  %32 = load i64, i64* @Cursor, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @c_delafter(i32 %35)
  br label %40

37:                                               ; preds = %26
  store i32 1, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @c_delafter(i32 %38)
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i64, i64* @Cursor, align 8
  store i64 %42, i64* @UndoPtr, align 8
  %43 = load i32, i32* %1, align 4
  store i32 %43, i32* @UndoSize, align 4
  br label %44

44:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @c_alternativ_key_map(i32) #1

declare dso_local i32 @c_delbefore(i32) #1

declare dso_local i32 @RefCursor(...) #1

declare dso_local i32 @c_delafter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
