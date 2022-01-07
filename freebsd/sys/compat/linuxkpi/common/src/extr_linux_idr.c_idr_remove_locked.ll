; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer* }
%struct.idr_layer = type { i32, %struct.idr_layer** }

@MAX_ID_MASK = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"idr_remove: Item %d not allocated (%p, %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.idr*, i32)* @idr_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @idr_remove_locked(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr_layer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MAX_ID_MASK, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.idr*, %struct.idr** %4, align 8
  %14 = getelementptr inbounds %struct.idr, %struct.idr* %13, i32 0, i32 1
  %15 = load %struct.idr_layer*, %struct.idr_layer** %14, align 8
  store %struct.idr_layer* %15, %struct.idr_layer** %6, align 8
  %16 = load %struct.idr*, %struct.idr** %4, align 8
  %17 = getelementptr inbounds %struct.idr, %struct.idr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %21 = icmp eq %struct.idr_layer* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.idr*, %struct.idr** %4, align 8
  %25 = call i32 @idr_max(%struct.idr* %24)
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %2
  store i8* null, i8** %3, align 8
  br label %97

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %34 = icmp ne %struct.idr_layer* %33, null
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @idr_pos(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %44 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %48 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %47, i32 0, i32 1
  %49 = load %struct.idr_layer**, %struct.idr_layer*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %49, i64 %51
  %53 = load %struct.idr_layer*, %struct.idr_layer** %52, align 8
  store %struct.idr_layer* %53, %struct.idr_layer** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %35
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IDR_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %61 = icmp eq %struct.idr_layer* %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %64 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.idr*, %struct.idr** %4, align 8
  %73 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %74 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %71, %struct.idr* %72, %struct.idr_layer* %73)
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %77 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %76, i32 0, i32 1
  %78 = load %struct.idr_layer**, %struct.idr_layer*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %78, i64 %80
  %82 = load %struct.idr_layer*, %struct.idr_layer** %81, align 8
  %83 = bitcast %struct.idr_layer* %82 to i8*
  store i8* %83, i8** %7, align 8
  %84 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %85 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %84, i32 0, i32 1
  %86 = load %struct.idr_layer**, %struct.idr_layer*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %86, i64 %88
  store %struct.idr_layer* null, %struct.idr_layer** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %93 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i8*, i8** %7, align 8
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %75, %27
  %98 = load i8*, i8** %3, align 8
  ret i8* %98
}

declare dso_local i32 @idr_max(%struct.idr*) #1

declare dso_local i32 @idr_pos(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, %struct.idr*, %struct.idr_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
