; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_sparse_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_sparse_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pax = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pax*, i64, i64)* @sparse_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparse_list_add(%struct.pax* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pax*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pax* %0, %struct.pax** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pax*, %struct.pax** %5, align 8
  %11 = getelementptr inbounds %struct.pax, %struct.pax* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.pax*, %struct.pax** %5, align 8
  %17 = getelementptr inbounds %struct.pax, %struct.pax* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pax*, %struct.pax** %5, align 8
  %22 = getelementptr inbounds %struct.pax, %struct.pax* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.pax*, %struct.pax** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i32 @_sparse_list_add_block(%struct.pax* %32, i64 %33, i64 %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %49

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.pax*, %struct.pax** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @_sparse_list_add_block(%struct.pax* %45, i64 %46, i64 %47, i32 0)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @_sparse_list_add_block(%struct.pax*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
