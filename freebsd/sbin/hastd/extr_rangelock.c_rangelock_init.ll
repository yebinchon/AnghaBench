; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_rangelock.c_rangelock_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_rangelock.c_rangelock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangelocks = type { i32, i32 }

@RANGELOCKS_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rangelock_init(%struct.rangelocks** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rangelocks**, align 8
  %4 = alloca %struct.rangelocks*, align 8
  store %struct.rangelocks** %0, %struct.rangelocks*** %3, align 8
  %5 = load %struct.rangelocks**, %struct.rangelocks*** %3, align 8
  %6 = icmp ne %struct.rangelocks** %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @PJDLOG_ASSERT(i32 %7)
  %9 = call %struct.rangelocks* @malloc(i32 8)
  store %struct.rangelocks* %9, %struct.rangelocks** %4, align 8
  %10 = load %struct.rangelocks*, %struct.rangelocks** %4, align 8
  %11 = icmp eq %struct.rangelocks* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.rangelocks*, %struct.rangelocks** %4, align 8
  %15 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %14, i32 0, i32 1
  %16 = call i32 @TAILQ_INIT(i32* %15)
  %17 = load i32, i32* @RANGELOCKS_MAGIC, align 4
  %18 = load %struct.rangelocks*, %struct.rangelocks** %4, align 8
  %19 = getelementptr inbounds %struct.rangelocks, %struct.rangelocks* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rangelocks*, %struct.rangelocks** %4, align 8
  %21 = load %struct.rangelocks**, %struct.rangelocks*** %3, align 8
  store %struct.rangelocks* %20, %struct.rangelocks** %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.rangelocks* @malloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
