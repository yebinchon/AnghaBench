; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.archive_entry = type { i32 }

@HFL_EXTRA_DATA = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid volume number\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid extra field size\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported extra type (0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64)* @process_head_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_head_main(%struct.archive_read* %0, %struct.rar5* %1, %struct.archive_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.rar5*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.rar5* %1, %struct.rar5** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @HFL_EXTRA_DATA, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %23 = call i32 @read_var_sized(%struct.archive_read* %22, i64* %11, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %26, i32* %5, align 4
  br label %146

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %31 = call i32 @read_var_sized(%struct.archive_read* %30, i64* %14, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %34, i32* %5, align 4
  br label %146

35:                                               ; preds = %29
  %36 = load i64, i64* %14, align 8
  %37 = and i64 %36, 1
  %38 = icmp ugt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.rar5*, %struct.rar5** %7, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = and i64 %43, 4
  %45 = icmp ugt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.rar5*, %struct.rar5** %7, align 8
  %48 = getelementptr inbounds %struct.rar5, %struct.rar5* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %14, align 8
  %51 = and i64 %50, 2
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %35
  store i64 0, i64* %15, align 8
  %54 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %55 = call i32 @read_var_sized(%struct.archive_read* %54, i64* %15, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %58, i32* %5, align 4
  br label %146

59:                                               ; preds = %53
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @UINT_MAX, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %67 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %65, i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %68, i32* %5, align 4
  br label %146

69:                                               ; preds = %59
  %70 = load i64, i64* %15, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.rar5*, %struct.rar5** %7, align 8
  %73 = getelementptr inbounds %struct.rar5, %struct.rar5* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  br label %79

75:                                               ; preds = %35
  %76 = load %struct.rar5*, %struct.rar5** %7, align 8
  %77 = getelementptr inbounds %struct.rar5, %struct.rar5* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.rar5*, %struct.rar5** %7, align 8
  %81 = getelementptr inbounds %struct.rar5, %struct.rar5* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.rar5*, %struct.rar5** %7, align 8
  %87 = getelementptr inbounds %struct.rar5, %struct.rar5* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = zext i32 %89 to i64
  %91 = load %struct.rar5*, %struct.rar5** %7, align 8
  %92 = getelementptr inbounds %struct.rar5, %struct.rar5* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %97, i32* %5, align 4
  br label %146

98:                                               ; preds = %85, %79
  %99 = load i64, i64* %11, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %102, i32* %5, align 4
  br label %146

103:                                              ; preds = %98
  %104 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %105 = call i32 @read_var_sized(%struct.archive_read* %104, i64* %12, i32* null)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %108, i32* %5, align 4
  br label %146

109:                                              ; preds = %103
  %110 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %111 = call i32 @read_var_sized(%struct.archive_read* %110, i64* %13, i32* null)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %114, i32* %5, align 4
  br label %146

115:                                              ; preds = %109
  %116 = load i64, i64* %12, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %120 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %119, i32 0, i32 0
  %121 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %122 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %120, i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %123, i32* %5, align 4
  br label %146

124:                                              ; preds = %115
  %125 = load i64, i64* %13, align 8
  switch i64 %125, label %136 [
    i64 1, label %126
  ]

126:                                              ; preds = %124
  %127 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %128 = load %struct.rar5*, %struct.rar5** %7, align 8
  %129 = call i32 @process_main_locator_extra_block(%struct.archive_read* %127, %struct.rar5* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @ARCHIVE_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %146

135:                                              ; preds = %126
  br label %144

136:                                              ; preds = %124
  %137 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %138 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %137, i32 0, i32 0
  %139 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %140 = load i64, i64* %13, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %138, i32 %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %143, i32* %5, align 4
  br label %146

144:                                              ; preds = %135
  %145 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %136, %133, %118, %113, %107, %101, %96, %63, %57, %33, %25
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @process_main_locator_extra_block(%struct.archive_read*, %struct.rar5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
