; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c_archive_read_add_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c_archive_read_add_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.archive_read_passphrase = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"archive_read_add_passphrase\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Empty passphrase is unacceptable\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_add_passphrase(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.archive_read_passphrase*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_read*
  store %struct.archive_read* %9, %struct.archive_read** %6, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16, %2
  %23 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  %25 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %26 = call i32 @archive_set_error(i32* %24, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %16
  %29 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.archive_read_passphrase* @new_read_passphrase(%struct.archive_read* %29, i8* %30)
  store %struct.archive_read_passphrase* %31, %struct.archive_read_passphrase** %7, align 8
  %32 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %7, align 8
  %33 = icmp eq %struct.archive_read_passphrase* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %38 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %7, align 8
  %39 = call i32 @add_passphrase_to_tail(%struct.archive_read* %37, %struct.archive_read_passphrase* %38)
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local %struct.archive_read_passphrase* @new_read_passphrase(%struct.archive_read*, i8*) #1

declare dso_local i32 @add_passphrase_to_tail(%struct.archive_read*, %struct.archive_read_passphrase*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
