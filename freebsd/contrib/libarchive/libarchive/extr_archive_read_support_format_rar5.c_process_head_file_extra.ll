; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_file_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_file_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.rar5 = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64)* @process_head_file_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_head_file_extra(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.rar5* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %7, align 8
  store %struct.rar5* %2, %struct.rar5** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %81, %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  %19 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %20 = call i32 @read_var_sized(%struct.archive_read* %19, i64* %10, i64* %13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %23, i32* %5, align 4
  br label %90

24:                                               ; preds = %18
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @consume(%struct.archive_read* %29, i64 %30)
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %34, i32* %5, align 4
  br label %90

35:                                               ; preds = %24
  %36 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %37 = call i32 @read_var_sized(%struct.archive_read* %36, i64* %11, i64* %13)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %40, i32* %5, align 4
  br label %90

41:                                               ; preds = %35
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @consume(%struct.archive_read* %46, i64 %47)
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %51, i32* %5, align 4
  br label %90

52:                                               ; preds = %41
  %53 = load i64, i64* %11, align 8
  switch i64 %53, label %77 [
    i64 133, label %54
    i64 132, label %58
    i64 131, label %63
    i64 129, label %68
    i64 128, label %72
    i64 134, label %76
    i64 130, label %76
  ]

54:                                               ; preds = %52
  %55 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %56 = load %struct.rar5*, %struct.rar5** %8, align 8
  %57 = call i32 @parse_file_extra_hash(%struct.archive_read* %55, %struct.rar5* %56, i64* %9)
  store i32 %57, i32* %12, align 4
  br label %81

58:                                               ; preds = %52
  %59 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %60 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %61 = load %struct.rar5*, %struct.rar5** %8, align 8
  %62 = call i32 @parse_file_extra_htime(%struct.archive_read* %59, %struct.archive_entry* %60, %struct.rar5* %61, i64* %9)
  store i32 %62, i32* %12, align 4
  br label %81

63:                                               ; preds = %52
  %64 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %66 = load %struct.rar5*, %struct.rar5** %8, align 8
  %67 = call i32 @parse_file_extra_redir(%struct.archive_read* %64, %struct.archive_entry* %65, %struct.rar5* %66, i64* %9)
  store i32 %67, i32* %12, align 4
  br label %81

68:                                               ; preds = %52
  %69 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %71 = call i32 @parse_file_extra_owner(%struct.archive_read* %69, %struct.archive_entry* %70, i64* %9)
  store i32 %71, i32* %12, align 4
  br label %81

72:                                               ; preds = %52
  %73 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %74 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %75 = call i32 @parse_file_extra_version(%struct.archive_read* %73, %struct.archive_entry* %74, i64* %9)
  store i32 %75, i32* %12, align 4
  br label %81

76:                                               ; preds = %52, %52
  br label %77

77:                                               ; preds = %52, %76
  %78 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @consume(%struct.archive_read* %78, i64 %79)
  store i32 %80, i32* %5, align 4
  br label %90

81:                                               ; preds = %72, %68, %63, %58, %54
  br label %15

82:                                               ; preds = %15
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @ARCHIVE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %86, %77, %50, %39, %33, %22
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i64*) #1

declare dso_local i32 @consume(%struct.archive_read*, i64) #1

declare dso_local i32 @parse_file_extra_hash(%struct.archive_read*, %struct.rar5*, i64*) #1

declare dso_local i32 @parse_file_extra_htime(%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64*) #1

declare dso_local i32 @parse_file_extra_redir(%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64*) #1

declare dso_local i32 @parse_file_extra_owner(%struct.archive_read*, %struct.archive_entry*, i64*) #1

declare dso_local i32 @parse_file_extra_version(%struct.archive_read*, %struct.archive_entry*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
