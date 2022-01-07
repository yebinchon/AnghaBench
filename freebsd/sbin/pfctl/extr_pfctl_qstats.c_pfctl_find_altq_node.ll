; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_find_altq_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_find_altq_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq_node = type { %struct.pf_altq_node*, %struct.TYPE_2__, %struct.pf_altq_node* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_altq_node* @pfctl_find_altq_node(%struct.pf_altq_node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pf_altq_node*, align 8
  %5 = alloca %struct.pf_altq_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pf_altq_node*, align 8
  %9 = alloca %struct.pf_altq_node*, align 8
  store %struct.pf_altq_node* %0, %struct.pf_altq_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pf_altq_node*, %struct.pf_altq_node** %5, align 8
  store %struct.pf_altq_node* %10, %struct.pf_altq_node** %8, align 8
  br label %11

11:                                               ; preds = %50, %3
  %12 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %13 = icmp ne %struct.pf_altq_node* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %16 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcmp(i32 %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %14
  %23 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %24 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strcmp(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  store %struct.pf_altq_node* %31, %struct.pf_altq_node** %4, align 8
  br label %55

32:                                               ; preds = %22, %14
  %33 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %34 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %33, i32 0, i32 0
  %35 = load %struct.pf_altq_node*, %struct.pf_altq_node** %34, align 8
  %36 = icmp ne %struct.pf_altq_node* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %39 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %38, i32 0, i32 0
  %40 = load %struct.pf_altq_node*, %struct.pf_altq_node** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call %struct.pf_altq_node* @pfctl_find_altq_node(%struct.pf_altq_node* %40, i8* %41, i8* %42)
  store %struct.pf_altq_node* %43, %struct.pf_altq_node** %9, align 8
  %44 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %45 = icmp ne %struct.pf_altq_node* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  store %struct.pf_altq_node* %47, %struct.pf_altq_node** %4, align 8
  br label %55

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pf_altq_node*, %struct.pf_altq_node** %8, align 8
  %52 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %51, i32 0, i32 2
  %53 = load %struct.pf_altq_node*, %struct.pf_altq_node** %52, align 8
  store %struct.pf_altq_node* %53, %struct.pf_altq_node** %8, align 8
  br label %11

54:                                               ; preds = %11
  store %struct.pf_altq_node* null, %struct.pf_altq_node** %4, align 8
  br label %55

55:                                               ; preds = %54, %46, %30
  %56 = load %struct.pf_altq_node*, %struct.pf_altq_node** %4, align 8
  ret %struct.pf_altq_node* %56
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
