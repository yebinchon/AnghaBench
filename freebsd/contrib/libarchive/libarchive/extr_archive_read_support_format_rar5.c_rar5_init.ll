; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rar5_signature = common dso_local global i32* null, align 8
@rar5_signature_size = common dso_local global i64 0, align 8
@CDE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*)* @rar5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar5_init(%struct.rar5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rar5*, align 8
  %4 = alloca i64, align 8
  store %struct.rar5* %0, %struct.rar5** %3, align 8
  %5 = load %struct.rar5*, %struct.rar5** %3, align 8
  %6 = call i32 @memset(%struct.rar5* %5, i32 0, i32 4)
  %7 = load i32*, i32** @rar5_signature, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 243
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @rar5_signature_size, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32*, i32** @rar5_signature, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, 161
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %12

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i64, i64* @CDE_OK, align 8
  %28 = load %struct.rar5*, %struct.rar5** %3, align 8
  %29 = getelementptr inbounds %struct.rar5, %struct.rar5* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i64 @cdeque_init(i32* %30, i32 8192)
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.rar5*, i32, i32) #1

declare dso_local i64 @cdeque_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
