; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdtar*, %struct.archive*, %struct.archive_entry*)* @write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_entry(%struct.bsdtar* %0, %struct.archive* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %4, align 8
  store %struct.archive* %1, %struct.archive** %5, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %6, align 8
  %8 = load %struct.archive*, %struct.archive** %5, align 8
  %9 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %10 = call i32 @archive_write_header(%struct.archive* %8, %struct.archive_entry* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %16 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @safe_fprintf(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %25 = call i32 @list_item_verbose(%struct.bsdtar* %22, i32 %23, %struct.archive_entry* %24)
  %26 = load %struct.archive*, %struct.archive** %5, align 8
  %27 = call i8* @archive_error_string(%struct.archive* %26)
  %28 = call i32 (i32, i8*, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %31 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %36 = call i32 @archive_entry_pathname(%struct.archive_entry* %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i8* @archive_error_string(%struct.archive* %39)
  %41 = call i32 (i32, i8*, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %40)
  br label %47

42:                                               ; preds = %29
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = call i8* @archive_error_string(%struct.archive* %44)
  %46 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %34
  br label %48

48:                                               ; preds = %47, %19
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ARCHIVE_WARN, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %61 = call i64 @archive_entry_size(%struct.archive_entry* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %65 = load %struct.archive*, %struct.archive** %5, align 8
  %66 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %67 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %70 = call i64 @copy_file_data_block(%struct.bsdtar* %64, %struct.archive* %65, i32 %68, %struct.archive_entry* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %59, %55
  ret void
}

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @safe_fprintf(i32, i8*) #1

declare dso_local i32 @list_item_verbose(%struct.bsdtar*, i32, %struct.archive_entry*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i8*, ...) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @copy_file_data_block(%struct.bsdtar*, %struct.archive*, i32, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
