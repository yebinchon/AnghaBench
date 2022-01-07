; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_init_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_init_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_token_bucket = type { i64, i64, i32 }
%struct.ev_token_bucket_cfg = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ev_token_bucket_init_(%struct.ev_token_bucket* %0, %struct.ev_token_bucket_cfg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ev_token_bucket*, align 8
  %6 = alloca %struct.ev_token_bucket_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ev_token_bucket* %0, %struct.ev_token_bucket** %5, align 8
  store %struct.ev_token_bucket_cfg* %1, %struct.ev_token_bucket_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %4
  %12 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %13 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %16 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %24 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %27 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %30 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %38 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  br label %54

40:                                               ; preds = %4
  %41 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %42 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %45 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %50 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %53 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %40, %39
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
