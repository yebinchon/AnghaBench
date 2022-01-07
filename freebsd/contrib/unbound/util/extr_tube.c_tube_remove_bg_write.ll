; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_remove_bg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_remove_bg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32*, %struct.tube_res_list*, i32* }
%struct.tube_res_list = type { %struct.tube_res_list*, %struct.tube_res_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tube_remove_bg_write(%struct.tube* %0) #0 {
  %2 = alloca %struct.tube*, align 8
  %3 = alloca %struct.tube_res_list*, align 8
  %4 = alloca %struct.tube_res_list*, align 8
  store %struct.tube* %0, %struct.tube** %2, align 8
  %5 = load %struct.tube*, %struct.tube** %2, align 8
  %6 = getelementptr inbounds %struct.tube, %struct.tube* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.tube*, %struct.tube** %2, align 8
  %11 = getelementptr inbounds %struct.tube, %struct.tube* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @comm_point_delete(i32* %12)
  %14 = load %struct.tube*, %struct.tube** %2, align 8
  %15 = getelementptr inbounds %struct.tube, %struct.tube* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.tube*, %struct.tube** %2, align 8
  %18 = getelementptr inbounds %struct.tube, %struct.tube* %17, i32 0, i32 1
  %19 = load %struct.tube_res_list*, %struct.tube_res_list** %18, align 8
  %20 = icmp ne %struct.tube_res_list* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.tube*, %struct.tube** %2, align 8
  %23 = getelementptr inbounds %struct.tube, %struct.tube* %22, i32 0, i32 1
  %24 = load %struct.tube_res_list*, %struct.tube_res_list** %23, align 8
  store %struct.tube_res_list* %24, %struct.tube_res_list** %4, align 8
  %25 = load %struct.tube*, %struct.tube** %2, align 8
  %26 = getelementptr inbounds %struct.tube, %struct.tube* %25, i32 0, i32 1
  store %struct.tube_res_list* null, %struct.tube_res_list** %26, align 8
  %27 = load %struct.tube*, %struct.tube** %2, align 8
  %28 = getelementptr inbounds %struct.tube, %struct.tube* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %32, %21
  %30 = load %struct.tube_res_list*, %struct.tube_res_list** %4, align 8
  %31 = icmp ne %struct.tube_res_list* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.tube_res_list*, %struct.tube_res_list** %4, align 8
  %34 = getelementptr inbounds %struct.tube_res_list, %struct.tube_res_list* %33, i32 0, i32 1
  %35 = load %struct.tube_res_list*, %struct.tube_res_list** %34, align 8
  store %struct.tube_res_list* %35, %struct.tube_res_list** %3, align 8
  %36 = load %struct.tube_res_list*, %struct.tube_res_list** %4, align 8
  %37 = getelementptr inbounds %struct.tube_res_list, %struct.tube_res_list* %36, i32 0, i32 0
  %38 = load %struct.tube_res_list*, %struct.tube_res_list** %37, align 8
  %39 = call i32 @free(%struct.tube_res_list* %38)
  %40 = load %struct.tube_res_list*, %struct.tube_res_list** %4, align 8
  %41 = call i32 @free(%struct.tube_res_list* %40)
  %42 = load %struct.tube_res_list*, %struct.tube_res_list** %3, align 8
  store %struct.tube_res_list* %42, %struct.tube_res_list** %4, align 8
  br label %29

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @free(%struct.tube_res_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
