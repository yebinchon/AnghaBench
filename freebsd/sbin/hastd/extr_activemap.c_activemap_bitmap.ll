; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i64, i64, i64, i32, i32 }

@ACTIVEMAP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @activemap_bitmap(%struct.activemap* %0, i64* %1) #0 {
  %3 = alloca %struct.activemap*, align 8
  %4 = alloca i64*, align 8
  store %struct.activemap* %0, %struct.activemap** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.activemap*, %struct.activemap** %3, align 8
  %6 = getelementptr inbounds %struct.activemap, %struct.activemap* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACTIVEMAP_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @PJDLOG_ASSERT(i32 %10)
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.activemap*, %struct.activemap** %3, align 8
  %16 = getelementptr inbounds %struct.activemap, %struct.activemap* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %4, align 8
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.activemap*, %struct.activemap** %3, align 8
  %21 = getelementptr inbounds %struct.activemap, %struct.activemap* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.activemap*, %struct.activemap** %3, align 8
  %24 = getelementptr inbounds %struct.activemap, %struct.activemap* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.activemap*, %struct.activemap** %3, align 8
  %27 = getelementptr inbounds %struct.activemap, %struct.activemap* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i64 %22, i32 %25, i32 %28)
  %30 = load %struct.activemap*, %struct.activemap** %3, align 8
  %31 = call i32 @keepdirty_fill(%struct.activemap* %30)
  %32 = load %struct.activemap*, %struct.activemap** %3, align 8
  %33 = getelementptr inbounds %struct.activemap, %struct.activemap* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  ret i8* %35
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @keepdirty_fill(%struct.activemap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
