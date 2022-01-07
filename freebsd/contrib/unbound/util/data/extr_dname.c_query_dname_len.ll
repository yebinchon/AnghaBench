; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_query_dname_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_query_dname_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @query_dname_len(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %1, %38
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @sldns_buffer_remaining(i32* %7)
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i64 0, i64* %2, align 8
  br label %43

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @sldns_buffer_read_u8(i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, 192
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  br label %43

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i64 0, i64* %2, align 8
  br label %43

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %43

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @sldns_buffer_remaining(i32* %33)
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i64 0, i64* %2, align 8
  br label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @sldns_buffer_skip(i32* %39, i32 %41)
  br label %6

43:                                               ; preds = %37, %30, %26, %17, %10
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i64 @sldns_buffer_read_u8(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
