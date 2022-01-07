; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_auth_des.c_cache_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@authdes_lru = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @cache_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_ref(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %6 = load i16*, i16** @authdes_lru, align 8
  %7 = getelementptr inbounds i16, i16* %6, i64 0
  %8 = load i16, i16* %7, align 2
  store i16 %8, i16* %5, align 2
  %9 = load i16, i16* %2, align 2
  %10 = load i16*, i16** @authdes_lru, align 8
  %11 = getelementptr inbounds i16, i16* %10, i64 0
  store i16 %9, i16* %11, align 2
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i16, i16* %5, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i16*, i16** @authdes_lru, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %19, i64 %21
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %4, align 2
  %24 = load i16, i16* %5, align 2
  %25 = load i16*, i16** @authdes_lru, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  store i16 %24, i16* %28, align 2
  %29 = load i16, i16* %4, align 2
  store i16 %29, i16* %5, align 2
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
