; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_fiq.c_fiq_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_fiq.c_fiq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiqhandler = type { i32, i32, i32* }

@PSR_F = common dso_local global i32 0, align 4
@fiqhandler_stack = common dso_local global i32 0, align 4
@fh_list = common dso_local global i32 0, align 4
@fiq_nullhandler_code = common dso_local global i32 0, align 4
@fiq_nullhandler_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiq_release(%struct.fiqhandler* %0) #0 {
  %2 = alloca %struct.fiqhandler*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiqhandler*, align 8
  store %struct.fiqhandler* %0, %struct.fiqhandler** %2, align 8
  %5 = load i32, i32* @PSR_F, align 4
  %6 = call i32 @disable_interrupts(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fiqhandler*, %struct.fiqhandler** %2, align 8
  %8 = call %struct.fiqhandler* @TAILQ_FIRST(i32* @fiqhandler_stack)
  %9 = icmp eq %struct.fiqhandler* %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.fiqhandler*, %struct.fiqhandler** %2, align 8
  %12 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.fiqhandler*, %struct.fiqhandler** %2, align 8
  %17 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @fiq_getregs(i32* %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.fiqhandler*, %struct.fiqhandler** %2, align 8
  %22 = load i32, i32* @fh_list, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* @fiqhandler_stack, %struct.fiqhandler* %21, i32 %22)
  %24 = call %struct.fiqhandler* @TAILQ_FIRST(i32* @fiqhandler_stack)
  store %struct.fiqhandler* %24, %struct.fiqhandler** %4, align 8
  %25 = icmp ne %struct.fiqhandler* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %28 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %33 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @fiq_setregs(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %38 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %41 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @fiq_installhandler(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %20
  br label %49

45:                                               ; preds = %1
  %46 = load %struct.fiqhandler*, %struct.fiqhandler** %2, align 8
  %47 = load i32, i32* @fh_list, align 4
  %48 = call i32 @TAILQ_REMOVE(i32* @fiqhandler_stack, %struct.fiqhandler* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %44
  %50 = call %struct.fiqhandler* @TAILQ_FIRST(i32* @fiqhandler_stack)
  %51 = icmp eq %struct.fiqhandler* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @fiq_nullhandler_code, align 4
  %54 = load i32, i32* @fiq_nullhandler_size, align 4
  %55 = call i32 @fiq_installhandler(i32 %53, i32 %54)
  %56 = load i32, i32* @PSR_F, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @restore_interrupts(i32 %60)
  ret void
}

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local %struct.fiqhandler* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @fiq_getregs(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.fiqhandler*, i32) #1

declare dso_local i32 @fiq_setregs(i32*) #1

declare dso_local i32 @fiq_installhandler(i32, i32) #1

declare dso_local i32 @restore_interrupts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
