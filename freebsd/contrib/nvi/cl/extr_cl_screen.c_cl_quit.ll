; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_quit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CL_SCR_EX_INIT = common dso_local global i32 0, align 4
@CL_SCR_VI_INIT = common dso_local global i32 0, align 4
@CL_STDIN_TTY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_quit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_5__* @GCLP(i32* %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %10 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @F_ISSET(%struct.TYPE_5__* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @cl_term_end(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i32, i32* @CL_STDIN_TTY, align 4
  %23 = call i64 @F_ISSET(%struct.TYPE_5__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %28 = call i64 @F_ISSET(%struct.TYPE_5__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @cl_vi_end(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %30, %25, %20
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i32, i32* @CL_STDIN_TTY, align 4
  %38 = call i64 @F_ISSET(%struct.TYPE_5__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %43 = call i64 @F_ISSET(%struct.TYPE_5__* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @cl_ex_end(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45, %40, %35
  %51 = load i32, i32* @STDIN_FILENO, align 4
  %52 = load i32, i32* @TCSADRAIN, align 4
  %53 = load i32, i32* @TCSASOFT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @tcsetattr(i32 %51, i32 %54, i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %60 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @F_CLR(%struct.TYPE_5__* %58, i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %50, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_5__* @GCLP(i32*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @cl_term_end(i32*) #1

declare dso_local i64 @cl_vi_end(i32*) #1

declare dso_local i64 @cl_ex_end(i32*) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
