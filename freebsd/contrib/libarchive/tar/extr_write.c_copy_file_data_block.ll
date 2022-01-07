; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_copy_file_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_copy_file_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i8*, i64 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%s: Truncated write; file may have grown while being archived.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsdtar*, %struct.archive*, %struct.archive*, %struct.archive_entry*)* @copy_file_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_file_data_block(%struct.bsdtar* %0, %struct.archive* %1, %struct.archive* %2, %struct.archive_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bsdtar*, align 8
  %7 = alloca %struct.archive*, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %6, align 8
  store %struct.archive* %1, %struct.archive** %7, align 8
  store %struct.archive* %2, %struct.archive** %8, align 8
  store %struct.archive_entry* %3, %struct.archive_entry** %9, align 8
  store i64 0, i64* %13, align 8
  store i8* null, i8** %14, align 8
  br label %19

19:                                               ; preds = %114, %4
  %20 = load %struct.archive*, %struct.archive** %8, align 8
  %21 = call i32 @archive_read_data_block(%struct.archive* %20, i8** %15, i64* %10, i64* %12)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  %25 = call i64 (...) @need_report()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.bsdtar*, %struct.bsdtar** %6, align 8
  %29 = load %struct.archive*, %struct.archive** %7, align 8
  %30 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @report_write(%struct.bsdtar* %28, %struct.archive* %29, %struct.archive_entry* %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %17, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.bsdtar*, %struct.bsdtar** %6, align 8
  %45 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.bsdtar*, %struct.bsdtar** %6, align 8
  %49 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memset(i8* %47, i32 0, i64 %50)
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i64, i64* %17, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %53
  %57 = load i64, i64* %17, align 8
  %58 = load %struct.bsdtar*, %struct.bsdtar** %6, align 8
  %59 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.bsdtar*, %struct.bsdtar** %6, align 8
  %64 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %18, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load i64, i64* %17, align 8
  store i64 %67, i64* %18, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.archive*, %struct.archive** %7, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i64, i64* %18, align 8
  %72 = call i64 @archive_write_data(%struct.archive* %69, i8* %70, i64 %71)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.archive*, %struct.archive** %7, align 8
  %77 = call i32 @archive_error_string(%struct.archive* %76)
  %78 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 -1, i32* %5, align 4
  br label %129

79:                                               ; preds = %68
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %18, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %85 = call i32 @archive_entry_pathname(%struct.archive_entry* %84)
  %86 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 0, i32* %5, align 4
  br label %129

87:                                               ; preds = %79
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %17, align 8
  %93 = sub nsw i64 %92, %91
  store i64 %93, i64* %17, align 8
  br label %53

94:                                               ; preds = %53
  br label %95

95:                                               ; preds = %94, %33
  %96 = load %struct.archive*, %struct.archive** %7, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @archive_write_data(%struct.archive* %96, i8* %97, i64 %98)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.archive*, %struct.archive** %7, align 8
  %104 = call i32 @archive_error_string(%struct.archive* %103)
  %105 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %104)
  store i32 -1, i32* %5, align 4
  br label %129

106:                                              ; preds = %95
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %112 = call i32 @archive_entry_pathname(%struct.archive_entry* %111)
  %113 = call i32 @lafe_warnc(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 0, i32* %5, align 4
  br label %129

114:                                              ; preds = %106
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %13, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %13, align 8
  br label %19

118:                                              ; preds = %19
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @ARCHIVE_WARN, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.archive*, %struct.archive** %7, align 8
  %124 = call i32 @archive_errno(%struct.archive* %123)
  %125 = load %struct.archive*, %struct.archive** %7, align 8
  %126 = call i32 @archive_error_string(%struct.archive* %125)
  %127 = call i32 @lafe_warnc(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %126)
  store i32 -1, i32* %5, align 4
  br label %129

128:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %122, %110, %102, %83, %75
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i64 @need_report(...) #1

declare dso_local i32 @report_write(%struct.bsdtar*, %struct.archive*, %struct.archive_entry*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @archive_write_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
