; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_pattern_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.match_list = type { i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_string = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, %struct.match_list*, i32, i8*, i32)* @add_pattern_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pattern_from_file(%struct.archive_match* %0, %struct.match_list* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_match*, align 8
  %8 = alloca %struct.match_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.archive*, align 8
  %13 = alloca %struct.archive_entry*, align 8
  %14 = alloca %struct.archive_string, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.archive_match* %0, %struct.archive_match** %7, align 8
  store %struct.match_list* %1, %struct.match_list** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %23, %struct.archive** %12, align 8
  %24 = load %struct.archive*, %struct.archive** %12, align 8
  %25 = icmp eq %struct.archive* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %28 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %27, i32 0, i32 0
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %6, align 4
  br label %213

32:                                               ; preds = %5
  %33 = load %struct.archive*, %struct.archive** %12, align 8
  %34 = call i32 @archive_read_support_format_raw(%struct.archive* %33)
  store i32 %34, i32* %18, align 4
  %35 = load %struct.archive*, %struct.archive** %12, align 8
  %36 = call i32 @archive_read_support_format_empty(%struct.archive* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %42 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %41, i32 0, i32 0
  %43 = load %struct.archive*, %struct.archive** %12, align 8
  %44 = call i32 @archive_copy_error(i32* %42, %struct.archive* %43)
  %45 = load %struct.archive*, %struct.archive** %12, align 8
  %46 = call i32 @archive_read_free(%struct.archive* %45)
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %6, align 4
  br label %213

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.archive*, %struct.archive** %12, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @archive_read_open_filename(%struct.archive* %52, i8* %53, i32 10240)
  store i32 %54, i32* %18, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.archive*, %struct.archive** %12, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @archive_read_open_filename_w(%struct.archive* %56, i8* %57, i32 10240)
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %65 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %64, i32 0, i32 0
  %66 = load %struct.archive*, %struct.archive** %12, align 8
  %67 = call i32 @archive_copy_error(i32* %65, %struct.archive* %66)
  %68 = load %struct.archive*, %struct.archive** %12, align 8
  %69 = call i32 @archive_read_free(%struct.archive* %68)
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %6, align 4
  br label %213

71:                                               ; preds = %59
  %72 = load %struct.archive*, %struct.archive** %12, align 8
  %73 = call i32 @archive_read_next_header(%struct.archive* %72, %struct.archive_entry** %13)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load %struct.archive*, %struct.archive** %12, align 8
  %79 = call i32 @archive_read_free(%struct.archive* %78)
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @ARCHIVE_EOF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %84, i32* %6, align 4
  br label %213

85:                                               ; preds = %77
  %86 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %87 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %86, i32 0, i32 0
  %88 = load %struct.archive*, %struct.archive** %12, align 8
  %89 = call i32 @archive_copy_error(i32* %87, %struct.archive* %88)
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %6, align 4
  br label %213

91:                                               ; preds = %71
  %92 = call i32 @archive_string_init(%struct.archive_string* %14)
  br label %93

93:                                               ; preds = %172, %91
  %94 = load %struct.archive*, %struct.archive** %12, align 8
  %95 = call i32 @archive_read_data_block(%struct.archive* %94, i8** %15, i64* %16, i32* %17)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* @ARCHIVE_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %173

98:                                               ; preds = %93
  %99 = load i8*, i8** %15, align 8
  store i8* %99, i8** %19, align 8
  br label %100

100:                                              ; preds = %171, %98
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %172

103:                                              ; preds = %100
  %104 = load i8*, i8** %19, align 8
  store i8* %104, i8** %20, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %105

105:                                              ; preds = %131, %103
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %16, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i8*, i8** %19, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %22, align 4
  br label %136

118:                                              ; preds = %112
  br label %131

119:                                              ; preds = %109
  %120 = load i8*, i8** %19, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %19, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119
  store i32 1, i32* %22, align 4
  br label %136

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i8*, i8** %19, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %19, align 8
  %134 = load i64, i64* %21, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %21, align 8
  br label %105

136:                                              ; preds = %129, %117, %105
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %20, align 8
  %141 = load i64, i64* %21, align 8
  %142 = call i32 @archive_strncat(%struct.archive_string* %14, i8* %140, i64 %141)
  br label %172

143:                                              ; preds = %136
  %144 = load i8*, i8** %19, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %19, align 8
  %146 = load i64, i64* %21, align 8
  %147 = add i64 %146, 1
  %148 = load i64, i64* %16, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %16, align 8
  %150 = load i8*, i8** %20, align 8
  %151 = load i64, i64* %21, align 8
  %152 = call i32 @archive_strncat(%struct.archive_string* %14, i8* %150, i64 %151)
  %153 = call i64 @archive_strlen(%struct.archive_string* %14)
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %143
  %156 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %157 = load %struct.match_list*, %struct.match_list** %8, align 8
  %158 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @add_pattern_mbs(%struct.archive_match* %156, %struct.match_list* %157, i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* @ARCHIVE_OK, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load %struct.archive*, %struct.archive** %12, align 8
  %166 = call i32 @archive_read_free(%struct.archive* %165)
  %167 = call i32 @archive_string_free(%struct.archive_string* %14)
  %168 = load i32, i32* %18, align 4
  store i32 %168, i32* %6, align 4
  br label %213

169:                                              ; preds = %155
  %170 = call i32 @archive_string_empty(%struct.archive_string* %14)
  br label %171

171:                                              ; preds = %169, %143
  br label %100

172:                                              ; preds = %139, %100
  br label %93

173:                                              ; preds = %93
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %179 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %178, i32 0, i32 0
  %180 = load %struct.archive*, %struct.archive** %12, align 8
  %181 = call i32 @archive_copy_error(i32* %179, %struct.archive* %180)
  %182 = load %struct.archive*, %struct.archive** %12, align 8
  %183 = call i32 @archive_read_free(%struct.archive* %182)
  %184 = call i32 @archive_string_free(%struct.archive_string* %14)
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %6, align 4
  br label %213

186:                                              ; preds = %173
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* @ARCHIVE_EOF, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %186
  %191 = call i64 @archive_strlen(%struct.archive_string* %14)
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load %struct.archive_match*, %struct.archive_match** %7, align 8
  %195 = load %struct.match_list*, %struct.match_list** %8, align 8
  %196 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %14, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @add_pattern_mbs(%struct.archive_match* %194, %struct.match_list* %195, i32 %197)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* @ARCHIVE_OK, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = load %struct.archive*, %struct.archive** %12, align 8
  %204 = call i32 @archive_read_free(%struct.archive* %203)
  %205 = call i32 @archive_string_free(%struct.archive_string* %14)
  %206 = load i32, i32* %18, align 4
  store i32 %206, i32* %6, align 4
  br label %213

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %190, %186
  %209 = load %struct.archive*, %struct.archive** %12, align 8
  %210 = call i32 @archive_read_free(%struct.archive* %209)
  %211 = call i32 @archive_string_free(%struct.archive_string* %14)
  %212 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %202, %177, %164, %85, %83, %63, %40, %26
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_empty(%struct.archive*) #1

declare dso_local i32 @archive_copy_error(i32*, %struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_open_filename_w(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i64) #1

declare dso_local i64 @archive_strlen(%struct.archive_string*) #1

declare dso_local i32 @add_pattern_mbs(%struct.archive_match*, %struct.match_list*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @archive_string_empty(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
