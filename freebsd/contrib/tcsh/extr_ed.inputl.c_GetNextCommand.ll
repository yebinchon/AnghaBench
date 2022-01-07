; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_GetNextCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_GetNextCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@F_XKEY = common dso_local global i64 0, align 8
@MetaNext = common dso_local global i64 0, align 8
@META = common dso_local global i32 0, align 4
@AltKeyMap = common dso_local global i32 0, align 4
@CcKeyMap = common dso_local global i32 0, align 4
@CurrentKeyMap = common dso_local global i32 0, align 4
@OKCMD = common dso_local global i32 0, align 4
@F_INSERT = common dso_local global i64 0, align 8
@MB_LEN_MAX = common dso_local global i32 0, align 4
@STRnokanji = common dso_local global i32 0, align 4
@_enable_mbdisp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*)* @GetNextCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNextCommand(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @F_XKEY, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ true, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %67

19:                                               ; preds = %17
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @GetNextChar(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %19
  %26 = load i64, i64* @MetaNext, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  store i64 0, i64* @MetaNext, align 8
  %29 = load i32, i32* @META, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @GetCmdChar(i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @F_XKEY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = call i32 @GetXkey(%struct.TYPE_8__* %9, %struct.TYPE_7__* %8)
  switch i32 %44, label %58 [
    i32 130, label %45
    i32 128, label %48
    i32 129, label %53
  ]

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %60

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PushMacro(i32 %51)
  br label %60

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @RunCommand(i32 %56)
  br label %60

58:                                               ; preds = %40
  %59 = call i32 (...) @abort() #3
  unreachable

60:                                               ; preds = %53, %48, %45
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* @AltKeyMap, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @CcKeyMap, align 4
  store i32 %65, i32* @CurrentKeyMap, align 4
  br label %66

66:                                               ; preds = %64, %61
  br label %10

67:                                               ; preds = %17
  %68 = load i64, i64* %6, align 8
  %69 = load i64*, i64** %4, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* @OKCMD, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @GetNextChar(i32*) #1

declare dso_local i64 @GetCmdChar(i32) #1

declare dso_local i32 @GetXkey(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @PushMacro(i32) #1

declare dso_local i32 @RunCommand(i32) #1

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
