; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_attr_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_attr_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i32, i64)* @add_pax_attr_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pax_attr_time(%struct.archive_string* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.archive_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [38 x i8], align 16
  store %struct.archive_string* %0, %struct.archive_string** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 37
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds [38 x i8], [38 x i8]* %12, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 38
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %11, align 8
  store i32 0, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %17

17:                                               ; preds = %31, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = load i64, i64* %8, align 8
  %27 = urem i64 %26, 10
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* %8, align 8
  %30 = udiv i64 %29, 10
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %10, align 4
  br label %17

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %41, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %11, align 8
  store i8 %45, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  %49 = urem i64 %48, 10
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i64, i64* %8, align 8
  %52 = udiv i64 %51, 10
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %11, align 8
  store i8 46, i8* %57, align 1
  br label %58

58:                                               ; preds = %55, %34
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @format_int(i8* %59, i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @add_pax_attr(%struct.archive_string* %62, i8* %63, i8* %64)
  ret void
}

declare dso_local i8* @format_int(i8*, i32) #1

declare dso_local i32 @add_pax_attr(%struct.archive_string*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
