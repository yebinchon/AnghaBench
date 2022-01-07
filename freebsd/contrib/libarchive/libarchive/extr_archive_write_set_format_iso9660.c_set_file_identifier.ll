; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_file_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_file_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.vdd = type { i64, i32 }
%struct.archive_string = type { i64, i8* }
%struct.isoent = type { i64, i64, i32 }

@A_CHAR = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Not Found %s `%s'.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@VDD_JOLIET = common dso_local global i64 0, align 8
@VDC_UCS2_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.archive_write*, %struct.vdd*, %struct.archive_string*, i8*, i32, i32)* @set_file_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_file_identifier(i8* %0, i32 %1, i32 %2, i32 %3, %struct.archive_write* %4, %struct.vdd* %5, %struct.archive_string* %6, i8* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.archive_write*, align 8
  %17 = alloca %struct.vdd*, align 8
  %18 = alloca %struct.archive_string*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca %struct.isoent*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store %struct.archive_write* %4, %struct.archive_write** %16, align 8
  store %struct.vdd* %5, %struct.vdd** %17, align 8
  store %struct.archive_string* %6, %struct.archive_string** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %28 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %10
  %32 = load i32, i32* %20, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %36 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 95
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @A_CHAR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %52 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @set_str_a_characters_bp(%struct.archive_write* %47, i8* %48, i32 %49, i32 %50, i8* %53, i32 %54)
  store i32 %55, i32* %26, align 4
  br label %66

56:                                               ; preds = %42
  %57 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %62 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @set_str_d_characters_bp(%struct.archive_write* %57, i8* %58, i32 %59, i32 %60, i8* %63, i32 %64)
  store i32 %65, i32* %26, align 4
  br label %66

66:                                               ; preds = %56, %46
  br label %180

67:                                               ; preds = %34, %31, %10
  %68 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %69 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %160

72:                                               ; preds = %67
  %73 = load %struct.archive_string*, %struct.archive_string** %18, align 8
  %74 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %24, align 8
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i8*, i8** %24, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %24, align 8
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.vdd*, %struct.vdd** %17, align 8
  %83 = getelementptr inbounds %struct.vdd, %struct.vdd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %24, align 8
  %86 = call %struct.isoent* @isoent_find_entry(i32 %84, i8* %85)
  store %struct.isoent* %86, %struct.isoent** %23, align 8
  %87 = load %struct.isoent*, %struct.isoent** %23, align 8
  %88 = icmp eq %struct.isoent* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %91 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %90, i32 0, i32 0
  %92 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %24, align 8
  %95 = call i32 @archive_set_error(i32* %91, i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %93, i8* %94)
  %96 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %96, i32* %11, align 4
  br label %182

97:                                               ; preds = %81
  %98 = load %struct.isoent*, %struct.isoent** %23, align 8
  %99 = getelementptr inbounds %struct.isoent, %struct.isoent* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.isoent*, %struct.isoent** %23, align 8
  %102 = getelementptr inbounds %struct.isoent, %struct.isoent* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %100, %103
  store i64 %104, i64* %25, align 8
  %105 = load %struct.vdd*, %struct.vdd** %17, align 8
  %106 = getelementptr inbounds %struct.vdd, %struct.vdd* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VDD_JOLIET, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = load i64, i64* %25, align 8
  %112 = icmp ugt i64 %111, 254
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i64 254, i64* %25, align 8
  br label %114

114:                                              ; preds = %113, %110
  br label %120

115:                                              ; preds = %97
  %116 = load i64, i64* %25, align 8
  %117 = icmp ugt i64 %116, 255
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i64 255, i64* %25, align 8
  br label %119

119:                                              ; preds = %118, %115
  br label %120

120:                                              ; preds = %119, %114
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %122 = load %struct.isoent*, %struct.isoent** %23, align 8
  %123 = getelementptr inbounds %struct.isoent, %struct.isoent* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %25, align 8
  %126 = call i32 @memcpy(i8* %121, i32 %124, i64 %125)
  %127 = load i64, i64* %25, align 8
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load %struct.vdd*, %struct.vdd** %17, align 8
  %130 = getelementptr inbounds %struct.vdd, %struct.vdd* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VDD_JOLIET, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %120
  %135 = load i64, i64* %25, align 8
  %136 = add i64 %135, 1
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i32, i32* @VDC_UCS2_DIRECT, align 4
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %134, %120
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* @A_CHAR, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @set_str_a_characters_bp(%struct.archive_write* %144, i8* %145, i32 %146, i32 %147, i8* %148, i32 %149)
  store i32 %150, i32* %26, align 4
  br label %159

151:                                              ; preds = %139
  %152 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @set_str_d_characters_bp(%struct.archive_write* %152, i8* %153, i32 %154, i32 %155, i8* %156, i32 %157)
  store i32 %158, i32* %26, align 4
  br label %159

159:                                              ; preds = %151, %143
  br label %179

160:                                              ; preds = %67
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* @A_CHAR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @set_str_a_characters_bp(%struct.archive_write* %165, i8* %166, i32 %167, i32 %168, i8* null, i32 %169)
  store i32 %170, i32* %26, align 4
  br label %178

171:                                              ; preds = %160
  %172 = load %struct.archive_write*, %struct.archive_write** %16, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @set_str_d_characters_bp(%struct.archive_write* %172, i8* %173, i32 %174, i32 %175, i8* null, i32 %176)
  store i32 %177, i32* %26, align 4
  br label %178

178:                                              ; preds = %171, %164
  br label %179

179:                                              ; preds = %178, %159
  br label %180

180:                                              ; preds = %179, %66
  %181 = load i32, i32* %26, align 4
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %180, %89
  %183 = load i32, i32* %11, align 4
  ret i32 %183
}

declare dso_local i32 @set_str_a_characters_bp(%struct.archive_write*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @set_str_d_characters_bp(%struct.archive_write*, i8*, i32, i32, i8*, i32) #1

declare dso_local %struct.isoent* @isoent_find_entry(i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
