; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_large_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_large_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_OBJECT = common dso_local global i32 0, align 4
@recursion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ucl_test_large_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_test_large_map() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @UCL_OBJECT, align 4
  %9 = call i32* @ucl_object_typed_new(i32 %8)
  store i32* %9, i32** %1, align 8
  store i32 65537, i32* %3, align 4
  %10 = load i32, i32* @recursion, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @recursion, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = call i8* @random_key(i64* %6)
  store i8* %17, i8** %7, align 8
  %18 = call i32* (...) @ucl_test_boolean()
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @ucl_object_insert_key(i32* %27, i32* %28, i8* %29, i64 %30, i32 1)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i32* @ucl_object_typed_new(i32) #1

declare dso_local i8* @random_key(i64*) #1

declare dso_local i32* @ucl_test_boolean(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ucl_object_insert_key(i32*, i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
