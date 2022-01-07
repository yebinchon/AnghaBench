; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_headers_read_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_headers_read_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i64 }

@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32, %struct.iovec*, i32*)* @serf_headers_read_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serf_headers_read_iovec(i32* %0, i64 %1, i32 %2, %struct.iovec* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %66, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @serf_headers_read(i32* %24, i64 %25, i8** %14, i64* %15)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.iovec*, %struct.iovec** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i64 %34
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0
  store i8* %30, i8** %36, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.iovec*, %struct.iovec** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i64 %41
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 1
  store i64 %37, i64* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %29
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %16, align 8
  store i64 %57, i64* %6, align 8
  br label %71

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %29
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %6, align 8
  br label %71

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %63, %56
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i64 @serf_headers_read(i32*, i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
