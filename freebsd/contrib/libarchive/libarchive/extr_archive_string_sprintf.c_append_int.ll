; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string_sprintf.c_append_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string_sprintf.c_append_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@INTMAX_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i64, i32)* @append_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_int(%struct.archive_string* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %12 = call i32 @archive_strappend_char(%struct.archive_string* %11, i8 signext 45)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @INTMAX_MIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %20

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 0, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i64 [ 1, %16 ], [ %19, %17 ]
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @append_uint(%struct.archive_string* %25, i64 %26, i32 %27)
  ret void
}

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

declare dso_local i32 @append_uint(%struct.archive_string*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
