; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_option.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_option.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fubar\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"snafu\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"betcha\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iso9660\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %5, %struct.archive** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ARCHIVE_FAILED, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_write_set_format_iso9660(%struct.archive* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = call i32 @should(%struct.archive* %20, i32 %21, i8* null, i8* null, i8* null)
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  %25 = call i32 @should(%struct.archive* %23, i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = load i32, i32* @ARCHIVE_FAILED, align 4
  %28 = call i32 @should(%struct.archive* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %29 = load %struct.archive*, %struct.archive** %3, align 8
  %30 = load i32, i32* @ARCHIVE_FAILED, align 4
  %31 = call i32 @should(%struct.archive* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = load i32, i32* @ARCHIVE_FAILED, align 4
  %34 = call i32 @should(%struct.archive* %32, i32 %33, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %35 = load %struct.archive*, %struct.archive** %3, align 8
  %36 = load i32, i32* @ARCHIVE_FAILED, align 4
  %37 = call i32 @should(%struct.archive* %35, i32 %36, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @should(%struct.archive* %38, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @should(%struct.archive* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @should(%struct.archive* %44, i32 %45, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %47 = load %struct.archive*, %struct.archive** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @should(%struct.archive* %47, i32 %48, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = call i32 @archive_write_free(%struct.archive* %50)
  ret void
}

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_set_format_iso9660(%struct.archive*) #1

declare dso_local i32 @should(%struct.archive*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
