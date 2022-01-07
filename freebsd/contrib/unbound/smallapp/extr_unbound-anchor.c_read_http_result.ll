; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_http_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_http_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"read data\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @read_http_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_http_result(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @read_http_headers(i32* %7, i64* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %56

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @read_chunked_zero_terminate(i32* %15, i64* %4)
  store i8* %16, i8** %5, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i8* @read_data_chunk(i32* %18, i64 %19)
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %56

25:                                               ; preds = %21
  %26 = load i32, i32* @verb, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @print_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = call i32 (...) @BIO_s_mem()
  %35 = call i32* @BIO_new(i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @verb, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = call i32 @exit(i32 0) #3
  unreachable

47:                                               ; preds = %33
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @BIO_write(i32* %48, i8* %49, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %2, align 8
  br label %56

56:                                               ; preds = %47, %24, %10
  %57 = load i32*, i32** %2, align 8
  ret i32* %57
}

declare dso_local i32 @read_http_headers(i32*, i64*) #1

declare dso_local i8* @read_chunked_zero_terminate(i32*, i64*) #1

declare dso_local i8* @read_data_chunk(i32*, i64) #1

declare dso_local i32 @print_data(i8*, i8*, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
