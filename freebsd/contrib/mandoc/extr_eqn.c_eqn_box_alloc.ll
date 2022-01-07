; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { i32 }
%struct.eqn_box = type { %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, %struct.eqn_box*, i32, i32, %struct.eqn_box*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eqn_box* (%struct.eqn_node*, %struct.eqn_box*)* @eqn_box_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %0, %struct.eqn_box* %1) #0 {
  %3 = alloca %struct.eqn_node*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  %5 = alloca %struct.eqn_box*, align 8
  store %struct.eqn_node* %0, %struct.eqn_node** %3, align 8
  store %struct.eqn_box* %1, %struct.eqn_box** %4, align 8
  %6 = call %struct.eqn_box* (...) @eqn_box_new()
  store %struct.eqn_box* %6, %struct.eqn_box** %5, align 8
  %7 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %8 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %9 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %8, i32 0, i32 6
  store %struct.eqn_box* %7, %struct.eqn_box** %9, align 8
  %10 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %11 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %10, i32 0, i32 6
  %12 = load %struct.eqn_box*, %struct.eqn_box** %11, align 8
  %13 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %17 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %16, i32 0, i32 6
  %18 = load %struct.eqn_box*, %struct.eqn_box** %17, align 8
  %19 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %22 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %24 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %27 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %29 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %28, i32 0, i32 1
  %30 = load %struct.eqn_box*, %struct.eqn_box** %29, align 8
  %31 = icmp ne %struct.eqn_box* null, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %34 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %35 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %34, i32 0, i32 0
  %36 = load %struct.eqn_box*, %struct.eqn_box** %35, align 8
  %37 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %36, i32 0, i32 3
  store %struct.eqn_box* %33, %struct.eqn_box** %37, align 8
  %38 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %39 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %38, i32 0, i32 0
  %40 = load %struct.eqn_box*, %struct.eqn_box** %39, align 8
  %41 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %42 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %41, i32 0, i32 2
  store %struct.eqn_box* %40, %struct.eqn_box** %42, align 8
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %45 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %46 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %45, i32 0, i32 1
  store %struct.eqn_box* %44, %struct.eqn_box** %46, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %49 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %50 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %49, i32 0, i32 0
  store %struct.eqn_box* %48, %struct.eqn_box** %50, align 8
  %51 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  ret %struct.eqn_box* %51
}

declare dso_local %struct.eqn_box* @eqn_box_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
