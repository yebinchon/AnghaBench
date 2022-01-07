; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_keepdirty_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_keepdirty_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i64, i64, i32 }
%struct.keepdirty = type { i32 }

@kd_next = common dso_local global i32 0, align 4
@skeepdirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.activemap*, i32)* @keepdirty_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keepdirty_add(%struct.activemap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.activemap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.keepdirty*, align 8
  store %struct.activemap* %0, %struct.activemap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.activemap*, %struct.activemap** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.keepdirty* @keepdirty_find(%struct.activemap* %7, i32 %8)
  store %struct.keepdirty* %9, %struct.keepdirty** %6, align 8
  %10 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %11 = icmp ne %struct.keepdirty* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.activemap*, %struct.activemap** %4, align 8
  %14 = getelementptr inbounds %struct.activemap, %struct.activemap* %13, i32 0, i32 2
  %15 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %16 = load i32, i32* @kd_next, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.keepdirty* %15, i32 %16)
  %18 = load %struct.activemap*, %struct.activemap** %4, align 8
  %19 = getelementptr inbounds %struct.activemap, %struct.activemap* %18, i32 0, i32 2
  %20 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %21 = load i32, i32* @kd_next, align 4
  %22 = call i32 @TAILQ_INSERT_HEAD(i32* %19, %struct.keepdirty* %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.activemap*, %struct.activemap** %4, align 8
  %25 = getelementptr inbounds %struct.activemap, %struct.activemap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.activemap*, %struct.activemap** %4, align 8
  %28 = getelementptr inbounds %struct.activemap, %struct.activemap* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = load %struct.activemap*, %struct.activemap** %4, align 8
  %33 = getelementptr inbounds %struct.activemap, %struct.activemap* %32, i32 0, i32 2
  %34 = load i32, i32* @skeepdirty, align 4
  %35 = call %struct.keepdirty* @TAILQ_LAST(i32* %33, i32 %34)
  store %struct.keepdirty* %35, %struct.keepdirty** %6, align 8
  %36 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %37 = icmp ne %struct.keepdirty* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  %40 = load %struct.activemap*, %struct.activemap** %4, align 8
  %41 = getelementptr inbounds %struct.activemap, %struct.activemap* %40, i32 0, i32 2
  %42 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %43 = load i32, i32* @kd_next, align 4
  %44 = call i32 @TAILQ_REMOVE(i32* %41, %struct.keepdirty* %42, i32 %43)
  %45 = load %struct.activemap*, %struct.activemap** %4, align 8
  %46 = getelementptr inbounds %struct.activemap, %struct.activemap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.activemap*, %struct.activemap** %4, align 8
  %50 = getelementptr inbounds %struct.activemap, %struct.activemap* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @PJDLOG_ASSERT(i32 %53)
  br label %55

55:                                               ; preds = %31, %23
  %56 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %57 = icmp eq %struct.keepdirty* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call %struct.keepdirty* @malloc(i32 4)
  store %struct.keepdirty* %59, %struct.keepdirty** %6, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %62 = icmp ne %struct.keepdirty* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %66 = getelementptr inbounds %struct.keepdirty, %struct.keepdirty* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.activemap*, %struct.activemap** %4, align 8
  %68 = getelementptr inbounds %struct.activemap, %struct.activemap* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.activemap*, %struct.activemap** %4, align 8
  %72 = getelementptr inbounds %struct.activemap, %struct.activemap* %71, i32 0, i32 2
  %73 = load %struct.keepdirty*, %struct.keepdirty** %6, align 8
  %74 = load i32, i32* @kd_next, align 4
  %75 = call i32 @TAILQ_INSERT_HEAD(i32* %72, %struct.keepdirty* %73, i32 %74)
  br label %76

76:                                               ; preds = %63, %60
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.keepdirty* @keepdirty_find(%struct.activemap*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.keepdirty*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.keepdirty*, i32) #1

declare dso_local %struct.keepdirty* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.keepdirty* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
