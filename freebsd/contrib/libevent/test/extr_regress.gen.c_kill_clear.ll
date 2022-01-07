; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kill = type { i32, i32, i32, i64, i64, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_clear(%struct.kill* %0) #0 {
  %2 = alloca %struct.kill*, align 8
  store %struct.kill* %0, %struct.kill** %2, align 8
  %3 = load %struct.kill*, %struct.kill** %2, align 8
  %4 = getelementptr inbounds %struct.kill, %struct.kill* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.kill*, %struct.kill** %2, align 8
  %9 = getelementptr inbounds %struct.kill, %struct.kill* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @free(i32* %10)
  %12 = load %struct.kill*, %struct.kill** %2, align 8
  %13 = getelementptr inbounds %struct.kill, %struct.kill* %12, i32 0, i32 7
  store i32* null, i32** %13, align 8
  %14 = load %struct.kill*, %struct.kill** %2, align 8
  %15 = getelementptr inbounds %struct.kill, %struct.kill* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.kill*, %struct.kill** %2, align 8
  %18 = getelementptr inbounds %struct.kill, %struct.kill* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.kill*, %struct.kill** %2, align 8
  %23 = getelementptr inbounds %struct.kill, %struct.kill* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.kill*, %struct.kill** %2, align 8
  %27 = getelementptr inbounds %struct.kill, %struct.kill* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.kill*, %struct.kill** %2, align 8
  %29 = getelementptr inbounds %struct.kill, %struct.kill* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.kill*, %struct.kill** %2, align 8
  %32 = getelementptr inbounds %struct.kill, %struct.kill* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.kill*, %struct.kill** %2, align 8
  %37 = getelementptr inbounds %struct.kill, %struct.kill* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @free(i32* %38)
  %40 = load %struct.kill*, %struct.kill** %2, align 8
  %41 = getelementptr inbounds %struct.kill, %struct.kill* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.kill*, %struct.kill** %2, align 8
  %43 = getelementptr inbounds %struct.kill, %struct.kill* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load %struct.kill*, %struct.kill** %2, align 8
  %45 = getelementptr inbounds %struct.kill, %struct.kill* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.kill*, %struct.kill** %2, align 8
  %47 = getelementptr inbounds %struct.kill, %struct.kill* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
