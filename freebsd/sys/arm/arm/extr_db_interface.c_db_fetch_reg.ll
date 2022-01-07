; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_fetch_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_fetch_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@kdb_frame = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"db_fetch_reg: botch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @db_fetch_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_fetch_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %69 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %13
    i32 3, label %17
    i32 4, label %21
    i32 5, label %25
    i32 6, label %29
    i32 7, label %33
    i32 8, label %37
    i32 9, label %41
    i32 10, label %45
    i32 11, label %49
    i32 12, label %53
    i32 13, label %57
    i32 14, label %61
    i32 15, label %65
  ]

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  br label %71

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %71

41:                                               ; preds = %1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %2, align 4
  br label %71

45:                                               ; preds = %1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %71

49:                                               ; preds = %1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %2, align 4
  br label %71

53:                                               ; preds = %1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %71

57:                                               ; preds = %1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  br label %71

61:                                               ; preds = %1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %1
  %70 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %5, %9, %13, %17, %21, %25, %29, %33, %37, %41, %45, %49, %53, %57, %61, %65, %69
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
