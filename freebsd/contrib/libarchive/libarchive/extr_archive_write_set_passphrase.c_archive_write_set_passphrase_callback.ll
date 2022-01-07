; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_passphrase.c_archive_write_set_passphrase_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_passphrase.c_archive_write_set_passphrase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"archive_write_set_passphrase_callback\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_passphrase_callback(%struct.archive* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.archive_write*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_write*
  store %struct.archive_write* %9, %struct.archive_write** %7, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %19 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %20
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
