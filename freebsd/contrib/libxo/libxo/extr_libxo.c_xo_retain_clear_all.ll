; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_retain_clear_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_retain_clear_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@RETAIN_HASH_SIZE = common dso_local global i32 0, align 4
@xo_retain = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@xo_retain_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xo_retain_clear_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @RETAIN_HASH_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xo_retain, i32 0, i32 0), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %2, align 8
  br label %14

14:                                               ; preds = %23, %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @xo_free(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %2, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xo_retain, i32 0, i32 0), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4

33:                                               ; preds = %4
  store i64 0, i64* @xo_retain_count, align 8
  ret void
}

declare dso_local i32 @xo_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
