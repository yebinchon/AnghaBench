; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i64, i64, %struct.radix_node* }
%struct.radix_node_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i8*, %struct.radix_node_head*)* @rn_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_lookup(i8* %0, i8* %1, %struct.radix_node_head* %2) #0 {
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_node_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_node_head* %2, %struct.radix_node_head** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %15 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.radix_node* @rn_addmask(i8* %13, i32 1, i32 %18)
  store %struct.radix_node* %19, %struct.radix_node** %8, align 8
  %20 = icmp eq %struct.radix_node* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %54

22:                                               ; preds = %12
  %23 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %24 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %7, align 8
  %29 = call %struct.radix_node* @rn_match(i8* %27, %struct.radix_node_head* %28)
  store %struct.radix_node* %29, %struct.radix_node** %8, align 8
  %30 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %31 = icmp ne %struct.radix_node* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %47, %35
  %37 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %38 = icmp ne %struct.radix_node* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %41 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %49 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %48, i32 0, i32 2
  %50 = load %struct.radix_node*, %struct.radix_node** %49, align 8
  store %struct.radix_node* %50, %struct.radix_node** %8, align 8
  br label %36

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %32, %26
  %53 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  store %struct.radix_node* %53, %struct.radix_node** %4, align 8
  br label %54

54:                                               ; preds = %52, %21
  %55 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  ret %struct.radix_node* %55
}

declare dso_local %struct.radix_node* @rn_addmask(i8*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_match(i8*, %struct.radix_node_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
