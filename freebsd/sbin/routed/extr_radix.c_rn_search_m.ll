; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_search_m.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_radix.c_rn_search_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i64, i32, i64, %struct.radix_node*, %struct.radix_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, %struct.radix_node*, i8*)* @rn_search_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @rn_search_m(i8* %0, %struct.radix_node* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radix_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.radix_node* %1, %struct.radix_node** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.radix_node*, %struct.radix_node** %5, align 8
  store %struct.radix_node* %14, %struct.radix_node** %7, align 8
  br label %15

15:                                               ; preds = %52, %3
  %16 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %17 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %22 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %26 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %23, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %20
  %33 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %34 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %38 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %35, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %46 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %45, i32 0, i32 4
  %47 = load %struct.radix_node*, %struct.radix_node** %46, align 8
  store %struct.radix_node* %47, %struct.radix_node** %7, align 8
  br label %52

48:                                               ; preds = %32, %20
  %49 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  %50 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %49, i32 0, i32 3
  %51 = load %struct.radix_node*, %struct.radix_node** %50, align 8
  store %struct.radix_node* %51, %struct.radix_node** %7, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %15

53:                                               ; preds = %15
  %54 = load %struct.radix_node*, %struct.radix_node** %7, align 8
  ret %struct.radix_node* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
