; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_ext2reqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_ext2reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i32, i32, i32 }

@MAXPHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.activemap*, i32)* @ext2reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2reqs(%struct.activemap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.activemap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.activemap* %0, %struct.activemap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.activemap*, %struct.activemap** %4, align 8
  %9 = getelementptr inbounds %struct.activemap, %struct.activemap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.activemap*, %struct.activemap** %4, align 8
  %15 = getelementptr inbounds %struct.activemap, %struct.activemap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @MAXPHYS, align 4
  %19 = sdiv i32 %17, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.activemap*, %struct.activemap** %4, align 8
  %24 = getelementptr inbounds %struct.activemap, %struct.activemap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %22, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @PJDLOG_ASSERT(i32 %28)
  %30 = load %struct.activemap*, %struct.activemap** %4, align 8
  %31 = getelementptr inbounds %struct.activemap, %struct.activemap* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.activemap*, %struct.activemap** %4, align 8
  %34 = getelementptr inbounds %struct.activemap, %struct.activemap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load %struct.activemap*, %struct.activemap** %4, align 8
  %41 = getelementptr inbounds %struct.activemap, %struct.activemap* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @MAXPHYS, align 4
  %47 = sdiv i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
