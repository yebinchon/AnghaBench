; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_keepdirty_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_keepdirty_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i64, i32 }
%struct.keepdirty = type { i32 }

@kd_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.activemap*)* @keepdirty_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keepdirty_free(%struct.activemap* %0) #0 {
  %2 = alloca %struct.activemap*, align 8
  %3 = alloca %struct.keepdirty*, align 8
  store %struct.activemap* %0, %struct.activemap** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.activemap*, %struct.activemap** %2, align 8
  %6 = getelementptr inbounds %struct.activemap, %struct.activemap* %5, i32 0, i32 1
  %7 = call %struct.keepdirty* @TAILQ_FIRST(i32* %6)
  store %struct.keepdirty* %7, %struct.keepdirty** %3, align 8
  %8 = icmp ne %struct.keepdirty* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.activemap*, %struct.activemap** %2, align 8
  %11 = getelementptr inbounds %struct.activemap, %struct.activemap* %10, i32 0, i32 1
  %12 = load %struct.keepdirty*, %struct.keepdirty** %3, align 8
  %13 = load i32, i32* @kd_next, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.keepdirty* %12, i32 %13)
  %15 = load %struct.activemap*, %struct.activemap** %2, align 8
  %16 = getelementptr inbounds %struct.activemap, %struct.activemap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.keepdirty*, %struct.keepdirty** %3, align 8
  %20 = call i32 @free(%struct.keepdirty* %19)
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.activemap*, %struct.activemap** %2, align 8
  %23 = getelementptr inbounds %struct.activemap, %struct.activemap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  ret void
}

declare dso_local %struct.keepdirty* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.keepdirty*, i32) #1

declare dso_local i32 @free(%struct.keepdirty*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
