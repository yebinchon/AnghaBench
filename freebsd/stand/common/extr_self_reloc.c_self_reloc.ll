; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_self_reloc.c_self_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_self_reloc.c_self_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@DT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @self_reloc(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %9, align 8
  br label %11

11:                                               ; preds = %41, %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DT_NULL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %39 [
    i32 135, label %21
    i32 134, label %21
    i32 130, label %29
    i32 132, label %29
    i32 131, label %34
    i32 133, label %34
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %8, align 8
  br label %40

29:                                               ; preds = %17, %17
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %40

34:                                               ; preds = %17, %17
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %40

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %34, %29, %21
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 1
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %9, align 8
  br label %11

44:                                               ; preds = %11
  br label %45

45:                                               ; preds = %73, %44
  %46 = load i64, i64* %5, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ELFW_R_TYPE(i32 %51)
  switch i32 %52, label %65 [
    i32 129, label %53
    i32 128, label %54
  ]

53:                                               ; preds = %48
  br label %66

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %57, %58
  %60 = inttoptr i64 %59 to i64*
  store i64* %60, i64** %7, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %61
  store i64 %64, i64* %62, align 8
  br label %66

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %54, %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = ptrtoint %struct.TYPE_6__* %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %8, align 8
  br label %73

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %45

77:                                               ; preds = %45
  ret void
}

declare dso_local i32 @ELFW_R_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
