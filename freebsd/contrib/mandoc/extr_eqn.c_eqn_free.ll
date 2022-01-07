; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { %struct.eqn_node*, %struct.eqn_node*, %struct.eqn_node*, %struct.eqn_node*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eqn_free(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_node*, align 8
  %3 = alloca i32, align 4
  store %struct.eqn_node* %0, %struct.eqn_node** %2, align 8
  %4 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %5 = icmp eq %struct.eqn_node* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %34, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %11 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %17 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %16, i32 0, i32 0
  %18 = load %struct.eqn_node*, %struct.eqn_node** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %18, i64 %20
  %22 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %21, i32 0, i32 3
  %23 = load %struct.eqn_node*, %struct.eqn_node** %22, align 8
  %24 = call i32 @free(%struct.eqn_node* %23)
  %25 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %26 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %25, i32 0, i32 0
  %27 = load %struct.eqn_node*, %struct.eqn_node** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %27, i64 %29
  %31 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %30, i32 0, i32 2
  %32 = load %struct.eqn_node*, %struct.eqn_node** %31, align 8
  %33 = call i32 @free(%struct.eqn_node* %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %39 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %38, i32 0, i32 1
  %40 = load %struct.eqn_node*, %struct.eqn_node** %39, align 8
  %41 = call i32 @free(%struct.eqn_node* %40)
  %42 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %43 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %42, i32 0, i32 0
  %44 = load %struct.eqn_node*, %struct.eqn_node** %43, align 8
  %45 = call i32 @free(%struct.eqn_node* %44)
  %46 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %47 = call i32 @free(%struct.eqn_node* %46)
  br label %48

48:                                               ; preds = %37, %6
  ret void
}

declare dso_local i32 @free(%struct.eqn_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
