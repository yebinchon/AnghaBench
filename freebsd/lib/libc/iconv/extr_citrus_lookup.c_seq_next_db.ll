; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_next_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_next_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i64, i64, i32, i64, i32, i64, i32 }
%struct._region = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_lookup*, %struct._region*, %struct._region*)* @seq_next_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_next_db(%struct._citrus_lookup* %0, %struct._region* %1, %struct._region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_lookup*, align 8
  %6 = alloca %struct._region*, align 8
  %7 = alloca %struct._region*, align 8
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %5, align 8
  store %struct._region* %1, %struct._region** %6, align 8
  store %struct._region* %2, %struct._region** %7, align 8
  %8 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %9 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct._region*, %struct._region** %6, align 8
  %14 = icmp ne %struct._region* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct._region*, %struct._region** %6, align 8
  %17 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %18 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %21 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @_region_init(%struct._region* %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %12
  %25 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %26 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %29 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct._region*, %struct._region** %7, align 8
  %32 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %33 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %32, i32 0, i32 4
  %34 = call i32 @_db_lookup_by_s(i32 %27, i64 %30, %struct._region* %31, i32* %33)
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %3
  %36 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %37 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %42 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %45 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %47 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %50 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOENT, align 4
  store i32 %54, i32* %4, align 4
  br label %67

55:                                               ; preds = %43
  %56 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %57 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct._citrus_lookup*, %struct._citrus_lookup** %5, align 8
  %60 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = trunc i64 %61 to i32
  %64 = load %struct._region*, %struct._region** %6, align 8
  %65 = load %struct._region*, %struct._region** %7, align 8
  %66 = call i32 @_db_get_entry(i32 %58, i32 %63, %struct._region* %64, %struct._region* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %55, %53, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @_region_init(%struct._region*, i64, i32) #1

declare dso_local i32 @_db_lookup_by_s(i32, i64, %struct._region*, i32*) #1

declare dso_local i32 @_db_get_entry(i32, i32, %struct._region*, %struct._region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
