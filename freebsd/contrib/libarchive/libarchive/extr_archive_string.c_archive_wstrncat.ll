; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_wstrncat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_wstrncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_wstring = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_wstring* @archive_wstrncat(%struct.archive_wstring* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_wstring*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.archive_wstring* %0, %struct.archive_wstring** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64*, i64** %5, align 8
  store i64* %9, i64** %8, align 8
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load i64*, i64** %8, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %7, align 8
  br label %10

25:                                               ; preds = %18
  %26 = load %struct.archive_wstring*, %struct.archive_wstring** %4, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.archive_wstring* @archive_wstring_append(%struct.archive_wstring* %26, i64* %27, i64 %28)
  store %struct.archive_wstring* %29, %struct.archive_wstring** %4, align 8
  %30 = icmp eq %struct.archive_wstring* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.archive_wstring*, %struct.archive_wstring** %4, align 8
  ret %struct.archive_wstring* %34
}

declare dso_local %struct.archive_wstring* @archive_wstring_append(%struct.archive_wstring*, i64*, i64) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
