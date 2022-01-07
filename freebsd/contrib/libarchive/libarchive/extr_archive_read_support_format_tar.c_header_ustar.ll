; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_ustar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_ustar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32, i32, i32, %struct.archive_string }
%struct.archive_string = type { i8* }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_ustar = type { i8*, i32, i32, i32, i32, i64*, i64* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Pathname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Uname\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Gname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*)* @header_ustar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_ustar(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_entry_header_ustar*, align 8
  %11 = alloca %struct.archive_string*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %16, %struct.archive_entry_header_ustar** %10, align 8
  %17 = load %struct.tar*, %struct.tar** %7, align 8
  %18 = getelementptr inbounds %struct.tar, %struct.tar* %17, i32 0, i32 3
  store %struct.archive_string* %18, %struct.archive_string** %11, align 8
  %19 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %20 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %19, i32 0, i32 6
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %27 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %28 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %27, i32 0, i32 6
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @archive_strncpy(%struct.archive_string* %26, i64* %29, i32 8)
  %31 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %32 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %35 = call i32 @archive_strlen(%struct.archive_string* %34)
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %44 = call i32 @archive_strappend_char(%struct.archive_string* %43, i8 signext 47)
  br label %45

45:                                               ; preds = %42, %25
  %46 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %47 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %48 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %47, i32 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @archive_strncat(%struct.archive_string* %46, i64* %49, i32 8)
  br label %57

51:                                               ; preds = %4
  %52 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %53 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %54 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %53, i32 0, i32 5
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @archive_strncpy(%struct.archive_string* %52, i64* %55, i32 8)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %59 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %60 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.archive_string*, %struct.archive_string** %11, align 8
  %63 = call i32 @archive_strlen(%struct.archive_string* %62)
  %64 = load %struct.tar*, %struct.tar** %7, align 8
  %65 = getelementptr inbounds %struct.tar, %struct.tar* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %58, i8* %61, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %57
  %70 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %71 = load %struct.tar*, %struct.tar** %7, align 8
  %72 = getelementptr inbounds %struct.tar, %struct.tar* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @set_conversion_failed_error(%struct.archive_read* %70, i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ARCHIVE_FATAL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %182

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %57
  %82 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %83 = load %struct.tar*, %struct.tar** %7, align 8
  %84 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @header_common(%struct.archive_read* %82, %struct.tar* %83, %struct.archive_entry* %84, i8* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ARCHIVE_FATAL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %182

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %100 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %101 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tar*, %struct.tar** %7, align 8
  %104 = getelementptr inbounds %struct.tar, %struct.tar* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @archive_entry_copy_uname_l(%struct.archive_entry* %99, i32 %102, i32 4, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %98
  %109 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %110 = load %struct.tar*, %struct.tar** %7, align 8
  %111 = getelementptr inbounds %struct.tar, %struct.tar* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @set_conversion_failed_error(%struct.archive_read* %109, i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @ARCHIVE_FATAL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %182

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %98
  %121 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %122 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %123 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tar*, %struct.tar** %7, align 8
  %126 = getelementptr inbounds %struct.tar, %struct.tar* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @archive_entry_copy_gname_l(%struct.archive_entry* %121, i32 %124, i32 4, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %120
  %131 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %132 = load %struct.tar*, %struct.tar** %7, align 8
  %133 = getelementptr inbounds %struct.tar, %struct.tar* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @set_conversion_failed_error(%struct.archive_read* %131, i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @ARCHIVE_FATAL, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %182

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %120
  %143 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %144 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 51
  br i1 %149, label %158, label %150

150:                                              ; preds = %142
  %151 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %152 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 52
  br i1 %157, label %158, label %173

158:                                              ; preds = %150, %142
  %159 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %160 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %161 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @tar_atol(i32 %162, i32 4)
  %164 = trunc i64 %163 to i32
  %165 = call i32 @archive_entry_set_rdevmajor(%struct.archive_entry* %159, i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %167 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %168 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @tar_atol(i32 %169, i32 4)
  %171 = trunc i64 %170 to i32
  %172 = call i32 @archive_entry_set_rdevminor(%struct.archive_entry* %166, i32 %171)
  br label %173

173:                                              ; preds = %158, %150
  %174 = load %struct.tar*, %struct.tar** %7, align 8
  %175 = getelementptr inbounds %struct.tar, %struct.tar* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 0, %176
  %178 = and i32 511, %177
  %179 = load %struct.tar*, %struct.tar** %7, align 8
  %180 = getelementptr inbounds %struct.tar, %struct.tar* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %173, %139, %117, %90, %78
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @archive_strncpy(%struct.archive_string*, i64*, i32) #1

declare dso_local i32 @archive_strlen(%struct.archive_string*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i64*, i32) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i32, i32) #1

declare dso_local i32 @set_conversion_failed_error(%struct.archive_read*, i32, i8*) #1

declare dso_local i32 @header_common(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_copy_uname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i64 @archive_entry_copy_gname_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_rdevmajor(%struct.archive_entry*, i32) #1

declare dso_local i64 @tar_atol(i32, i32) #1

declare dso_local i32 @archive_entry_set_rdevminor(%struct.archive_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
