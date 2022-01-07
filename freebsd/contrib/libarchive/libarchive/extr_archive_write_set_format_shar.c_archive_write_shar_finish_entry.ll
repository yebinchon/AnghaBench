; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.shar = type { i64, %struct.TYPE_6__, i32*, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"`\0Aend\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SHAR_END\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"chmod %o \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"chown \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"chflags %s \00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_shar_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_shar_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.shar*, align 8
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.shar*
  store %struct.shar* %12, %struct.shar** %7, align 8
  %13 = load %struct.shar*, %struct.shar** %7, align 8
  %14 = getelementptr inbounds %struct.shar, %struct.shar* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %194

18:                                               ; preds = %1
  %19 = load %struct.shar*, %struct.shar** %7, align 8
  %20 = getelementptr inbounds %struct.shar, %struct.shar* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %140

23:                                               ; preds = %18
  %24 = load %struct.shar*, %struct.shar** %7, align 8
  %25 = getelementptr inbounds %struct.shar, %struct.shar* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.shar*, %struct.shar** %7, align 8
  %30 = getelementptr inbounds %struct.shar, %struct.shar* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %35 = load %struct.shar*, %struct.shar** %7, align 8
  %36 = load %struct.shar*, %struct.shar** %7, align 8
  %37 = getelementptr inbounds %struct.shar, %struct.shar* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.shar*, %struct.shar** %7, align 8
  %40 = getelementptr inbounds %struct.shar, %struct.shar* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @uuencode_line(%struct.archive_write* %34, %struct.shar* %35, i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.shar*, %struct.shar** %7, align 8
  %45 = getelementptr inbounds %struct.shar, %struct.shar* %44, i32 0, i32 1
  %46 = call i32 @archive_strcat(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.shar*, %struct.shar** %7, align 8
  %48 = getelementptr inbounds %struct.shar, %struct.shar* %47, i32 0, i32 1
  %49 = call i32 @archive_strcat(%struct.TYPE_6__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %43, %23
  %51 = load %struct.shar*, %struct.shar** %7, align 8
  %52 = getelementptr inbounds %struct.shar, %struct.shar* %51, i32 0, i32 1
  %53 = load %struct.shar*, %struct.shar** %7, align 8
  %54 = getelementptr inbounds %struct.shar, %struct.shar* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @archive_entry_mode(i32* %55)
  %57 = and i32 %56, 4095
  %58 = call i32 (%struct.TYPE_6__*, i8*, ...) @archive_string_sprintf(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.shar*, %struct.shar** %7, align 8
  %60 = getelementptr inbounds %struct.shar, %struct.shar* %59, i32 0, i32 1
  %61 = load %struct.shar*, %struct.shar** %7, align 8
  %62 = getelementptr inbounds %struct.shar, %struct.shar* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @archive_entry_pathname(i32* %63)
  %65 = call i32 @shar_quote(%struct.TYPE_6__* %60, i8* %64, i32 1)
  %66 = load %struct.shar*, %struct.shar** %7, align 8
  %67 = getelementptr inbounds %struct.shar, %struct.shar* %66, i32 0, i32 1
  %68 = call i32 @archive_strcat(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.shar*, %struct.shar** %7, align 8
  %70 = getelementptr inbounds %struct.shar, %struct.shar* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @archive_entry_uname(i32* %71)
  store i8* %72, i8** %6, align 8
  %73 = load %struct.shar*, %struct.shar** %7, align 8
  %74 = getelementptr inbounds %struct.shar, %struct.shar* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @archive_entry_gname(i32* %75)
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %50
  %80 = load i8*, i8** %4, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %118

82:                                               ; preds = %79, %50
  %83 = load %struct.shar*, %struct.shar** %7, align 8
  %84 = getelementptr inbounds %struct.shar, %struct.shar* %83, i32 0, i32 1
  %85 = call i32 @archive_strcat(%struct.TYPE_6__* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i8*, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.shar*, %struct.shar** %7, align 8
  %90 = getelementptr inbounds %struct.shar, %struct.shar* %89, i32 0, i32 1
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @shar_quote(%struct.TYPE_6__* %90, i8* %91, i32 1)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.shar*, %struct.shar** %7, align 8
  %98 = getelementptr inbounds %struct.shar, %struct.shar* %97, i32 0, i32 1
  %99 = call i32 @archive_strcat(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.shar*, %struct.shar** %7, align 8
  %101 = getelementptr inbounds %struct.shar, %struct.shar* %100, i32 0, i32 1
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @shar_quote(%struct.TYPE_6__* %101, i8* %102, i32 1)
  br label %104

104:                                              ; preds = %96, %93
  %105 = load %struct.shar*, %struct.shar** %7, align 8
  %106 = getelementptr inbounds %struct.shar, %struct.shar* %105, i32 0, i32 1
  %107 = call i32 @archive_strcat(%struct.TYPE_6__* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %108 = load %struct.shar*, %struct.shar** %7, align 8
  %109 = getelementptr inbounds %struct.shar, %struct.shar* %108, i32 0, i32 1
  %110 = load %struct.shar*, %struct.shar** %7, align 8
  %111 = getelementptr inbounds %struct.shar, %struct.shar* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i8* @archive_entry_pathname(i32* %112)
  %114 = call i32 @shar_quote(%struct.TYPE_6__* %109, i8* %113, i32 1)
  %115 = load %struct.shar*, %struct.shar** %7, align 8
  %116 = getelementptr inbounds %struct.shar, %struct.shar* %115, i32 0, i32 1
  %117 = call i32 @archive_strcat(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %104, %79
  %119 = load %struct.shar*, %struct.shar** %7, align 8
  %120 = getelementptr inbounds %struct.shar, %struct.shar* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i8* @archive_entry_fflags_text(i32* %121)
  store i8* %122, i8** %5, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = load %struct.shar*, %struct.shar** %7, align 8
  %126 = getelementptr inbounds %struct.shar, %struct.shar* %125, i32 0, i32 1
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 (%struct.TYPE_6__*, i8*, ...) @archive_string_sprintf(%struct.TYPE_6__* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %127)
  %129 = load %struct.shar*, %struct.shar** %7, align 8
  %130 = getelementptr inbounds %struct.shar, %struct.shar* %129, i32 0, i32 1
  %131 = load %struct.shar*, %struct.shar** %7, align 8
  %132 = getelementptr inbounds %struct.shar, %struct.shar* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i8* @archive_entry_pathname(i32* %133)
  %135 = call i32 @shar_quote(%struct.TYPE_6__* %130, i8* %134, i32 1)
  %136 = load %struct.shar*, %struct.shar** %7, align 8
  %137 = getelementptr inbounds %struct.shar, %struct.shar* %136, i32 0, i32 1
  %138 = call i32 @archive_strcat(%struct.TYPE_6__* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %124, %118
  br label %159

140:                                              ; preds = %18
  %141 = load %struct.shar*, %struct.shar** %7, align 8
  %142 = getelementptr inbounds %struct.shar, %struct.shar* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load %struct.shar*, %struct.shar** %7, align 8
  %147 = getelementptr inbounds %struct.shar, %struct.shar* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load %struct.shar*, %struct.shar** %7, align 8
  %152 = getelementptr inbounds %struct.shar, %struct.shar* %151, i32 0, i32 1
  %153 = call i32 @archive_strappend_char(%struct.TYPE_6__* %152, i8 signext 10)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.shar*, %struct.shar** %7, align 8
  %156 = getelementptr inbounds %struct.shar, %struct.shar* %155, i32 0, i32 1
  %157 = call i32 @archive_strcat(%struct.TYPE_6__* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %140
  br label %159

159:                                              ; preds = %158, %139
  %160 = load %struct.shar*, %struct.shar** %7, align 8
  %161 = getelementptr inbounds %struct.shar, %struct.shar* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @archive_entry_free(i32* %162)
  %164 = load %struct.shar*, %struct.shar** %7, align 8
  %165 = getelementptr inbounds %struct.shar, %struct.shar* %164, i32 0, i32 2
  store i32* null, i32** %165, align 8
  %166 = load %struct.shar*, %struct.shar** %7, align 8
  %167 = getelementptr inbounds %struct.shar, %struct.shar* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %169, 65536
  br i1 %170, label %171, label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %172, i32* %2, align 4
  br label %194

173:                                              ; preds = %159
  %174 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %175 = load %struct.shar*, %struct.shar** %7, align 8
  %176 = getelementptr inbounds %struct.shar, %struct.shar* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.shar*, %struct.shar** %7, align 8
  %180 = getelementptr inbounds %struct.shar, %struct.shar* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @__archive_write_output(%struct.archive_write* %174, i32 %178, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @ARCHIVE_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %173
  %188 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %188, i32* %2, align 4
  br label %194

189:                                              ; preds = %173
  %190 = load %struct.shar*, %struct.shar** %7, align 8
  %191 = getelementptr inbounds %struct.shar, %struct.shar* %190, i32 0, i32 1
  %192 = call i32 @archive_string_empty(%struct.TYPE_6__* %191)
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %189, %187, %171, %17
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @uuencode_line(%struct.archive_write*, %struct.shar*, i32, i64) #1

declare dso_local i32 @archive_strcat(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @archive_string_sprintf(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @archive_entry_mode(i32*) #1

declare dso_local i32 @shar_quote(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i8* @archive_entry_pathname(i32*) #1

declare dso_local i8* @archive_entry_uname(i32*) #1

declare dso_local i8* @archive_entry_gname(i32*) #1

declare dso_local i8* @archive_entry_fflags_text(i32*) #1

declare dso_local i32 @archive_strappend_char(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @archive_entry_free(i32*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
