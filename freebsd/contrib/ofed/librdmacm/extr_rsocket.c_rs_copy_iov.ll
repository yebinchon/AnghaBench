; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_copy_iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_copy_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.iovec**, i64*, i64)* @rs_copy_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_copy_iov(i8* %0, %struct.iovec** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iovec**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.iovec** %1, %struct.iovec*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %39, %4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %15 = load %struct.iovec*, %struct.iovec** %14, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %17, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %27 = load %struct.iovec*, %struct.iovec** %26, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %29, %31
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @memcpy(i8* %25, i64 %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %35
  store i64 %38, i64* %36, align 8
  br label %60

39:                                               ; preds = %13
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %42 = load %struct.iovec*, %struct.iovec** %41, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %44, %46
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @memcpy(i8* %40, i64 %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr i8, i8* %54, i64 %53
  store i8* %55, i8** %5, align 8
  %56 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %57 = load %struct.iovec*, %struct.iovec** %56, align 8
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 1
  store %struct.iovec* %58, %struct.iovec** %56, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 0, i64* %59, align 8
  br label %10

60:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
