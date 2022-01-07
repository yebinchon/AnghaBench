; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, i8*, i64)* @_citrus_prop_read_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_prop_read_symbol(%struct._memstream* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._memstream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct._memstream* %0, %struct._memstream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct._memstream*, %struct._memstream** %5, align 8
  %16 = call i32 @_memstream_getc(%struct._memstream* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 95
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @_bcs_isalnum(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %45

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  br label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load %struct._memstream*, %struct._memstream** %5, align 8
  %35 = call i32 @_memstream_getc(%struct._memstream* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 95
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @_bcs_isalnum(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct._memstream*, %struct._memstream** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @_memstream_ungetc(%struct._memstream* %46, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

declare dso_local i64 @_bcs_isalnum(i32) #1

declare dso_local i32 @_memstream_ungetc(%struct._memstream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
