; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_request_data_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_request_data_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32, i32, i32*, i64)* @evdns_request_data_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_request_data_build(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @APPEND16(i32 %18)
  %20 = call i32 @APPEND16(i32 256)
  %21 = call i32 @APPEND16(i32 1)
  %22 = call i32 @APPEND16(i32 0)
  %23 = call i32 @APPEND16(i32 0)
  %24 = call i32 @APPEND16(i32 0)
  %25 = load i32*, i32** %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @dnsname_to_labels(i32* %25, i64 %26, i64 %27, i8* %28, i64 %29, i32* null)
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load i64, i64* %16, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %7
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @APPEND16(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @APPEND16(i32 %39)
  %41 = load i64, i64* %16, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %44

43:                                               ; No predecessors!
  store i32 -1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %36, %33
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @APPEND16(i32) #1

declare dso_local i64 @dnsname_to_labels(i32*, i64, i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
