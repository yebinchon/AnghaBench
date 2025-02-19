; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doif.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@noexec = common dso_local global i64 0, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_EMPTYIF = common dso_local global i32 0, align 4
@STRthen = common dso_local global i32 0, align 4
@ERR_IMPRTHEN = common dso_local global i32 0, align 4
@TC_IF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doif(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load i32**, i32*** %3, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i32 1
  store i32** %8, i32*** %3, align 8
  %9 = load i64, i64* @noexec, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = call i32 @expr(i32*** %3)
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 1, %11 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load i32**, i32*** %3, align 8
  store i32** %16, i32*** %6, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @ERR_NAME, align 4
  %22 = load i32, i32* @ERR_EMPTYIF, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @stderror(i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @STRthen, align 4
  %29 = call i64 @eq(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i32 1
  store i32** %33, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @ERR_NAME, align 4
  %38 = load i32, i32* @ERR_IMPRTHEN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @stderror(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @STRthen, align 4
  %43 = call i32 @short2str(i32 %42)
  %44 = call i32 @setname(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @TC_IF, align 4
  %49 = call i32 @search(i32 %48, i32 0, i32* null)
  br label %50

50:                                               ; preds = %47, %41
  br label %69

51:                                               ; preds = %25
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load %struct.command*, %struct.command** %4, align 8
  %56 = getelementptr inbounds %struct.command, %struct.command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = load %struct.command*, %struct.command** %4, align 8
  %60 = getelementptr inbounds %struct.command, %struct.command* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32*, i32** %58, i64 %63
  %65 = call i32 @lshift(i32 %57, i32** %64)
  %66 = load %struct.command*, %struct.command** %4, align 8
  %67 = call i32 @reexecute(%struct.command* %66)
  %68 = call i32 (...) @donefds()
  br label %69

69:                                               ; preds = %50, %54, %51
  ret void
}

declare dso_local i32 @expr(i32***) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @eq(i32*, i32) #1

declare dso_local i32 @setname(i32) #1

declare dso_local i32 @short2str(i32) #1

declare dso_local i32 @search(i32, i32, i32*) #1

declare dso_local i32 @lshift(i32, i32**) #1

declare dso_local i32 @reexecute(%struct.command*) #1

declare dso_local i32 @donefds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
