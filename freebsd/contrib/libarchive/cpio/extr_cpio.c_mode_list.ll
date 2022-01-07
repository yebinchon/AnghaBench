; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32, i64, i32, i32, i32, i32* }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Couldn't allocate archive object\00", align 1
@passphrase_callback = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%lu %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpio*)* @mode_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_list(%struct.cpio* %0) #0 {
  %2 = alloca %struct.cpio*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %2, align 8
  %7 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %7, %struct.archive** %3, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = icmp eq %struct.archive* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = call i32 @archive_read_support_filter_all(%struct.archive* %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = call i32 @archive_read_support_format_all(%struct.archive* %15)
  %17 = load %struct.cpio*, %struct.cpio** %2, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = load %struct.cpio*, %struct.cpio** %2, align 8
  %24 = getelementptr inbounds %struct.cpio, %struct.cpio* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @archive_read_add_passphrase(%struct.archive* %22, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %12
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = load %struct.cpio*, %struct.cpio** %2, align 8
  %30 = call i32 @archive_read_set_passphrase_callback(%struct.archive* %28, %struct.cpio* %29, i32* @passphrase_callback)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_error_string(%struct.archive* %36)
  %38 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.archive*, %struct.archive** %3, align 8
  %41 = load %struct.cpio*, %struct.cpio** %2, align 8
  %42 = getelementptr inbounds %struct.cpio, %struct.cpio* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cpio*, %struct.cpio** %2, align 8
  %45 = getelementptr inbounds %struct.cpio, %struct.cpio* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @archive_read_open_filename(%struct.archive* %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = call i32 @archive_errno(%struct.archive* %50)
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_error_string(%struct.archive* %52)
  %54 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  br label %56

56:                                               ; preds = %95, %80, %55
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call i32 @archive_read_next_header(%struct.archive* %57, %struct.archive_entry** %4)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ARCHIVE_EOF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %96

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.archive*, %struct.archive** %3, align 8
  %69 = call i32 @archive_errno(%struct.archive* %68)
  %70 = load %struct.archive*, %struct.archive** %3, align 8
  %71 = call i32 @archive_error_string(%struct.archive* %70)
  %72 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %63
  %74 = load %struct.cpio*, %struct.cpio** %2, align 8
  %75 = getelementptr inbounds %struct.cpio, %struct.cpio* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %78 = call i64 @archive_match_path_excluded(i32 %76, %struct.archive_entry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %56

81:                                               ; preds = %73
  %82 = load %struct.cpio*, %struct.cpio** %2, align 8
  %83 = getelementptr inbounds %struct.cpio, %struct.cpio* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.cpio*, %struct.cpio** %2, align 8
  %88 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %89 = call i32 @list_item_verbose(%struct.cpio* %87, %struct.archive_entry* %88)
  br label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @stdout, align 4
  %92 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %93 = call i8* @archive_entry_pathname(%struct.archive_entry* %92)
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %86
  br label %56

96:                                               ; preds = %62
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_read_close(%struct.archive* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.archive*, %struct.archive** %3, align 8
  %104 = call i32 @archive_error_string(%struct.archive* %103)
  %105 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.cpio*, %struct.cpio** %2, align 8
  %108 = getelementptr inbounds %struct.cpio, %struct.cpio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  %112 = load %struct.archive*, %struct.archive** %3, align 8
  %113 = call i32 @archive_filter_bytes(%struct.archive* %112, i32 0)
  %114 = add nsw i32 %113, 511
  %115 = sdiv i32 %114, 512
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %118, i8* %122)
  br label %124

124:                                              ; preds = %111, %106
  %125 = load %struct.archive*, %struct.archive** %3, align 8
  %126 = call i32 @archive_read_free(%struct.archive* %125)
  %127 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_add_passphrase(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_passphrase_callback(%struct.archive*, %struct.cpio*, i32*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_read_open_filename(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_match_path_excluded(i32, %struct.archive_entry*) #1

declare dso_local i32 @list_item_verbose(%struct.cpio*, %struct.archive_entry*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_filter_bytes(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
