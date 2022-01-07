; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_makebinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_box_makebinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { i32 }
%struct.eqn_box = type { i32, i32, %struct.eqn_box*, i32*, %struct.eqn_box*, %struct.eqn_box*, i32, %struct.eqn_box* }

@EQN_SUBEXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eqn_box* (%struct.eqn_node*, %struct.eqn_box*)* @eqn_box_makebinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eqn_box* @eqn_box_makebinary(%struct.eqn_node* %0, %struct.eqn_box* %1) #0 {
  %3 = alloca %struct.eqn_node*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  %5 = alloca %struct.eqn_box*, align 8
  %6 = alloca %struct.eqn_box*, align 8
  store %struct.eqn_node* %0, %struct.eqn_node** %3, align 8
  store %struct.eqn_box* %1, %struct.eqn_box** %4, align 8
  %7 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %8 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %7, i32 0, i32 5
  %9 = load %struct.eqn_box*, %struct.eqn_box** %8, align 8
  %10 = icmp ne %struct.eqn_box* null, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %14 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %13, i32 0, i32 5
  %15 = load %struct.eqn_box*, %struct.eqn_box** %14, align 8
  store %struct.eqn_box* %15, %struct.eqn_box** %5, align 8
  %16 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %17 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %16, i32 0, i32 5
  %18 = load %struct.eqn_box*, %struct.eqn_box** %17, align 8
  %19 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %20 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %19, i32 0, i32 4
  %21 = load %struct.eqn_box*, %struct.eqn_box** %20, align 8
  %22 = icmp eq %struct.eqn_box* %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %25 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %24, i32 0, i32 4
  store %struct.eqn_box* null, %struct.eqn_box** %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %28 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %32 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %31, i32 0, i32 7
  %33 = load %struct.eqn_box*, %struct.eqn_box** %32, align 8
  %34 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %35 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %34, i32 0, i32 5
  store %struct.eqn_box* %33, %struct.eqn_box** %35, align 8
  %36 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %37 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %36, i32 0, i32 7
  store %struct.eqn_box* null, %struct.eqn_box** %37, align 8
  %38 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %39 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %40 = call %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node* %38, %struct.eqn_box* %39)
  store %struct.eqn_box* %40, %struct.eqn_box** %6, align 8
  %41 = load i32, i32* @EQN_SUBEXPR, align 4
  %42 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %43 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %45 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %47 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %49 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %50 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %49, i32 0, i32 5
  store %struct.eqn_box* %48, %struct.eqn_box** %50, align 8
  %51 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %52 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %51, i32 0, i32 4
  store %struct.eqn_box* %48, %struct.eqn_box** %52, align 8
  %53 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %54 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %53, i32 0, i32 4
  %55 = load %struct.eqn_box*, %struct.eqn_box** %54, align 8
  %56 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  %58 = load %struct.eqn_box*, %struct.eqn_box** %5, align 8
  %59 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %58, i32 0, i32 2
  store %struct.eqn_box* %57, %struct.eqn_box** %59, align 8
  %60 = load %struct.eqn_box*, %struct.eqn_box** %6, align 8
  ret %struct.eqn_box* %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.eqn_box* @eqn_box_alloc(%struct.eqn_node*, %struct.eqn_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
