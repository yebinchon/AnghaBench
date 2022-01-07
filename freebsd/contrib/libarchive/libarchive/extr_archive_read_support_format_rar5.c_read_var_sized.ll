; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_var_sized.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_read_var_sized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i64*, i64*)* @read_var_sized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_var_sized(%struct.archive_read* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %14 = call i32 @read_var(%struct.archive_read* %13, i64* %7, i64* %8)
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = call i32 @read_var(%struct.archive_read* %16, i64* %7, i64* null)
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %22, %18
  %29 = load i64*, i64** %6, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %6, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @read_var(%struct.archive_read*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
