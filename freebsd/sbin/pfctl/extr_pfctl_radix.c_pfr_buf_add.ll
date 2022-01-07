; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i64, i64, i64, i64 }

@PFRB_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@buf_esize = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_buf_add(%struct.pfr_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %8 = icmp eq %struct.pfr_buffer* %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PFRB_MAX, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %14, %9, %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %62

25:                                               ; preds = %20
  %26 = load i64*, i64** @buf_esize, align 8
  %27 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %41 = call i64 @pfr_buf_grow(%struct.pfr_buffer* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %62

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 %49, %52
  %54 = add i64 %48, %53
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @memcpy(i64 %54, i8* %55, i64 %56)
  %58 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %45, %43, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @pfr_buf_grow(%struct.pfr_buffer*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
