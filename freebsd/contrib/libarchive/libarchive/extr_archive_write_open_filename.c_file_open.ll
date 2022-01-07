; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_filename.c_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_filename.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_file_data = type { i64, i32 }
%struct.stat = type { i32, i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't convert '%S' to MBS\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to open '%s'\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to open '%S'\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Couldn't stat '%s'\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Couldn't stat '%S'\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.write_file_data*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.write_file_data*
  store %struct.write_file_data* %12, %struct.write_file_data** %7, align 8
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_CLOEXEC, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %24 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %23, i32 0, i32 1
  %25 = call i64 @archive_mstring_get_mbs(%struct.archive* %22, i32* %24, i8** %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %2
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOMEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.archive*, %struct.archive** %4, align 8
  %33 = load i64, i64* @errno, align 8
  %34 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %32, i64 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %38 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %37, i32 0, i32 1
  %39 = call i64 @archive_mstring_get_wcs(%struct.archive* %36, i32* %38, i8** %9)
  %40 = load %struct.archive*, %struct.archive** %4, align 8
  %41 = load i64, i64* @errno, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %40, i64 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %35, %31
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %3, align 4
  br label %136

46:                                               ; preds = %2
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @open(i8* %47, i32 %48, i32 438)
  %50 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %51 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %53 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @__archive_ensure_cloexec_flag(i64 %54)
  %56 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %57 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %46
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.archive*, %struct.archive** %4, align 8
  %65 = load i64, i64* @errno, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %64, i64 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %73

68:                                               ; preds = %60
  %69 = load %struct.archive*, %struct.archive** %4, align 8
  %70 = load i64, i64* @errno, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %69, i64 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %74, i32* %3, align 4
  br label %136

75:                                               ; preds = %46
  %76 = load %struct.write_file_data*, %struct.write_file_data** %7, align 8
  %77 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @fstat(i64 %78, %struct.stat* %8)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.archive*, %struct.archive** %4, align 8
  %86 = load i64, i64* @errno, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %85, i64 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %94

89:                                               ; preds = %81
  %90 = load %struct.archive*, %struct.archive** %4, align 8
  %91 = load i64, i64* @errno, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %90, i64 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %95, i32* %3, align 4
  br label %136

96:                                               ; preds = %75
  %97 = load %struct.archive*, %struct.archive** %4, align 8
  %98 = call i64 @archive_write_get_bytes_in_last_block(%struct.archive* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @S_ISCHR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @S_ISBLK(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @S_ISFIFO(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %105, %100
  %116 = load %struct.archive*, %struct.archive** %4, align 8
  %117 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %116, i32 0)
  br label %121

118:                                              ; preds = %110
  %119 = load %struct.archive*, %struct.archive** %4, align 8
  %120 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %119, i32 1)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %96
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @S_ISREG(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.archive*, %struct.archive** %4, align 8
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @archive_write_set_skip_file(%struct.archive* %128, i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %94, %73, %44
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @archive_mstring_get_mbs(%struct.archive*, i32*, i8**) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, ...) #1

declare dso_local i64 @archive_mstring_get_wcs(%struct.archive*, i32*, i8**) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i64) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i64 @archive_write_get_bytes_in_last_block(%struct.archive*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @archive_write_set_skip_file(%struct.archive*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
