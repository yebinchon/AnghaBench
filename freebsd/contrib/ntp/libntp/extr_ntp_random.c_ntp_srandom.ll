; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_random.c_ntp_srandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_random.c_ntp_srandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@state = common dso_local global i64* null, align 8
@rand_deg = common dso_local global i64 0, align 8
@rand_sep = common dso_local global i64 0, align 8
@fptr = common dso_local global i64* null, align 8
@rptr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntp_srandom(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @rand_type, align 8
  %5 = load i64, i64* @TYPE_0, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64*, i64** @state, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %8, i64* %10, align 8
  br label %49

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i64*, i64** @state, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %12, i64* %14, align 8
  store i64 1, i64* %3, align 8
  br label %15

15:                                               ; preds = %29, %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @rand_deg, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i64*, i64** @state, align 8
  %21 = load i64, i64* %3, align 8
  %22 = sub nsw i64 %21, 1
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @good_rand(i64 %24)
  %26 = load i64*, i64** @state, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %15

32:                                               ; preds = %15
  %33 = load i64*, i64** @state, align 8
  %34 = load i64, i64* @rand_sep, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64* %35, i64** @fptr, align 8
  %36 = load i64*, i64** @state, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64* %37, i64** @rptr, align 8
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %45, %32
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @rand_deg, align 8
  %41 = mul nsw i64 10, %40
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = call i64 (...) @ntp_random()
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %38

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %7
  %50 = load i64, i64* %2, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @srand(i32 %51)
  ret void
}

declare dso_local i64 @good_rand(i64) #1

declare dso_local i64 @ntp_random(...) #1

declare dso_local i32 @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
