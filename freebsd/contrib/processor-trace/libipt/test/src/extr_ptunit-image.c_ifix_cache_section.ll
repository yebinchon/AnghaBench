; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_cache_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_ifix_cache_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_fixture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, %struct.pt_section** }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ifix_nsecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_fixture*, %struct.pt_section*, i32)* @ifix_cache_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifix_cache_section(%struct.image_fixture* %0, %struct.pt_section* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.image_fixture*, align 8
  %6 = alloca %struct.pt_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.image_fixture* %0, %struct.image_fixture** %5, align 8
  store %struct.pt_section* %1, %struct.pt_section** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.image_fixture*, %struct.image_fixture** %5, align 8
  %10 = icmp ne %struct.image_fixture* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.image_fixture*, %struct.image_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @ifix_nsecs, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @pte_internal, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %14
  %26 = load %struct.pt_section*, %struct.pt_section** %6, align 8
  %27 = load %struct.image_fixture*, %struct.image_fixture** %5, align 8
  %28 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.pt_section**, %struct.pt_section*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pt_section*, %struct.pt_section** %30, i64 %32
  store %struct.pt_section* %26, %struct.pt_section** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.image_fixture*, %struct.image_fixture** %5, align 8
  %36 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.image_fixture*, %struct.image_fixture** %5, align 8
  %46 = getelementptr inbounds %struct.image_fixture, %struct.image_fixture* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %25, %22, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
