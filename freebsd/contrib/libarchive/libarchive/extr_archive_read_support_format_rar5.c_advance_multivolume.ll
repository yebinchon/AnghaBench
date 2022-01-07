; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_advance_multivolume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_advance_multivolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @advance_multivolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advance_multivolume(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rar5*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = call %struct.rar5* @get_context(%struct.archive_read* %7)
  store %struct.rar5* %8, %struct.rar5** %5, align 8
  br label %9

9:                                                ; preds = %1, %55, %57
  %10 = load %struct.rar5*, %struct.rar5** %5, align 8
  %11 = getelementptr inbounds %struct.rar5, %struct.rar5* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  store i32 1, i32* %6, align 4
  %16 = load %struct.rar5*, %struct.rar5** %5, align 8
  %17 = getelementptr inbounds %struct.rar5, %struct.rar5* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %30, %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %24 = call i32 @skip_base_block(%struct.archive_read* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %28 [
    i32 128, label %26
    i32 129, label %27
  ]

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %27, %26
  br label %19

31:                                               ; preds = %19
  br label %58

32:                                               ; preds = %9
  %33 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %34 = call i32 @skip_base_block(%struct.archive_read* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ARCHIVE_FAILED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 128
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.rar5*, %struct.rar5** %5, align 8
  %49 = getelementptr inbounds %struct.rar5, %struct.rar5* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %47
  br label %9

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  br label %9

58:                                               ; preds = %31
  store i32 129, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %53, %42, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @skip_base_block(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
