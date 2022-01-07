; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_controlediting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_controlediting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@editing = common dso_local global i64 0, align 8
@el = common dso_local global i32* null, align 8
@hist = common dso_local global i32* null, align 8
@stdin = common dso_local global i32 0, align 4
@ttyout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_PROMPT = common dso_local global i32 0, align 4
@prompt = common dso_local global i32 0, align 4
@EL_RPROMPT = common dso_local global i32 0, align 4
@rprompt = common dso_local global i32 0, align 4
@EL_ADDFN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ftp-complete\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Context sensitive argument completion\00", align 1
@complete = common dso_local global i32 0, align 4
@EL_BIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"^I\00", align 1
@EL_EDITMODE = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @controlediting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @editing, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %58

5:                                                ; preds = %0
  %6 = load i32*, i32** @el, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %5
  %9 = load i32*, i32** @hist, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  %12 = call i32 (...) @getprogname()
  %13 = load i32, i32* @stdin, align 4
  %14 = load i32, i32* @ttyout, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32* @el_init(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** @el, align 8
  %17 = call i32* (...) @history_init()
  store i32* %17, i32** @hist, align 8
  %18 = load i32*, i32** @hist, align 8
  %19 = load i32, i32* @H_SETSIZE, align 4
  %20 = call i32 @history(i32* %18, i32* %1, i32 %19, i32 100)
  %21 = load i32*, i32** @el, align 8
  %22 = load i32, i32* @EL_HIST, align 4
  %23 = load i32*, i32** @hist, align 8
  %24 = call i32 (i32*, i32, ...) @el_set(i32* %21, i32 %22, i32 (i32*, i32*, i32, i32)* @history, i32* %23)
  %25 = load i32*, i32** @el, align 8
  %26 = load i32, i32* @EL_EDITOR, align 4
  %27 = call i32 (i32*, i32, ...) @el_set(i32* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** @el, align 8
  %29 = load i32, i32* @EL_PROMPT, align 4
  %30 = load i32, i32* @prompt, align 4
  %31 = call i32 (i32*, i32, ...) @el_set(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** @el, align 8
  %33 = load i32, i32* @EL_RPROMPT, align 4
  %34 = load i32, i32* @rprompt, align 4
  %35 = call i32 (i32*, i32, ...) @el_set(i32* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** @el, align 8
  %37 = load i32, i32* @EL_ADDFN, align 4
  %38 = load i32, i32* @complete, align 4
  %39 = call i32 (i32*, i32, ...) @el_set(i32* %36, i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** @el, align 8
  %41 = load i32, i32* @EL_BIND, align 4
  %42 = call i32 (i32*, i32, ...) @el_set(i32* %40, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %43 = load i32*, i32** @el, align 8
  %44 = call i32 @el_source(i32* %43, i32* null)
  %45 = load i32*, i32** @el, align 8
  %46 = load i32, i32* @EL_EDITMODE, align 4
  %47 = call i32 @el_get(i32* %45, i32 %46, i32* %2)
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %11
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64 0, i64* @editing, align 8
  br label %57

53:                                               ; preds = %49, %11
  %54 = load i32*, i32** @el, align 8
  %55 = load i32, i32* @EL_SIGNAL, align 4
  %56 = call i32 (i32*, i32, ...) @el_set(i32* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %53, %52
  br label %58

58:                                               ; preds = %57, %8, %5, %0
  %59 = load i64, i64* @editing, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** @hist, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** @hist, align 8
  %66 = call i32 @history_end(i32* %65)
  store i32* null, i32** @hist, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** @el, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** @el, align 8
  %72 = call i32 @el_end(i32* %71)
  store i32* null, i32** @el, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %58
  ret void
}

declare dso_local i32* @el_init(i32, i32, i32, i32) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, i32) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i32 @el_get(i32*, i32, i32*) #1

declare dso_local i32 @history_end(i32*) #1

declare dso_local i32 @el_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
