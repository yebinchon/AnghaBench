; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_fiq.c_fiq_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_fiq.c_fiq_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiqhandler = type { i32, i32, i32, i32* }

@EFBIG = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4
@fiqhandler_stack = common dso_local global i32 0, align 4
@FH_CANPUSH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@fh_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiq_claim(%struct.fiqhandler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fiqhandler*, align 8
  %4 = alloca %struct.fiqhandler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fiqhandler* %0, %struct.fiqhandler** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %8 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 256
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EFBIG, align 4
  store i32 %12, i32* %2, align 4
  br label %67

13:                                               ; preds = %1
  %14 = load i32, i32* @PSR_F, align 4
  %15 = call i32 @disable_interrupts(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = call %struct.fiqhandler* @TAILQ_FIRST(i32* @fiqhandler_stack)
  store %struct.fiqhandler* %16, %struct.fiqhandler** %4, align 8
  %17 = icmp ne %struct.fiqhandler* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %20 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FH_CANPUSH, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %18
  %28 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %29 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.fiqhandler*, %struct.fiqhandler** %4, align 8
  %34 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @fiq_getregs(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %40 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %45 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @fiq_setregs(i32* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %50 = load i32, i32* @fh_list, align 4
  %51 = call i32 @TAILQ_INSERT_HEAD(i32* @fiqhandler_stack, %struct.fiqhandler* %49, i32 %50)
  %52 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %53 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fiqhandler*, %struct.fiqhandler** %3, align 8
  %56 = getelementptr inbounds %struct.fiqhandler, %struct.fiqhandler* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fiq_installhandler(i32 %54, i32 %57)
  %59 = load i32, i32* @PSR_F, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %48, %25
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @restore_interrupts(i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local %struct.fiqhandler* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @fiq_getregs(i32*) #1

declare dso_local i32 @fiq_setregs(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.fiqhandler*, i32) #1

declare dso_local i32 @fiq_installhandler(i32, i32) #1

declare dso_local i32 @restore_interrupts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
