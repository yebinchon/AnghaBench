; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_newspan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_data.c_newspan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_span = type { i32, %struct.tbl_span*, %struct.tbl_span*, %struct.tbl_row*, i32* }
%struct.tbl_node = type { %struct.tbl_span*, i32*, %struct.tbl_span*, i32 }
%struct.tbl_row = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tbl_span* (%struct.tbl_node*, i32, %struct.tbl_row*)* @newspan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tbl_span* @newspan(%struct.tbl_node* %0, i32 %1, %struct.tbl_row* %2) #0 {
  %4 = alloca %struct.tbl_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tbl_row*, align 8
  %7 = alloca %struct.tbl_span*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tbl_row* %2, %struct.tbl_row** %6, align 8
  %8 = call %struct.tbl_span* @mandoc_calloc(i32 1, i32 40)
  store %struct.tbl_span* %8, %struct.tbl_span** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %11 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %13 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %12, i32 0, i32 3
  %14 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %15 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %14, i32 0, i32 4
  store i32* %13, i32** %15, align 8
  %16 = load %struct.tbl_row*, %struct.tbl_row** %6, align 8
  %17 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %18 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %17, i32 0, i32 3
  store %struct.tbl_row* %16, %struct.tbl_row** %18, align 8
  %19 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %20 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %19, i32 0, i32 0
  %21 = load %struct.tbl_span*, %struct.tbl_span** %20, align 8
  %22 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %23 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %22, i32 0, i32 2
  store %struct.tbl_span* %21, %struct.tbl_span** %23, align 8
  %24 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %25 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %24, i32 0, i32 2
  %26 = load %struct.tbl_span*, %struct.tbl_span** %25, align 8
  %27 = icmp eq %struct.tbl_span* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %30 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %31 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %30, i32 0, i32 2
  store %struct.tbl_span* %29, %struct.tbl_span** %31, align 8
  %32 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %33 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %40

34:                                               ; preds = %3
  %35 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %36 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %37 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %36, i32 0, i32 2
  %38 = load %struct.tbl_span*, %struct.tbl_span** %37, align 8
  %39 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %38, i32 0, i32 1
  store %struct.tbl_span* %35, %struct.tbl_span** %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  %42 = load %struct.tbl_node*, %struct.tbl_node** %4, align 8
  %43 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %42, i32 0, i32 0
  store %struct.tbl_span* %41, %struct.tbl_span** %43, align 8
  %44 = load %struct.tbl_span*, %struct.tbl_span** %7, align 8
  ret %struct.tbl_span* %44
}

declare dso_local %struct.tbl_span* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
