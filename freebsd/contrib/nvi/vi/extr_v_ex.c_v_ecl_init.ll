; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@F_RCV_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @v_ecl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_ecl_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32* @file_add(%struct.TYPE_10__* %9, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = call i64 @screen_init(%struct.TYPE_11__* %14, %struct.TYPE_10__* %15, %struct.TYPE_12__** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @file_init(%struct.TYPE_12__* %24, i32* %25, i32* null, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = call i32 @screen_end(%struct.TYPE_12__* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %34, align 8
  store i32 1, i32* %2, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @F_RCV_ON, align 4
  %42 = call i32 @F_CLR(i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %28, %20, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @file_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @screen_init(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__**) #1

declare dso_local i64 @file_init(%struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @screen_end(%struct.TYPE_12__*) #1

declare dso_local i32 @F_CLR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
