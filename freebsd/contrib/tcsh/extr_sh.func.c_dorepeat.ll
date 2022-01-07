; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dorepeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dorepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@STRrepeat = common dso_local global i32 0, align 4
@noexec = common dso_local global i64 0, align 8
@setintr = common dso_local global i64 0, align 8
@pintr_disabled = common dso_local global i32 0, align 4
@disabled_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dorepeat(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32**, i32*** %3, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @getn(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32**, i32*** %3, align 8
  %14 = call i32 @lshift(i32** %13, i32 2)
  br label %15

15:                                               ; preds = %6
  %16 = load i32**, i32*** %3, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32**, i32*** %3, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @STRrepeat, align 4
  %25 = call i64 @Strcmp(i32* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i1 [ false, %15 ], [ %26, %20 ]
  br i1 %28, label %6, label %29

29:                                               ; preds = %27
  %30 = load i64, i64* @noexec, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* @setintr, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @pintr_disabled, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @pintr_disabled, align 4
  %39 = load i32, i32* @disabled_cleanup, align 4
  %40 = call i32 @cleanup_push(i32* @pintr_disabled, i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i64, i64* @setintr, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* @pintr_disabled, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = call i32 @cleanup_until(i32* @pintr_disabled)
  %53 = load i32, i32* @pintr_disabled, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @pintr_disabled, align 4
  %55 = load i32, i32* @disabled_cleanup, align 4
  %56 = call i32 @cleanup_push(i32* @pintr_disabled, i32 %55)
  br label %57

57:                                               ; preds = %51, %48, %45
  %58 = load %struct.command*, %struct.command** %4, align 8
  %59 = call i32 @reexecute(%struct.command* %58)
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load i64, i64* @setintr, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @pintr_disabled, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @cleanup_until(i32* @pintr_disabled)
  br label %70

70:                                               ; preds = %68, %65, %62
  %71 = call i32 (...) @donefds()
  ret void
}

declare dso_local i32 @getn(i32*) #1

declare dso_local i32 @lshift(i32**, i32) #1

declare dso_local i64 @Strcmp(i32*, i32) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32 @reexecute(%struct.command*) #1

declare dso_local i32 @donefds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
