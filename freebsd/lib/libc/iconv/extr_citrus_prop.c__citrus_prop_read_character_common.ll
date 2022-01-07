; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_character_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_character_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, i32*)* @_citrus_prop_read_character_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_prop_read_character_common(%struct._memstream* noalias %0, i32* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct._memstream*, %struct._memstream** %4, align 8
  %9 = call i32 @_memstream_getc(%struct._memstream* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 92
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct._memstream*, %struct._memstream** %4, align 8
  %17 = call i32 @_memstream_getc(%struct._memstream* %16)
  store i32 %17, i32* %7, align 4
  store i32 16, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %44 [
    i32 97, label %19
    i32 98, label %21
    i32 102, label %23
    i32 110, label %25
    i32 114, label %27
    i32 116, label %29
    i32 118, label %31
    i32 48, label %33
    i32 49, label %33
    i32 50, label %33
    i32 51, label %33
    i32 52, label %33
    i32 53, label %33
    i32 54, label %33
    i32 55, label %33
    i32 120, label %39
  ]

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  store i32 7, i32* %20, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  store i32 8, i32* %22, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  store i32 12, i32* %24, align 4
  br label %47

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  store i32 10, i32* %26, align 4
  br label %47

27:                                               ; preds = %15
  %28 = load i32*, i32** %5, align 8
  store i32 13, i32* %28, align 4
  br label %47

29:                                               ; preds = %15
  %30 = load i32*, i32** %5, align 8
  store i32 9, i32* %30, align 4
  br label %47

31:                                               ; preds = %15
  %32 = load i32*, i32** %5, align 8
  store i32 11, i32* %32, align 4
  br label %47

33:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %34 = load %struct._memstream*, %struct._memstream** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @_memstream_ungetc(%struct._memstream* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %15, %33
  %40 = load %struct._memstream*, %struct._memstream** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @_citrus_prop_read_chr_common(%struct._memstream* %40, i32* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %15
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %31, %29, %27, %25, %23, %21, %19
  br label %48

48:                                               ; preds = %47, %12
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

declare dso_local i32 @_memstream_ungetc(%struct._memstream*, i32) #1

declare dso_local i32 @_citrus_prop_read_chr_common(%struct._memstream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
