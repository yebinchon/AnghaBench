; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_new_ta_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_new_ta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_key = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ta_key* (i32*, i64, i32)* @anchor_new_ta_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ta_key* @anchor_new_ta_key(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ta_key*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ta_key*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i64 @malloc(i32 16)
  %10 = inttoptr i64 %9 to %struct.ta_key*
  store %struct.ta_key* %10, %struct.ta_key** %8, align 8
  %11 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %12 = icmp ne %struct.ta_key* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ta_key* null, %struct.ta_key** %4, align 8
  br label %37

14:                                               ; preds = %3
  %15 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %16 = call i32 @memset(%struct.ta_key* %15, i32 0, i32 16)
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @memdup(i32* %17, i64 %18)
  %20 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %21 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %23 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %28 = call i32 @free(%struct.ta_key* %27)
  store %struct.ta_key* null, %struct.ta_key** %4, align 8
  br label %37

29:                                               ; preds = %14
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %32 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  %35 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ta_key*, %struct.ta_key** %8, align 8
  store %struct.ta_key* %36, %struct.ta_key** %4, align 8
  br label %37

37:                                               ; preds = %29, %26, %13
  %38 = load %struct.ta_key*, %struct.ta_key** %4, align 8
  ret %struct.ta_key* %38
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.ta_key*, i32, i32) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.ta_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
