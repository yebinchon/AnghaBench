; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_def.c_Insert_Field_By_Position.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_def.c_Insert_Field_By_Position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, %struct.TYPE_6__*)* @Insert_Field_By_Position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @Insert_Field_By_Position(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  br label %19

19:                                               ; preds = %55, %17
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i1 [ false, %27 ], [ %42, %35 ]
  br label %45

45:                                               ; preds = %43, %19
  %46 = phi i1 [ true, %19 ], [ %44, %43 ]
  br i1 %46, label %47, label %56

47:                                               ; preds = %45
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = icmp eq %struct.TYPE_6__* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %56

55:                                               ; preds = %47
  br label %19

56:                                               ; preds = %54, %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = icmp eq %struct.TYPE_6__* %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %56
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %6, align 8
  br label %80

80:                                               ; preds = %78, %56
  br label %81

81:                                               ; preds = %80, %11
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %82
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
