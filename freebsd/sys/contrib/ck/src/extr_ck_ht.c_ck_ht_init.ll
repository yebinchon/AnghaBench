; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, i32*, i32*, i32, %struct.ck_malloc* }
%struct.ck_malloc = type { i32*, i32* }

@ck_ht_hash_wrapper = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_init(%struct.ck_ht* %0, i32 %1, i32* %2, %struct.ck_malloc* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ck_ht*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ck_malloc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ck_ht* %0, %struct.ck_ht** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.ck_malloc* %3, %struct.ck_malloc** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %15 = icmp eq %struct.ck_malloc* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %6
  %17 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %18 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %23 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %6
  store i32 0, i32* %7, align 4
  br label %58

27:                                               ; preds = %21
  %28 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %29 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %30 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %29, i32 0, i32 4
  store %struct.ck_malloc* %28, %struct.ck_malloc** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %33 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %36 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32*, i32** @ck_ht_hash_wrapper, align 8
  %41 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %42 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  br label %47

43:                                               ; preds = %27
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %46 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @ck_ht_map_create(%struct.ck_ht* %48, i32 %49)
  %51 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %52 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ck_ht*, %struct.ck_ht** %8, align 8
  %54 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %47, %26
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32* @ck_ht_map_create(%struct.ck_ht*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
