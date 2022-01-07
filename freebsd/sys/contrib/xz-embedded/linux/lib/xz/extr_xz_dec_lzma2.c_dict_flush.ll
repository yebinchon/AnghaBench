; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_lzma2.c_dict_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_lzma2.c_dict_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i64, i64, i64, i64, i32 }
%struct.xz_buf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dictionary*, %struct.xz_buf*)* @dict_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dict_flush(%struct.dictionary* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca %struct.xz_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %4, align 8
  %6 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %7 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %10 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %14 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @DEC_IS_MULTI(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %20 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %23 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %28 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %31 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %34 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %38 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %41 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @memcpy(i64 %36, i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %29, %2
  %47 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %48 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %51 = getelementptr inbounds %struct.dictionary, %struct.dictionary* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %54 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @DEC_IS_MULTI(i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
