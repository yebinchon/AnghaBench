; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_marshall.c_ibv_copy_ah_attr_from_kern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_marshall.c_ibv_copy_ah_attr_from_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_ah_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_kern_ah_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibv_copy_ah_attr_from_kern(%struct.ibv_ah_attr* %0, %struct.ibv_kern_ah_attr* %1) #0 {
  %3 = alloca %struct.ibv_ah_attr*, align 8
  %4 = alloca %struct.ibv_kern_ah_attr*, align 8
  store %struct.ibv_ah_attr* %0, %struct.ibv_ah_attr** %3, align 8
  store %struct.ibv_kern_ah_attr* %1, %struct.ibv_kern_ah_attr** %4, align 8
  %5 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %6 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %11 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32 %9, i32 %13, i32 4)
  %15 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %20 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %23 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %27 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %34 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %41 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %44 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %47 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %52 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %54 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %57 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %59 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %62 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %64 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %67 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ibv_kern_ah_attr*, %struct.ibv_kern_ah_attr** %4, align 8
  %69 = getelementptr inbounds %struct.ibv_kern_ah_attr, %struct.ibv_kern_ah_attr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %3, align 8
  %72 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
