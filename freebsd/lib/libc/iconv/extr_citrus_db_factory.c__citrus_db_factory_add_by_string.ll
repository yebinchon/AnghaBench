; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_add_by_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_add_by_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db_factory = type { i32 }
%struct._citrus_region = type { i32 }
%struct._region = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_factory_add_by_string(%struct._citrus_db_factory* %0, i8* %1, %struct._citrus_region* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_db_factory*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._citrus_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._region, align 4
  %11 = alloca i8*, align 8
  store %struct._citrus_db_factory* %0, %struct._citrus_db_factory** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct._citrus_region* %2, %struct._citrus_region** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @_region_init(%struct._region* %10, i8* %19, i32 %21)
  %23 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %6, align 8
  %24 = load %struct._citrus_region*, %struct._citrus_region** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @_citrus_db_factory_add(%struct._citrus_db_factory* %23, %struct._region* %10, i32 1, %struct._citrus_region* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @_region_init(%struct._region*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_citrus_db_factory_add(%struct._citrus_db_factory*, %struct._region*, i32, %struct._citrus_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
