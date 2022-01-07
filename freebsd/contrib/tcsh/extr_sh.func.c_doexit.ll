; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@chkstop = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@intact = common dso_local global i64 0, align 8
@evalvec = common dso_local global i64 0, align 8
@STRstatus = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_EXPRESSION = common dso_local global i32 0, align 4
@SHIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doexit(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %5 = load %struct.command*, %struct.command** %4, align 8
  %6 = call i32 @USE(%struct.command* %5)
  %7 = load i64, i64* @chkstop, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i64, i64* @intty, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @intact, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %9
  %16 = load i64, i64* @evalvec, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @panystop(i32 0)
  br label %20

20:                                               ; preds = %18, %15, %12, %2
  %21 = load i32**, i32*** %3, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %22, i32*** %3, align 8
  %23 = load i32**, i32*** %3, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32, i32* @STRstatus, align 4
  %28 = call i32 @expr(i32*** %3)
  %29 = call i32 @putn(i32 %28)
  %30 = load i32, i32* @VAR_READWRITE, align 4
  %31 = call i32 @setv(i32 %27, i32 %29, i32 %30)
  %32 = load i32**, i32*** %3, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @ERR_NAME, align 4
  %37 = load i32, i32* @ERR_EXPRESSION, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @stderror(i32 %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40, %20
  %42 = call i32 (...) @btoeof()
  %43 = load i32, i32* @SHIN, align 4
  %44 = call i32 @xclose(i32 %43)
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @panystop(i32) #1

declare dso_local i32 @setv(i32, i32, i32) #1

declare dso_local i32 @putn(i32) #1

declare dso_local i32 @expr(i32***) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @btoeof(...) #1

declare dso_local i32 @xclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
