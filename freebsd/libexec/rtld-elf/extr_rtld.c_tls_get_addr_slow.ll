; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_tls_get_addr_slow.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_tls_get_addr_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_dtv_generation = common dso_local global i64 0, align 8
@rtld_bind_lock = common dso_local global i32 0, align 4
@tls_max_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64**, i32, i64)* @tls_get_addr_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tls_get_addr_slow(i64** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64** %0, i64*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64**, i64*** %4, align 8
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %8, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @tls_dtv_generation, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %3
  %19 = load i32, i32* @rtld_bind_lock, align 4
  %20 = call i32 @wlock_acquire(i32 %19, i32* %9)
  %21 = load i32, i32* @tls_max_index, align 4
  %22 = add nsw i32 %21, 2
  %23 = call i64* @xcalloc(i32 %22, i32 8)
  store i64* %23, i64** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @tls_max_index, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @tls_max_index, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(i64* %35, i64* %37, i32 %41)
  %43 = load i64, i64* @tls_dtv_generation, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @tls_max_index, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @free(i64* %50)
  %52 = load i32, i32* @rtld_bind_lock, align 4
  %53 = call i32 @lock_release(i32 %52, i32* %9)
  %54 = load i64*, i64** %7, align 8
  %55 = load i64**, i64*** %4, align 8
  store i64* %54, i64** %55, align 8
  store i64* %54, i64** %8, align 8
  br label %56

56:                                               ; preds = %33, %3
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %56
  %65 = load i32, i32* @rtld_bind_lock, align 4
  %66 = call i32 @wlock_acquire(i32 %65, i32* %9)
  %67 = load i64*, i64** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @allocate_module_tls(i32 %75)
  %77 = load i64*, i64** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64 %76, i64* %81, align 8
  br label %82

82:                                               ; preds = %74, %64
  %83 = load i32, i32* @rtld_bind_lock, align 4
  %84 = call i32 @lock_release(i32 %83, i32* %9)
  br label %85

85:                                               ; preds = %82, %56
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %91, %92
  %94 = inttoptr i64 %93 to i8*
  ret i8* %94
}

declare dso_local i32 @wlock_acquire(i32, i32*) #1

declare dso_local i64* @xcalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i64 @allocate_module_tls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
