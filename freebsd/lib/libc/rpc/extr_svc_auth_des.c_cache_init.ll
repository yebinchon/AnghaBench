; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@AUTHDES_CACHESZ = common dso_local global i32 0, align 4
@authdes_cache = common dso_local global %struct.cache_entry* null, align 8
@authdes_lru = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AUTHDES_CACHESZ, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 4, %3
  %5 = trunc i64 %4 to i32
  %6 = call i64 @mem_alloc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.cache_entry*
  store %struct.cache_entry* %7, %struct.cache_entry** @authdes_cache, align 8
  %8 = load %struct.cache_entry*, %struct.cache_entry** @authdes_cache, align 8
  %9 = bitcast %struct.cache_entry* %8 to i8*
  %10 = load i32, i32* @AUTHDES_CACHESZ, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @bzero(i8* %9, i32 %13)
  %15 = load i32, i32* @AUTHDES_CACHESZ, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 2, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @mem_alloc(i32 %18)
  %20 = inttoptr i64 %19 to i16*
  %21 = bitcast i16* %20 to i32*
  store i32* %21, i32** @authdes_lru, align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %32, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @AUTHDES_CACHESZ, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = load i32*, i32** @authdes_lru, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %22

35:                                               ; preds = %22
  ret void
}

declare dso_local i64 @mem_alloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
