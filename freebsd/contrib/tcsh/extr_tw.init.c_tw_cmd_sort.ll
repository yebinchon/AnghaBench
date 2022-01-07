; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@pintr_disabled = common dso_local global i32 0, align 4
@tw_cmd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@fcompare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tw_cmd_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_cmd_sort() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @pintr_disabled, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @pintr_disabled, align 4
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 0), align 8
  %7 = load i32, i32* @fcompare, align 4
  %8 = call i32 @qsort(i32* %5, i64 %6, i32 8, i32 %7)
  store i64 0, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %44, %0
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %10, 1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 0), align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %20 = load i64, i64* %2, align 8
  %21 = add i64 %20, 1
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @Strcmp(i32 %18, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %1, align 8
  br label %43

29:                                               ; preds = %14
  %30 = load i64, i64* %1, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* %1, align 8
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %29
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %2, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %2, align 8
  br label %9

47:                                               ; preds = %9
  %48 = load i64, i64* %1, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %52 = load i64, i64* %2, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 1), align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* %1, align 8
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 0), align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_cmd, i32 0, i32 0), align 8
  %64 = call i32 @disabled_cleanup(i32* @pintr_disabled)
  ret void
}

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i64 @Strcmp(i32, i32) #1

declare dso_local i32 @disabled_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
