; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_update_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_ev_token_bucket_update_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_token_bucket = type { i8*, i32, i32 }
%struct.ev_token_bucket_cfg = type { i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ev_token_bucket_update_(%struct.ev_token_bucket* %0, %struct.ev_token_bucket_cfg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ev_token_bucket*, align 8
  %6 = alloca %struct.ev_token_bucket_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ev_token_bucket* %0, %struct.ev_token_bucket** %5, align 8
  store %struct.ev_token_bucket_cfg* %1, %struct.ev_token_bucket_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %11 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %9 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @INT_MAX, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %88

24:                                               ; preds = %19
  %25 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %26 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %29 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 %27, %30
  %32 = load i32, i32* %8, align 4
  %33 = udiv i32 %31, %32
  %34 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %40 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %43 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %54

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %47 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %45, %48
  %50 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %51 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %56 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %59 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  %62 = load i32, i32* %8, align 4
  %63 = udiv i32 %61, %62
  %64 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %65 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %70 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %73 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %84

74:                                               ; preds = %54
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ev_token_bucket_cfg*, %struct.ev_token_bucket_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.ev_token_bucket_cfg, %struct.ev_token_bucket_cfg* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %75, %78
  %80 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %81 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %68
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.ev_token_bucket*, %struct.ev_token_bucket** %5, align 8
  %87 = getelementptr inbounds %struct.ev_token_bucket, %struct.ev_token_bucket* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
