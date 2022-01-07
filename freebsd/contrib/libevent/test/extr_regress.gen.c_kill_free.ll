; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_kill_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kill = type { i32, %struct.kill*, i64, i64, %struct.kill*, %struct.kill* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_free(%struct.kill* %0) #0 {
  %2 = alloca %struct.kill*, align 8
  store %struct.kill* %0, %struct.kill** %2, align 8
  %3 = load %struct.kill*, %struct.kill** %2, align 8
  %4 = getelementptr inbounds %struct.kill, %struct.kill* %3, i32 0, i32 5
  %5 = load %struct.kill*, %struct.kill** %4, align 8
  %6 = icmp ne %struct.kill* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.kill*, %struct.kill** %2, align 8
  %9 = getelementptr inbounds %struct.kill, %struct.kill* %8, i32 0, i32 5
  %10 = load %struct.kill*, %struct.kill** %9, align 8
  %11 = call i32 @free(%struct.kill* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.kill*, %struct.kill** %2, align 8
  %14 = getelementptr inbounds %struct.kill, %struct.kill* %13, i32 0, i32 4
  %15 = load %struct.kill*, %struct.kill** %14, align 8
  %16 = icmp ne %struct.kill* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.kill*, %struct.kill** %2, align 8
  %19 = getelementptr inbounds %struct.kill, %struct.kill* %18, i32 0, i32 4
  %20 = load %struct.kill*, %struct.kill** %19, align 8
  %21 = call i32 @free(%struct.kill* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.kill*, %struct.kill** %2, align 8
  %24 = getelementptr inbounds %struct.kill, %struct.kill* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.kill*, %struct.kill** %2, align 8
  %29 = getelementptr inbounds %struct.kill, %struct.kill* %28, i32 0, i32 1
  %30 = load %struct.kill*, %struct.kill** %29, align 8
  %31 = call i32 @free(%struct.kill* %30)
  %32 = load %struct.kill*, %struct.kill** %2, align 8
  %33 = getelementptr inbounds %struct.kill, %struct.kill* %32, i32 0, i32 1
  store %struct.kill* null, %struct.kill** %33, align 8
  %34 = load %struct.kill*, %struct.kill** %2, align 8
  %35 = getelementptr inbounds %struct.kill, %struct.kill* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.kill*, %struct.kill** %2, align 8
  %37 = getelementptr inbounds %struct.kill, %struct.kill* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.kill*, %struct.kill** %2, align 8
  %39 = getelementptr inbounds %struct.kill, %struct.kill* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %22
  %41 = load %struct.kill*, %struct.kill** %2, align 8
  %42 = getelementptr inbounds %struct.kill, %struct.kill* %41, i32 0, i32 1
  %43 = load %struct.kill*, %struct.kill** %42, align 8
  %44 = call i32 @free(%struct.kill* %43)
  %45 = load %struct.kill*, %struct.kill** %2, align 8
  %46 = call i32 @free(%struct.kill* %45)
  ret void
}

declare dso_local i32 @free(%struct.kill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
