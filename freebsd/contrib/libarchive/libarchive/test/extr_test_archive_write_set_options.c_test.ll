; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_options.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_options.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fubar:snafu\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unknown module name: `fubar'\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fubar:snafu=betcha\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"snafu\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Undefined option: `snafu'\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"snafu=betcha\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"iso9660:joliet\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Unknown module name: `iso9660'\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Undefined option: `joliet'\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"!joliet\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c",,\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c",joliet\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"joliet,\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"joliet,snafu\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"iso9660:snafu\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Undefined option: `iso9660:snafu'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %6, %struct.archive** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ARCHIVE_FAILED, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ARCHIVE_FAILED, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_write_add_filter_gzip(%struct.archive* %26)
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = call i32 @archive_write_set_format_iso9660(%struct.archive* %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = call i32 @should(%struct.archive* %31, i32 %32, i8* null)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = call i32 @should(%struct.archive* %34, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.archive*, %struct.archive** %3, align 8
  %38 = load i32, i32* @ARCHIVE_FAILED, align 4
  %39 = call i32 @should(%struct.archive* %37, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.archive*, %struct.archive** %3, align 8
  %41 = call i32 @archive_error_string(%struct.archive* %40)
  %42 = call i32 @assertEqualString(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load i32, i32* @ARCHIVE_FAILED, align 4
  %45 = call i32 @should(%struct.archive* %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_error_string(%struct.archive* %46)
  %48 = call i32 @assertEqualString(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = load i32, i32* @ARCHIVE_FAILED, align 4
  %51 = call i32 @should(%struct.archive* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_error_string(%struct.archive* %52)
  %54 = call i32 @assertEqualString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = load i32, i32* @ARCHIVE_FAILED, align 4
  %57 = call i32 @should(%struct.archive* %55, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %58 = load %struct.archive*, %struct.archive** %3, align 8
  %59 = call i32 @archive_error_string(%struct.archive* %58)
  %60 = call i32 @assertEqualString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @should(%struct.archive* %61, i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* %2, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %30
  %67 = load %struct.archive*, %struct.archive** %3, align 8
  %68 = call i32 @archive_error_string(%struct.archive* %67)
  %69 = call i32 @assertEqualString(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %30
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @should(%struct.archive* %71, i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.archive*, %struct.archive** %3, align 8
  %78 = call i32 @archive_error_string(%struct.archive* %77)
  %79 = call i32 @assertEqualString(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @should(%struct.archive* %81, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32, i32* %2, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = call i32 @archive_error_string(%struct.archive* %87)
  %89 = call i32 @assertEqualString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.archive*, %struct.archive** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @should(%struct.archive* %91, i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %94 = load i32, i32* %2, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_error_string(%struct.archive* %97)
  %99 = call i32 @assertEqualString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.archive*, %struct.archive** %3, align 8
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = call i32 @should(%struct.archive* %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %104 = load %struct.archive*, %struct.archive** %3, align 8
  %105 = load i32, i32* @ARCHIVE_OK, align 4
  %106 = call i32 @should(%struct.archive* %104, i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %107 = load %struct.archive*, %struct.archive** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @should(%struct.archive* %107, i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %110 = load i32, i32* %2, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load %struct.archive*, %struct.archive** %3, align 8
  %114 = call i32 @archive_error_string(%struct.archive* %113)
  %115 = call i32 @assertEqualString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %100
  %117 = load %struct.archive*, %struct.archive** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @should(%struct.archive* %117, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.archive*, %struct.archive** %3, align 8
  %124 = call i32 @archive_error_string(%struct.archive* %123)
  %125 = call i32 @assertEqualString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.archive*, %struct.archive** %3, align 8
  %128 = load i32, i32* @ARCHIVE_FAILED, align 4
  %129 = call i32 @should(%struct.archive* %127, i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %130 = load i32, i32* %2, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.archive*, %struct.archive** %3, align 8
  %134 = call i32 @archive_error_string(%struct.archive* %133)
  %135 = call i32 @assertEqualString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %134)
  br label %140

136:                                              ; preds = %126
  %137 = load %struct.archive*, %struct.archive** %3, align 8
  %138 = call i32 @archive_error_string(%struct.archive* %137)
  %139 = call i32 @assertEqualString(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.archive*, %struct.archive** %3, align 8
  %142 = load i32, i32* @ARCHIVE_FAILED, align 4
  %143 = call i32 @should(%struct.archive* %141, i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %144 = load i32, i32* %2, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.archive*, %struct.archive** %3, align 8
  %148 = call i32 @archive_error_string(%struct.archive* %147)
  %149 = call i32 @assertEqualString(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  br label %154

150:                                              ; preds = %140
  %151 = load %struct.archive*, %struct.archive** %3, align 8
  %152 = call i32 @archive_error_string(%struct.archive* %151)
  %153 = call i32 @assertEqualString(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.archive*, %struct.archive** %3, align 8
  %156 = call i32 @archive_write_free(%struct.archive* %155)
  ret void
}

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_add_filter_gzip(%struct.archive*) #1

declare dso_local i32 @archive_write_set_format_iso9660(%struct.archive*) #1

declare dso_local i32 @should(%struct.archive*, i32, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
