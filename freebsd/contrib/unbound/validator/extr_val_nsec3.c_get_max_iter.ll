; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_get_max_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_get_max_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_env = type { i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.val_env*, i64)* @get_max_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_max_iter(%struct.val_env* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.val_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.val_env* %0, %struct.val_env** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.val_env*, %struct.val_env** %4, align 8
  %8 = getelementptr inbounds %struct.val_env, %struct.val_env* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @log_assert(i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.val_env*, %struct.val_env** %4, align 8
  %16 = getelementptr inbounds %struct.val_env, %struct.val_env* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.val_env*, %struct.val_env** %4, align 8
  %22 = getelementptr inbounds %struct.val_env, %struct.val_env* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ule i64 %20, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.val_env*, %struct.val_env** %4, align 8
  %31 = getelementptr inbounds %struct.val_env, %struct.val_env* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %52

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.val_env*, %struct.val_env** %4, align 8
  %43 = getelementptr inbounds %struct.val_env, %struct.val_env* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.val_env*, %struct.val_env** %4, align 8
  %46 = getelementptr inbounds %struct.val_env, %struct.val_env* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %41, %29
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
