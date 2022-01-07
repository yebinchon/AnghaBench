; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_cfg_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_cfg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_token_bucket_cfg = type { i64, i64, i64, i64, i32, i32 }
%struct.timeval = type { i32, i32 }

@EV_RATE_LIMIT_MAX = common dso_local global i64 0, align 8
@COMMON_TIMEOUT_MICROSECONDS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ev_token_bucket_cfg* @ev_token_bucket_cfg_new(i64 %0, i64 %1, i64 %2, i64 %3, %struct.timeval* %4) #0 {
  %6 = alloca %struct.ev_token_bucket_cfg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.ev_token_bucket_cfg*, align 8
  %13 = alloca %struct.timeval, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  %14 = load %struct.timeval*, %struct.timeval** %11, align 8
  %15 = icmp ne %struct.timeval* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store %struct.timeval* %13, %struct.timeval** %11, align 8
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %23, %19
  store %struct.ev_token_bucket_cfg* null, %struct.ev_token_bucket_cfg** %6, align 8
  br label %87

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @EV_RATE_LIMIT_MAX, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @EV_RATE_LIMIT_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @EV_RATE_LIMIT_MAX, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @EV_RATE_LIMIT_MAX, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42, %38, %34
  store %struct.ev_token_bucket_cfg* null, %struct.ev_token_bucket_cfg** %6, align 8
  br label %87

51:                                               ; preds = %46
  %52 = call %struct.ev_token_bucket_cfg* @mm_calloc(i32 1, i32 40)
  store %struct.ev_token_bucket_cfg* %52, %struct.ev_token_bucket_cfg** %12, align 8
  %53 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %54 = icmp ne %struct.ev_token_bucket_cfg* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store %struct.ev_token_bucket_cfg* null, %struct.ev_token_bucket_cfg** %6, align 8
  br label %87

56:                                               ; preds = %51
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %59 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %62 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %65 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %68 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %70 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %69, i32 0, i32 5
  %71 = load %struct.timeval*, %struct.timeval** %11, align 8
  %72 = call i32 @memcpy(i32* %70, %struct.timeval* %71, i32 8)
  %73 = load %struct.timeval*, %struct.timeval** %11, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 1000
  %77 = load %struct.timeval*, %struct.timeval** %11, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @COMMON_TIMEOUT_MICROSECONDS_MASK, align 4
  %81 = and i32 %79, %80
  %82 = sdiv i32 %81, 1000
  %83 = add nsw i32 %76, %82
  %84 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  %85 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %12, align 8
  store %struct.ev_token_bucket_cfg* %86, %struct.ev_token_bucket_cfg** %6, align 8
  br label %87

87:                                               ; preds = %56, %55, %50, %33
  %88 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  ret %struct.ev_token_bucket_cfg* %88
}

declare dso_local %struct.ev_token_bucket_cfg* @mm_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
