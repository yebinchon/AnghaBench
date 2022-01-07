; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_box = type { %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eqn_box_free(%struct.eqn_box* %0) #0 {
  %2 = alloca %struct.eqn_box*, align 8
  store %struct.eqn_box* %0, %struct.eqn_box** %2, align 8
  %3 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %4 = icmp eq %struct.eqn_box* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %8 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %7, i32 0, i32 6
  %9 = load %struct.eqn_box*, %struct.eqn_box** %8, align 8
  %10 = icmp ne %struct.eqn_box* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %13 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %12, i32 0, i32 6
  %14 = load %struct.eqn_box*, %struct.eqn_box** %13, align 8
  call void @eqn_box_free(%struct.eqn_box* %14)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %17 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %16, i32 0, i32 5
  %18 = load %struct.eqn_box*, %struct.eqn_box** %17, align 8
  %19 = icmp ne %struct.eqn_box* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %22 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %21, i32 0, i32 5
  %23 = load %struct.eqn_box*, %struct.eqn_box** %22, align 8
  call void @eqn_box_free(%struct.eqn_box* %23)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %26 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %25, i32 0, i32 4
  %27 = load %struct.eqn_box*, %struct.eqn_box** %26, align 8
  %28 = call i32 @free(%struct.eqn_box* %27)
  %29 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %30 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %29, i32 0, i32 3
  %31 = load %struct.eqn_box*, %struct.eqn_box** %30, align 8
  %32 = call i32 @free(%struct.eqn_box* %31)
  %33 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %34 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %33, i32 0, i32 2
  %35 = load %struct.eqn_box*, %struct.eqn_box** %34, align 8
  %36 = call i32 @free(%struct.eqn_box* %35)
  %37 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %38 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %37, i32 0, i32 1
  %39 = load %struct.eqn_box*, %struct.eqn_box** %38, align 8
  %40 = call i32 @free(%struct.eqn_box* %39)
  %41 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %42 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %41, i32 0, i32 0
  %43 = load %struct.eqn_box*, %struct.eqn_box** %42, align 8
  %44 = call i32 @free(%struct.eqn_box* %43)
  %45 = load %struct.eqn_box*, %struct.eqn_box** %2, align 8
  %46 = call i32 @free(%struct.eqn_box* %45)
  br label %47

47:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32 @free(%struct.eqn_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
