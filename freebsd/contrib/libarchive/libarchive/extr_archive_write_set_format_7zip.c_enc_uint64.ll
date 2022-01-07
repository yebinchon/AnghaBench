; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_enc_uint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_enc_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }

@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32)* @enc_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_uint64(%struct.archive_write* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [9 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 128, i32* %5, align 4
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %8, align 16
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 36
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 16
  br label %37

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 16
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %16, %9
  %38 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %42 = call i64 @compress_out(%struct.archive_write* %38, i32* %39, i32 %40, i32 %41)
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

declare dso_local i64 @compress_out(%struct.archive_write*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
