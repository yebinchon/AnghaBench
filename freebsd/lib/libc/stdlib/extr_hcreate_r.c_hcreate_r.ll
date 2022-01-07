; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_hcreate_r.c_hcreate_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_hcreate_r.c_hcreate_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsearch_data = type { %struct.__hsearch* }
%struct.__hsearch = type { i32, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hcreate_r(i64 %0, %struct.hsearch_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hsearch_data*, align 8
  %6 = alloca %struct.__hsearch*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.hsearch_data* %1, %struct.hsearch_data** %5, align 8
  %7 = call %struct.__hsearch* @malloc(i32 32)
  store %struct.__hsearch* %7, %struct.__hsearch** %6, align 8
  %8 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %9 = icmp eq %struct.__hsearch* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = call i32* @calloc(i32 16, i32 4)
  %13 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %14 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %16 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %21 = call i32 @free(%struct.__hsearch* %20)
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %11
  %23 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %24 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %23, i32 0, i32 2
  %25 = call i32 @arc4random_buf(i32* %24, i32 4)
  %26 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %27 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %26, i32 0, i32 0
  store i32 15, i32* %27, align 8
  %28 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %29 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.__hsearch*, %struct.__hsearch** %6, align 8
  %31 = load %struct.hsearch_data*, %struct.hsearch_data** %5, align 8
  %32 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %31, i32 0, i32 0
  store %struct.__hsearch* %30, %struct.__hsearch** %32, align 8
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %19, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.__hsearch* @malloc(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.__hsearch*) #1

declare dso_local i32 @arc4random_buf(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
