; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_open_csmapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_open_csmapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._csmapper = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._csmapper**, i8*, i8*, i64*)* @open_csmapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_csmapper(%struct._csmapper** %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._csmapper**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct._csmapper*, align 8
  %11 = alloca i32, align 4
  store %struct._csmapper** %0, %struct._csmapper*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = call i32 @_csmapper_open(%struct._csmapper** %10, i8* %12, i8* %13, i32 0, i64* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %39

20:                                               ; preds = %4
  %21 = load %struct._csmapper*, %struct._csmapper** %10, align 8
  %22 = call i32 @_csmapper_get_src_max(%struct._csmapper* %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load %struct._csmapper*, %struct._csmapper** %10, align 8
  %26 = call i32 @_csmapper_get_dst_max(%struct._csmapper* %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct._csmapper*, %struct._csmapper** %10, align 8
  %30 = call i64 @_csmapper_get_state_size(%struct._csmapper* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24, %20
  %33 = load %struct._csmapper*, %struct._csmapper** %10, align 8
  %34 = call i32 @_csmapper_close(%struct._csmapper* %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load %struct._csmapper*, %struct._csmapper** %10, align 8
  %38 = load %struct._csmapper**, %struct._csmapper*** %6, align 8
  store %struct._csmapper* %37, %struct._csmapper** %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %32, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @_csmapper_open(%struct._csmapper**, i8*, i8*, i32, i64*) #1

declare dso_local i32 @_csmapper_get_src_max(%struct._csmapper*) #1

declare dso_local i32 @_csmapper_get_dst_max(%struct._csmapper*) #1

declare dso_local i64 @_csmapper_get_state_size(%struct._csmapper*) #1

declare dso_local i32 @_csmapper_close(%struct._csmapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
