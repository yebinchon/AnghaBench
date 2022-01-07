; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_ns_sprintrr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_ns_sprintrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_sprintrr(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ns_msg_base(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ns_msg_size(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ns_rr_name(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ns_rr_class(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ns_rr_type(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ns_rr_ttl(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ns_rr_rdata(i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ns_rr_rdlen(i32 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @ns_sprintrrf(i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i8* %38, i8* %39, i8* %40, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

declare dso_local i32 @ns_sprintrrf(i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @ns_msg_base(i32) #1

declare dso_local i32 @ns_msg_size(i32) #1

declare dso_local i32 @ns_rr_name(i32) #1

declare dso_local i32 @ns_rr_class(i32) #1

declare dso_local i32 @ns_rr_type(i32) #1

declare dso_local i32 @ns_rr_ttl(i32) #1

declare dso_local i32 @ns_rr_rdata(i32) #1

declare dso_local i32 @ns_rr_rdlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
