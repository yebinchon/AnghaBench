; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup_factory.c_dump_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup_factory.c_dump_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db_factory = type { i32 }
%struct._region = type { i32 }

@errno = common dso_local global i32 0, align 4
@_CITRUS_LOOKUP_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_db_factory*, %struct._region*)* @dump_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_db(%struct._citrus_db_factory* %0, %struct._region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_db_factory*, align 8
  %5 = alloca %struct._region*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct._citrus_db_factory* %0, %struct._citrus_db_factory** %4, align 8
  store %struct._region* %1, %struct._region** %5, align 8
  %8 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %4, align 8
  %9 = call i64 @_db_factory_calc_size(%struct._citrus_db_factory* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @malloc(i64 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct._region*, %struct._region** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @_region_init(%struct._region* %17, i8* %18, i64 %19)
  %21 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %4, align 8
  %22 = load i32, i32* @_CITRUS_LOOKUP_MAGIC, align 4
  %23 = load %struct._region*, %struct._region** %5, align 8
  %24 = call i32 @_db_factory_serialize(%struct._citrus_db_factory* %21, i32 %22, %struct._region* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @_db_factory_calc_size(%struct._citrus_db_factory*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @_region_init(%struct._region*, i8*, i64) #1

declare dso_local i32 @_db_factory_serialize(%struct._citrus_db_factory*, i32, %struct._region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
