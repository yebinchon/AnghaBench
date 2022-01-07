; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_def_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_def_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_def = type { i64, i32 }
%struct.eqn_node = type { %struct.eqn_def*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eqn_def* (%struct.eqn_node*)* @eqn_def_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eqn_def* @eqn_def_find(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_def*, align 8
  %3 = alloca %struct.eqn_node*, align 8
  %4 = alloca i32, align 4
  store %struct.eqn_node* %0, %struct.eqn_node** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %8 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %5
  %13 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %14 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %13, i32 0, i32 0
  %15 = load %struct.eqn_def*, %struct.eqn_def** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %15, i64 %17
  %19 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %12
  %23 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %24 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %23, i32 0, i32 0
  %25 = load %struct.eqn_def*, %struct.eqn_def** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %25, i64 %27
  %29 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %32 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %31, i32 0, i32 0
  %33 = load %struct.eqn_def*, %struct.eqn_def** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %33, i64 %35
  %37 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %40 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %43 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @STRNEQ(i32 %30, i64 %38, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %22
  %48 = load %struct.eqn_node*, %struct.eqn_node** %3, align 8
  %49 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %48, i32 0, i32 0
  %50 = load %struct.eqn_def*, %struct.eqn_def** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %50, i64 %52
  store %struct.eqn_def* %53, %struct.eqn_def** %2, align 8
  br label %59

54:                                               ; preds = %22, %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %5

58:                                               ; preds = %5
  store %struct.eqn_def* null, %struct.eqn_def** %2, align 8
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.eqn_def*, %struct.eqn_def** %2, align 8
  ret %struct.eqn_def* %60
}

declare dso_local i64 @STRNEQ(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
