; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_sync_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_sync_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i64, i32, i32, i32 }

@ACTIVEMAP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activemap_sync_rewind(%struct.activemap* %0) #0 {
  %2 = alloca %struct.activemap*, align 8
  %3 = alloca i32, align 4
  store %struct.activemap* %0, %struct.activemap** %2, align 8
  %4 = load %struct.activemap*, %struct.activemap** %2, align 8
  %5 = getelementptr inbounds %struct.activemap, %struct.activemap* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ACTIVEMAP_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.activemap*, %struct.activemap** %2, align 8
  %12 = getelementptr inbounds %struct.activemap, %struct.activemap* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.activemap*, %struct.activemap** %2, align 8
  %15 = getelementptr inbounds %struct.activemap, %struct.activemap* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bit_ffs(i32 %13, i32 %16, i32* %3)
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.activemap*, %struct.activemap** %2, align 8
  %22 = getelementptr inbounds %struct.activemap, %struct.activemap* %21, i32 0, i32 1
  store i32 -2, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.activemap*, %struct.activemap** %2, align 8
  %25 = getelementptr inbounds %struct.activemap, %struct.activemap* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bit_ffs(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
