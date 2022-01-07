; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64* }
%struct.val_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @val_get_mem(%struct.module_env* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.val_env*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.module_env*, %struct.module_env** %4, align 8
  %8 = getelementptr inbounds %struct.module_env, %struct.module_env* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.val_env*
  store %struct.val_env* %14, %struct.val_env** %6, align 8
  %15 = load %struct.val_env*, %struct.val_env** %6, align 8
  %16 = icmp ne %struct.val_env* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.val_env*, %struct.val_env** %6, align 8
  %20 = getelementptr inbounds %struct.val_env, %struct.val_env* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @key_cache_get_mem(i32 %21)
  %23 = add i64 12, %22
  %24 = load %struct.val_env*, %struct.val_env** %6, align 8
  %25 = getelementptr inbounds %struct.val_env, %struct.val_env* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @val_neg_get_mem(i32 %26)
  %28 = add i64 %23, %27
  %29 = load %struct.val_env*, %struct.val_env** %6, align 8
  %30 = getelementptr inbounds %struct.val_env, %struct.val_env* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 16, %32
  %34 = add i64 %28, %33
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @key_cache_get_mem(i32) #1

declare dso_local i64 @val_neg_get_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
