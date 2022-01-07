; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_remove_bg_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_remove_bg_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tube_remove_bg_listen(%struct.tube* %0) #0 {
  %2 = alloca %struct.tube*, align 8
  store %struct.tube* %0, %struct.tube** %2, align 8
  %3 = load %struct.tube*, %struct.tube** %2, align 8
  %4 = getelementptr inbounds %struct.tube, %struct.tube* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.tube*, %struct.tube** %2, align 8
  %9 = getelementptr inbounds %struct.tube, %struct.tube* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @comm_point_delete(i32* %10)
  %12 = load %struct.tube*, %struct.tube** %2, align 8
  %13 = getelementptr inbounds %struct.tube, %struct.tube* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.tube*, %struct.tube** %2, align 8
  %16 = getelementptr inbounds %struct.tube, %struct.tube* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load %struct.tube*, %struct.tube** %2, align 8
  %20 = getelementptr inbounds %struct.tube, %struct.tube* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
