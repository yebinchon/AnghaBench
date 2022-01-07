; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_all.c_archive_read_support_format_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_all.c_archive_read_support_format_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_read_support_format_all\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_all(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %3 = load %struct.archive*, %struct.archive** %2, align 8
  %4 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %5 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %6 = call i32 @archive_check_magic(%struct.archive* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = call i32 @archive_read_support_format_ar(%struct.archive* %7)
  %9 = load %struct.archive*, %struct.archive** %2, align 8
  %10 = call i32 @archive_read_support_format_cpio(%struct.archive* %9)
  %11 = load %struct.archive*, %struct.archive** %2, align 8
  %12 = call i32 @archive_read_support_format_empty(%struct.archive* %11)
  %13 = load %struct.archive*, %struct.archive** %2, align 8
  %14 = call i32 @archive_read_support_format_lha(%struct.archive* %13)
  %15 = load %struct.archive*, %struct.archive** %2, align 8
  %16 = call i32 @archive_read_support_format_mtree(%struct.archive* %15)
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = call i32 @archive_read_support_format_tar(%struct.archive* %17)
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = call i32 @archive_read_support_format_xar(%struct.archive* %19)
  %21 = load %struct.archive*, %struct.archive** %2, align 8
  %22 = call i32 @archive_read_support_format_warc(%struct.archive* %21)
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = call i32 @archive_read_support_format_7zip(%struct.archive* %23)
  %25 = load %struct.archive*, %struct.archive** %2, align 8
  %26 = call i32 @archive_read_support_format_cab(%struct.archive* %25)
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = call i32 @archive_read_support_format_rar(%struct.archive* %27)
  %29 = load %struct.archive*, %struct.archive** %2, align 8
  %30 = call i32 @archive_read_support_format_rar5(%struct.archive* %29)
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = call i32 @archive_read_support_format_iso9660(%struct.archive* %31)
  %33 = load %struct.archive*, %struct.archive** %2, align 8
  %34 = call i32 @archive_read_support_format_zip(%struct.archive* %33)
  %35 = load %struct.archive*, %struct.archive** %2, align 8
  %36 = call i32 @archive_clear_error(%struct.archive* %35)
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %37
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_cpio(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_empty(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_lha(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_mtree(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_xar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_warc(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_7zip(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_cab(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_rar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_rar5(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_iso9660(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_zip(%struct.archive*) #1

declare dso_local i32 @archive_clear_error(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
