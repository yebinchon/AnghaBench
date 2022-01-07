; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_rangelock.c_rangelock_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_rangelock.c_rangelock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangelocks = type { i64, i32 }
%struct.rlock = type { i64, i32 }

@RANGELOCKS_MAGIC = common dso_local global i64 0, align 8
@rl_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rangelock_free(%struct.rangelocks* %0) #0 {
  %2 = alloca %struct.rangelocks*, align 8
  %3 = alloca %struct.rlock*, align 8
  store %struct.rangelocks* %0, %struct.rangelocks** %2, align 8
  %4 = load %struct.rangelocks*, %struct.rangelocks** %2, align 8
  %5 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RANGELOCKS_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.rangelocks*, %struct.rangelocks** %2, align 8
  %12 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.rangelocks*, %struct.rangelocks** %2, align 8
  %15 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %14, i32 0, i32 1
  %16 = call %struct.rlock* @TAILQ_FIRST(i32* %15)
  store %struct.rlock* %16, %struct.rlock** %3, align 8
  %17 = icmp ne %struct.rlock* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.rangelocks*, %struct.rangelocks** %2, align 8
  %20 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %19, i32 0, i32 1
  %21 = load %struct.rlock*, %struct.rlock** %3, align 8
  %22 = load i32, i32* @rl_next, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %20, %struct.rlock* %21, i32 %22)
  %24 = load %struct.rlock*, %struct.rlock** %3, align 8
  %25 = call i32 @free(%struct.rlock* %24)
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.rangelocks*, %struct.rangelocks** %2, align 8
  %28 = bitcast %struct.rangelocks* %27 to %struct.rlock*
  %29 = call i32 @free(%struct.rlock* %28)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.rlock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rlock*, i32) #1

declare dso_local i32 @free(%struct.rlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
