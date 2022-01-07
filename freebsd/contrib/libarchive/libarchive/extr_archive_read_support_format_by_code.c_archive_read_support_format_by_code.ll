; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_by_code.c_archive_read_support_format_by_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_by_code.c_archive_read_support_format_by_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"archive_read_support_format_by_code\00", align 1
@ARCHIVE_FORMAT_BASE_MASK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_by_code(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.archive*, %struct.archive** %4, align 8
  %7 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %8 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %9 = call i32 @archive_check_magic(%struct.archive* %6, i32 %7, i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %49 [
    i32 139, label %13
    i32 138, label %16
    i32 137, label %19
    i32 136, label %22
    i32 135, label %25
    i32 134, label %28
    i32 133, label %31
    i32 132, label %34
    i32 131, label %37
    i32 130, label %40
    i32 129, label %43
    i32 128, label %46
  ]

13:                                               ; preds = %2
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = call i32 @archive_read_support_format_7zip(%struct.archive* %14)
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.archive*, %struct.archive** %4, align 8
  %18 = call i32 @archive_read_support_format_ar(%struct.archive* %17)
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.archive*, %struct.archive** %4, align 8
  %21 = call i32 @archive_read_support_format_cab(%struct.archive* %20)
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.archive*, %struct.archive** %4, align 8
  %24 = call i32 @archive_read_support_format_cpio(%struct.archive* %23)
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.archive*, %struct.archive** %4, align 8
  %27 = call i32 @archive_read_support_format_iso9660(%struct.archive* %26)
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.archive*, %struct.archive** %4, align 8
  %30 = call i32 @archive_read_support_format_lha(%struct.archive* %29)
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %2
  %32 = load %struct.archive*, %struct.archive** %4, align 8
  %33 = call i32 @archive_read_support_format_mtree(%struct.archive* %32)
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.archive*, %struct.archive** %4, align 8
  %36 = call i32 @archive_read_support_format_rar(%struct.archive* %35)
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.archive*, %struct.archive** %4, align 8
  %39 = call i32 @archive_read_support_format_rar5(%struct.archive* %38)
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.archive*, %struct.archive** %4, align 8
  %42 = call i32 @archive_read_support_format_tar(%struct.archive* %41)
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %2
  %44 = load %struct.archive*, %struct.archive** %4, align 8
  %45 = call i32 @archive_read_support_format_xar(%struct.archive* %44)
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = call i32 @archive_read_support_format_zip(%struct.archive* %47)
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %2
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_read_support_format_7zip(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_cab(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_cpio(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_iso9660(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_lha(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_mtree(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_rar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_rar5(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_xar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_zip(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
