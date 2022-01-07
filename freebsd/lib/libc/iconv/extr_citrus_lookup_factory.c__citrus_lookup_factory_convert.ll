; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup_factory.c__citrus_lookup_factory_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup_factory.c__citrus_lookup_factory_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db_factory = type { i32 }
%struct._region = type { i32 }

@_db_hash_std = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_lookup_factory_convert(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct._citrus_db_factory*, align 8
  %7 = alloca %struct._region, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call i32 @_db_factory_create(%struct._citrus_db_factory** %6, i32* @_db_hash_std, i32* null)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @fgetln(i32* %18, i64* %9)
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @convert_line(%struct._citrus_db_factory* %22, i8* %23, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %6, align 8
  %29 = call i32 @_db_factory_free(%struct._citrus_db_factory* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %21
  br label %17

32:                                               ; preds = %17
  %33 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %6, align 8
  %34 = call i32 @dump_db(%struct._citrus_db_factory* %33, %struct._region* %7)
  store i32 %34, i32* %10, align 4
  %35 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %6, align 8
  %36 = call i32 @_db_factory_free(%struct._citrus_db_factory* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %32
  %42 = call i32 @_region_head(%struct._region* %7)
  %43 = call i32 @_region_size(%struct._region* %7)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fwrite(i32 %42, i32 %43, i32 1, i32* %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47, %39, %27, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @_db_factory_create(%struct._citrus_db_factory**, i32*, i32*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @convert_line(%struct._citrus_db_factory*, i8*, i64) #1

declare dso_local i32 @_db_factory_free(%struct._citrus_db_factory*) #1

declare dso_local i32 @dump_db(%struct._citrus_db_factory*, %struct._region*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @_region_head(%struct._region*) #1

declare dso_local i32 @_region_size(%struct._region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
