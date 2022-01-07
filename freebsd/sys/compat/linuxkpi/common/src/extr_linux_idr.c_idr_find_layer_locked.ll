; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_find_layer_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_find_layer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr_layer = type { %struct.idr_layer** }
%struct.idr = type { i32, %struct.idr_layer* }

@MAX_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idr_layer* (%struct.idr*, i32)* @idr_find_layer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idr_layer* @idr_find_layer_locked(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca %struct.idr_layer*, align 8
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr_layer*, align 8
  %7 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MAX_ID_MASK, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.idr*, %struct.idr** %4, align 8
  %12 = getelementptr inbounds %struct.idr, %struct.idr* %11, i32 0, i32 1
  %13 = load %struct.idr_layer*, %struct.idr_layer** %12, align 8
  store %struct.idr_layer* %13, %struct.idr_layer** %6, align 8
  %14 = load %struct.idr*, %struct.idr** %4, align 8
  %15 = getelementptr inbounds %struct.idr, %struct.idr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %19 = icmp eq %struct.idr_layer* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.idr*, %struct.idr** %4, align 8
  %23 = call i32 @idr_max(%struct.idr* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  store %struct.idr_layer* null, %struct.idr_layer** %3, align 8
  br label %48

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %32 = icmp ne %struct.idr_layer* %31, null
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %46

35:                                               ; preds = %33
  %36 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %37 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %36, i32 0, i32 0
  %38 = load %struct.idr_layer**, %struct.idr_layer*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @idr_pos(i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %38, i64 %41
  %43 = load %struct.idr_layer*, %struct.idr_layer** %42, align 8
  store %struct.idr_layer* %43, %struct.idr_layer** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %27

46:                                               ; preds = %33
  %47 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  store %struct.idr_layer* %47, %struct.idr_layer** %3, align 8
  br label %48

48:                                               ; preds = %46, %25
  %49 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  ret %struct.idr_layer* %49
}

declare dso_local i32 @idr_max(%struct.idr*) #1

declare dso_local i64 @idr_pos(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
