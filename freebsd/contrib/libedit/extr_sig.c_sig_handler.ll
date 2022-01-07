; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_sig.c_sig_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_sig.c_sig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32 }

@errno = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@sel = common dso_local global %struct.TYPE_11__* null, align 8
@CC_REFRESH = common dso_local global i32 0, align 4
@sighdl = common dso_local global i32* null, align 8
@SIG_ERR = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sig_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @errno, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @sigemptyset(i32* %5)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @sigaddset(i32* %5, i32 %9)
  %11 = load i32, i32* @SIG_BLOCK, align 4
  %12 = call i32 @sigprocmask(i32 %11, i32* %5, i32* %6)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load i32, i32* %2, align 4
  switch i32 %18, label %35 [
    i32 129, label %19
    i32 128, label %32
  ]

19:                                               ; preds = %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %21 = call i32 @tty_rawmode(%struct.TYPE_11__* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %23 = call i32 @ed_redisplay(%struct.TYPE_11__* %22, i32 0)
  %24 = load i32, i32* @CC_REFRESH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %28 = call i32 @re_refresh(%struct.TYPE_11__* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %31 = call i32 @terminal__flush(%struct.TYPE_11__* %30)
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %34 = call i32 @el_resize(%struct.TYPE_11__* %33)
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %37 = call i32 @tty_cookedmode(%struct.TYPE_11__* %36)
  br label %38

38:                                               ; preds = %35, %32, %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32*, i32** @sighdl, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = load i32*, i32** @sighdl, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %67
  %69 = call i32 @sigaction(i32 %60, %struct.TYPE_12__* %68, i32* null)
  %70 = load i32, i32* @SIG_ERR, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  store i32 %70, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sel, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = call i32 @sigemptyset(i32* %97)
  %99 = load i32, i32* @SIG_SETMASK, align 4
  %100 = call i32 @sigprocmask(i32 %99, i32* %6, i32* null)
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @kill(i32 0, i32 %101)
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* @errno, align 4
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @tty_rawmode(%struct.TYPE_11__*) #1

declare dso_local i32 @ed_redisplay(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @re_refresh(%struct.TYPE_11__*) #1

declare dso_local i32 @terminal__flush(%struct.TYPE_11__*) #1

declare dso_local i32 @el_resize(%struct.TYPE_11__*) #1

declare dso_local i32 @tty_cookedmode(%struct.TYPE_11__*) #1

declare dso_local i32 @sigaction(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
