; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_append_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_append_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@OPTFLAG_INTERACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"copy '%s'\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsdtar*, %struct.archive*, %struct.archive*)* @append_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_archive(%struct.bsdtar* %0, %struct.archive* %1, %struct.archive* %2) #0 {
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %4, align 8
  store %struct.archive* %1, %struct.archive** %5, align 8
  store %struct.archive* %2, %struct.archive** %6, align 8
  br label %9

9:                                                ; preds = %126, %34, %21, %3
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  %11 = load %struct.archive*, %struct.archive** %6, align 8
  %12 = call i32 @archive_read_next_header(%struct.archive* %11, %struct.archive_entry** %7)
  store i32 %12, i32* %8, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %127

14:                                               ; preds = %9
  %15 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %16 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %19 = call i64 @archive_match_excluded(i32 %17, %struct.archive_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %9

22:                                               ; preds = %14
  %23 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OPTFLAG_INTERACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %31 = call i32 @archive_entry_pathname(%struct.archive_entry* %30)
  %32 = call i32 @yes(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %9

35:                                               ; preds = %29, %22
  %36 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %37 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @safe_fprintf(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %46 = call i32 @list_item_verbose(%struct.bsdtar* %43, i32 %44, %struct.archive_entry* %45)
  br label %58

47:                                               ; preds = %35
  %48 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %49 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %55 = call i32 @archive_entry_pathname(%struct.archive_entry* %54)
  %56 = call i32 (i32, i8*, ...) @safe_fprintf(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %40
  %59 = call i64 (...) @need_report()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %63 = load %struct.archive*, %struct.archive** %5, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %65 = call i32 @report_write(%struct.bsdtar* %62, %struct.archive* %63, %struct.archive_entry* %64, i32 0)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.archive*, %struct.archive** %5, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %69 = call i32 @archive_write_header(%struct.archive* %67, %struct.archive_entry* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %75 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %80 = call i32 @archive_entry_pathname(%struct.archive_entry* %79)
  %81 = load %struct.archive*, %struct.archive** %5, align 8
  %82 = call i8* @archive_error_string(%struct.archive* %81)
  %83 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %80, i8* %82)
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.archive*, %struct.archive** %5, align 8
  %87 = call i8* @archive_error_string(%struct.archive* %86)
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ARCHIVE_FATAL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ARCHIVE_WARN, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %96
  %101 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %102 = call i64 @archive_entry_size(%struct.archive_entry* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.archive*, %struct.archive** %6, align 8
  %106 = call i32 @archive_read_data_skip(%struct.archive* %105)
  br label %117

107:                                              ; preds = %100
  %108 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %109 = load %struct.archive*, %struct.archive** %5, align 8
  %110 = load %struct.archive*, %struct.archive** %6, align 8
  %111 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %112 = call i64 @copy_file_data_block(%struct.bsdtar* %108, %struct.archive* %109, %struct.archive* %110, %struct.archive_entry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 @exit(i32 1) #3
  unreachable

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %96
  %119 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %120 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %118
  br label %9

127:                                              ; preds = %9
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @ARCHIVE_EOF, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  br label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  ret i32 %136
}

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_match_excluded(i32, %struct.archive_entry*) #1

declare dso_local i32 @yes(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @safe_fprintf(i32, i8*, ...) #1

declare dso_local i32 @list_item_verbose(%struct.bsdtar*, i32, %struct.archive_entry*) #1

declare dso_local i64 @need_report(...) #1

declare dso_local i32 @report_write(%struct.bsdtar*, %struct.archive*, %struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i32, i8*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i64 @copy_file_data_block(%struct.bsdtar*, %struct.archive*, %struct.archive*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
