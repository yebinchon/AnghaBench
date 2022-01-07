; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_read_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_read_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_ERR_BAD_VERSION_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't read first line of format file '%s'\00", align 1
@SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"layout \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sharded \00", align 1
@SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"addressing \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [52 x i8] c"'%s' contains invalid filesystem format option '%s'\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"'%s' specifies logical addressing for a non-sharded repository\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32*, i32*, i64*, i8*, i32*)* @read_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @read_format(i32* %0, i32* %1, i64* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call %struct.TYPE_17__* @svn_stringbuf_from_file2(%struct.TYPE_16__** %14, i8* %18, i32* %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %12, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @APR_STATUS_IS_ENOENT(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %31 = call i32 @svn_error_clear(%struct.TYPE_17__* %30)
  %32 = load i32*, i32** %7, align 8
  store i32 1, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* @FALSE, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %6, align 8
  br label %198

37:                                               ; preds = %23, %5
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = call i32 @SVN_ERR(%struct.TYPE_17__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_16__* %40, i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call %struct.TYPE_17__* @svn_stream_readline(i32* %43, %struct.TYPE_16__** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %16, i32* %44)
  %46 = call i32 @SVN_ERR(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load i64, i64* %16, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_dirent_local_style(i8* %57, i32* %58)
  %60 = call %struct.TYPE_17__* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %55, i32* null, i32 %56, i32 %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %6, align 8
  br label %198

61:                                               ; preds = %51, %37
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call %struct.TYPE_17__* @check_format_file_buffer_numeric(i64 %64, i32 0, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(%struct.TYPE_17__* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_17__* @svn_cstring_atoi(i32* %69, i64 %72)
  %74 = call i32 @SVN_ERR(%struct.TYPE_17__* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_17__* @check_format(i32 %76)
  %78 = call i32 @SVN_ERR(%struct.TYPE_17__* %77)
  %79 = load i32*, i32** %8, align 8
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* @FALSE, align 8
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %167, %157, %123, %114, %61
  %83 = load i64, i64* %16, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %181

86:                                               ; preds = %82
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call %struct.TYPE_17__* @svn_stream_readline(i32* %87, %struct.TYPE_16__** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %16, i32* %88)
  %90 = call i32 @SVN_ERR(%struct.TYPE_17__* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %181

96:                                               ; preds = %86
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @strncmp(i64 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %101
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 7
  %112 = call i64 @strcmp(i64 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32*, i32** %8, align 8
  store i32 0, i32* %115, align 4
  br label %82

116:                                              ; preds = %107
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 7
  %121 = call i64 @strncmp(i64 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call %struct.TYPE_17__* @check_format_file_buffer_numeric(i64 %126, i32 15, i8* %127, i32* %128)
  %130 = call i32 @SVN_ERR(%struct.TYPE_17__* %129)
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 15
  %136 = call %struct.TYPE_17__* @svn_cstring_atoi(i32* %131, i64 %135)
  %137 = call i32 @SVN_ERR(%struct.TYPE_17__* %136)
  br label %82

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %101, %96
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %139
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @strncmp(i64 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %144
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 11
  %155 = call i64 @strcmp(i64 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i64, i64* @FALSE, align 8
  %159 = load i64*, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  br label %82

160:                                              ; preds = %150
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 11
  %165 = call i64 @strcmp(i64 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i64, i64* @TRUE, align 8
  %169 = load i64*, i64** %9, align 8
  store i64 %168, i64* %169, align 8
  br label %82

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %144, %139
  %172 = load i32, i32* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 4
  %173 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %174 = load i8*, i8** %10, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @svn_dirent_local_style(i8* %174, i32* %175)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call %struct.TYPE_17__* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %172, i32* null, i32 %173, i32 %176, i64 %179)
  store %struct.TYPE_17__* %180, %struct.TYPE_17__** %6, align 8
  br label %198

181:                                              ; preds = %95, %82
  %182 = load i64*, i64** %9, align 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 4
  %191 = call i32 @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0))
  %192 = load i8*, i8** %10, align 8
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 @svn_dirent_local_style(i8* %192, i32* %193)
  %195 = call %struct.TYPE_17__* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %190, i32* null, i32 %191, i32 %194)
  store %struct.TYPE_17__* %195, %struct.TYPE_17__** %6, align 8
  br label %198

196:                                              ; preds = %185, %181
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %6, align 8
  br label %198

198:                                              ; preds = %196, %189, %171, %54, %29
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %199
}

declare dso_local %struct.TYPE_17__* @svn_stringbuf_from_file2(%struct.TYPE_16__**, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_17__*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_stream_readline(i32*, %struct.TYPE_16__**, i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @check_format_file_buffer_numeric(i64, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @svn_cstring_atoi(i32*, i64) #1

declare dso_local %struct.TYPE_17__* @check_format(i32) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
