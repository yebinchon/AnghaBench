; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_passphrase.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_passphrase.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pass1\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pass2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %5, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = call i32 @archive_write_add_filter_gzip(%struct.archive* %11)
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = call i32 @archive_write_set_format_iso9660(%struct.archive* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_write_set_passphrase(%struct.archive* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @assertEqualInt(i32 %16, i32 %18)
  %20 = load i32, i32* @ARCHIVE_FAILED, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_write_set_passphrase(%struct.archive* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @assertEqualInt(i32 %20, i32 %22)
  %24 = load i32, i32* @ARCHIVE_FAILED, align 4
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = call i32 @archive_write_set_passphrase(%struct.archive* %25, i8* null)
  %27 = call i32 @assertEqualInt(i32 %24, i32 %26)
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = call i32 @__archive_write_get_passphrase(%struct.archive_write* %28)
  %30 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = call i32 @archive_write_set_passphrase(%struct.archive* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  %35 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %36 = call i32 @__archive_write_get_passphrase(%struct.archive_write* %35)
  %37 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = call i32 @archive_write_free(%struct.archive* %38)
  ret void
}

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_add_filter_gzip(%struct.archive*) #1

declare dso_local i32 @archive_write_set_format_iso9660(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_set_passphrase(%struct.archive*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @__archive_write_get_passphrase(%struct.archive_write*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
