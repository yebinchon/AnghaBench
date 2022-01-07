; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ActionFlag = common dso_local global i32 0, align 4
@TCSHOP_DELETE = common dso_local global i32 0, align 4
@TCSHOP_NOP = common dso_local global i32 0, align 4
@ActionPos = common dso_local global i8* null, align 8
@UndoSize = common dso_local global i64 0, align 8
@UndoBuf = common dso_local global i32* null, align 8
@InputBuf = common dso_local global i8* null, align 8
@LastChar = common dso_local global i32* null, align 8
@TCSHOP_INSERT = common dso_local global i32 0, align 4
@UndoAction = common dso_local global i32 0, align 4
@UndoPtr = common dso_local global i8* null, align 8
@Cursor = common dso_local global i8* null, align 8
@CC_REFRESH = common dso_local global i32 0, align 4
@CC_ARGHACK = common dso_local global i32 0, align 4
@CC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @v_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @ActionFlag, align 4
  %7 = load i32, i32* @TCSHOP_DELETE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load i32, i32* @TCSHOP_NOP, align 4
  store i32 %10, i32* @ActionFlag, align 4
  store i8* null, i8** @ActionPos, align 8
  store i64 0, i64* @UndoSize, align 8
  %11 = load i32*, i32** @UndoBuf, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i8*, i8** @InputBuf, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %4, align 8
  br label %14

14:                                               ; preds = %25, %9
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** @LastChar, align 8
  %17 = icmp ult i32* %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i64, i64* @UndoSize, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @UndoSize, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* @TCSHOP_INSERT, align 4
  store i32 %29, i32* @UndoAction, align 4
  %30 = load i8*, i8** @InputBuf, align 8
  store i8* %30, i8** @UndoPtr, align 8
  %31 = load i8*, i8** @InputBuf, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @LastChar, align 8
  %33 = load i8*, i8** @InputBuf, align 8
  store i8* %33, i8** @Cursor, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @TCSHOP_INSERT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @c_alternativ_key_map(i32 0)
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, i32* @CC_REFRESH, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load i8*, i8** @Cursor, align 8
  store i8* %43, i8** @ActionPos, align 8
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* @ActionFlag, align 4
  %45 = load i32, i32* @CC_ARGHACK, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @c_alternativ_key_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
