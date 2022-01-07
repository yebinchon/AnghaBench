; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@program_name = common dso_local global i8* null, align 8
@BZflag = common dso_local global i32 0, align 4
@eolbyte = common dso_local global i8 0, align 1
@filename_mask = common dso_local global i32 0, align 4
@off_t = common dso_local global i32 0, align 4
@max_count = common dso_local global i64 0, align 8
@out_before = common dso_local global i32 0, align 4
@out_after = common dso_local global i32 0, align 4
@only_matching = common dso_local global i32 0, align 4
@close_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"GREP_OPTIONS\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@READ_DEVICES = common dso_local global i32 0, align 4
@devices = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@SKIP_DEVICES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"unknown devices method\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"egrep\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fgrep\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@WITHOUT_MATCH_BINARY_FILES = common dso_local global i32 0, align 4
@binary_files = common dso_local global i32 0, align 4
@Zflag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Cannot mix -Z and -J.\0A\00", align 1
@show_version = common dso_local global i32 0, align 4
@TEXT_BINARY_FILES = common dso_local global i32 0, align 4
@out_byte = common dso_local global i32 0, align 4
@count_matches = common dso_local global i32 0, align 4
@READ_DIRECTORIES = common dso_local global i32 0, align 4
@directories = common dso_local global i32 0, align 4
@SKIP_DIRECTORIES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"recurse\00", align 1
@RECURSE_DIRECTORIES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"unknown directories method\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@no_filenames = common dso_local global i32 0, align 4
@match_icase = common dso_local global i32 0, align 4
@list_files = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"invalid max count\00", align 1
@out_line = common dso_local global i32 0, align 4
@exit_on_match = common dso_local global i32 0, align 4
@suppress_errors = common dso_local global i32 0, align 4
@out_invert = common dso_local global i32 0, align 4
@match_words = common dso_local global i32 0, align 4
@match_lines = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@BINARY_BINARY_FILES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"without-match\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"unknown binary-files type\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@color_option = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"if-tty\00", align 1
@show_help = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@excluded_patterns = common dso_local global i64 0, align 8
@included_patterns = common dso_local global i64 0, align 8
@line_buffered = common dso_local global i32 0, align 4
@label = common dso_local global i8* null, align 8
@done_on_match = common dso_local global i32 0, align 4
@out_quiet = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"GREP_COLOR\00", align 1
@grep_color = common dso_local global i8* null, align 8
@matcher = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"%s (GNU grep) %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [70 x i8] c"Copyright 1988, 1992-1999, 2000, 2001 Free Software Foundation, Inc.\0A\00", align 1
@.str.35 = private unnamed_addr constant [151 x i8] c"This is free software; see the source for copying conditions. There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@out_file = common dso_local global i32 0, align 4
@stats_base = common dso_local global i32 0, align 4
@errseen = common dso_local global i64 0, align 8
@DOS_BINARY = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@PACKAGE = common dso_local global i32 0, align 4
@dos_report_unix_offset = common dso_local global i32 0, align 4
@dos_use_file_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = call i32 @initialize_main(i32* %4, i8*** %5)
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @program_name, align 8
  %23 = load i8*, i8** @program_name, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i8*, i8** @program_name, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** @program_name, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 47)
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** @program_name, align 8
  br label %33

33:                                               ; preds = %29, %25, %2
  %34 = load i8*, i8** @program_name, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 98
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** @program_name, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 122
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  store i32 1, i32* @BZflag, align 4
  %46 = load i8*, i8** @program_name, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** @program_name, align 8
  br label %48

48:                                               ; preds = %45, %39, %33
  store i8* null, i8** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i8 10, i8* @eolbyte, align 1
  store i32 -1, i32* @filename_mask, align 4
  %49 = load i32, i32* @off_t, align 4
  %50 = call i64 @TYPE_MAXIMUM(i32 %49)
  store i64 %50, i64* @max_count, align 8
  store i32 -1, i32* @out_before, align 4
  store i32 -1, i32* @out_after, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* @only_matching, align 4
  %51 = load i32, i32* @close_stdout, align 4
  %52 = call i32 @atexit(i32 %51)
  %53 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @prepend_default_options(i8* %53, i32* %4, i8*** %5)
  br label %55

55:                                               ; preds = %416, %48
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @get_nondigit_option(i32 %56, i8** %57, i32* %14)
  store i32 %58, i32* %12, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %417

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  switch i32 %61, label %414 [
    i32 65, label %62
    i32 66, label %65
    i32 67, label %68
    i32 68, label %71
    i32 69, label %88
    i32 70, label %90
    i32 80, label %92
    i32 71, label %94
    i32 72, label %96
    i32 73, label %97
    i32 74, label %99
    i32 85, label %107
    i32 117, label %108
    i32 86, label %109
    i32 88, label %110
    i32 97, label %113
    i32 98, label %115
    i32 99, label %116
    i32 100, label %117
    i32 101, label %141
    i32 102, label %163
    i32 104, label %252
    i32 105, label %253
    i32 121, label %253
    i32 76, label %254
    i32 108, label %255
    i32 109, label %256
    i32 110, label %276
    i32 111, label %277
    i32 113, label %278
    i32 82, label %280
    i32 114, label %280
    i32 115, label %282
    i32 118, label %283
    i32 119, label %284
    i32 120, label %285
    i32 90, label %286
    i32 122, label %287
    i32 136, label %288
    i32 135, label %312
    i32 133, label %377
    i32 134, label %386
    i32 132, label %401
    i32 130, label %410
    i32 131, label %411
    i32 0, label %413
  ]

62:                                               ; preds = %60
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 @context_length_arg(i8* %63, i32* @out_after)
  br label %416

65:                                               ; preds = %60
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 @context_length_arg(i8* %66, i32* @out_before)
  br label %416

68:                                               ; preds = %60
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i32 @context_length_arg(i8* %69, i32* %14)
  br label %416

71:                                               ; preds = %60
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @READ_DEVICES, align 4
  store i32 %76, i32* @devices, align 4
  br label %87

77:                                               ; preds = %71
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @SKIP_DEVICES, align 4
  store i32 %82, i32* @devices, align 4
  br label %86

83:                                               ; preds = %77
  %84 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %84)
  br label %86

86:                                               ; preds = %83, %81
  br label %87

87:                                               ; preds = %86, %75
  br label %416

88:                                               ; preds = %60
  %89 = call i32 @setmatcher(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %416

90:                                               ; preds = %60
  %91 = call i32 @setmatcher(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %416

92:                                               ; preds = %60
  %93 = call i32 @setmatcher(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %416

94:                                               ; preds = %60
  %95 = call i32 @setmatcher(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %416

96:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %416

97:                                               ; preds = %60
  %98 = load i32, i32* @WITHOUT_MATCH_BINARY_FILES, align 4
  store i32 %98, i32* @binary_files, align 4
  br label %416

99:                                               ; preds = %60
  %100 = load i32, i32* @Zflag, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* %103)
  %105 = call i32 @usage(i32 2)
  br label %106

106:                                              ; preds = %102, %99
  store i32 1, i32* @BZflag, align 4
  br label %416

107:                                              ; preds = %60
  br label %416

108:                                              ; preds = %60
  br label %416

109:                                              ; preds = %60
  store i32 1, i32* @show_version, align 4
  br label %416

110:                                              ; preds = %60
  %111 = load i8*, i8** @optarg, align 8
  %112 = call i32 @setmatcher(i8* %111)
  br label %416

113:                                              ; preds = %60
  %114 = load i32, i32* @TEXT_BINARY_FILES, align 4
  store i32 %114, i32* @binary_files, align 4
  br label %416

115:                                              ; preds = %60
  store i32 1, i32* @out_byte, align 4
  br label %416

116:                                              ; preds = %60
  store i32 1, i32* @count_matches, align 4
  br label %416

117:                                              ; preds = %60
  %118 = load i8*, i8** @optarg, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @READ_DIRECTORIES, align 4
  store i32 %122, i32* @directories, align 4
  br label %140

123:                                              ; preds = %117
  %124 = load i8*, i8** @optarg, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @SKIP_DIRECTORIES, align 4
  store i32 %128, i32* @directories, align 4
  br label %139

129:                                              ; preds = %123
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @RECURSE_DIRECTORIES, align 4
  store i32 %134, i32* @directories, align 4
  br label %138

135:                                              ; preds = %129
  %136 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %137 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %136)
  br label %138

138:                                              ; preds = %135, %133
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %121
  br label %416

141:                                              ; preds = %60
  %142 = load i8*, i8** @optarg, align 8
  %143 = call i8* @strlen(i8* %142)
  %144 = ptrtoint i8* %143 to i64
  store i64 %144, i64* %7, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %146, %147
  %149 = add i64 %148, 1
  %150 = call i8* @xrealloc(i8* %145, i64 %149)
  store i8* %150, i8** %6, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i8*, i8** @optarg, align 8
  %155 = call i32 @strcpy(i8* %153, i8* %154)
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %8, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %8, align 8
  %162 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 10, i8* %162, align 1
  br label %416

163:                                              ; preds = %60
  %164 = load i8*, i8** @optarg, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** @optarg, align 8
  %169 = call i32* @fopen(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %172

170:                                              ; preds = %163
  %171 = load i32*, i32** @stdin, align 8
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32* [ %169, %167 ], [ %171, %170 ]
  store i32* %173, i32** %15, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* @errno, align 4
  %178 = load i8*, i8** @optarg, align 8
  %179 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %176, %172
  store i64 1, i64* %10, align 8
  br label %181

181:                                              ; preds = %187, %180
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, 1
  %185 = icmp ule i64 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %10, align 8
  %189 = mul i64 %188, 2
  store i64 %189, i64* %10, align 8
  br label %181

190:                                              ; preds = %181
  %191 = load i8*, i8** %6, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i8* @xrealloc(i8* %191, i64 %192)
  store i8* %193, i8** %6, align 8
  %194 = load i64, i64* %8, align 8
  store i64 %194, i64* %9, align 8
  br label %195

195:                                              ; preds = %226, %190
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @feof(i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = load i8*, i8** %6, align 8
  %201 = load i64, i64* %8, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i64, i64* %10, align 8
  %204 = sub i64 %203, 1
  %205 = load i64, i64* %8, align 8
  %206 = sub i64 %204, %205
  %207 = trunc i64 %206 to i32
  %208 = load i32*, i32** %15, align 8
  %209 = call i64 @fread(i8* %202, i32 1, i32 %207, i32* %208)
  store i64 %209, i64* %7, align 8
  %210 = icmp ugt i64 %209, 0
  br label %211

211:                                              ; preds = %199, %195
  %212 = phi i1 [ false, %195 ], [ %210, %199 ]
  br i1 %212, label %213, label %227

213:                                              ; preds = %211
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* %8, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* %10, align 8
  %219 = sub i64 %218, 1
  %220 = icmp eq i64 %217, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %213
  %222 = load i8*, i8** %6, align 8
  %223 = load i64, i64* %10, align 8
  %224 = mul i64 %223, 2
  store i64 %224, i64* %10, align 8
  %225 = call i8* @xrealloc(i8* %222, i64 %224)
  store i8* %225, i8** %6, align 8
  br label %226

226:                                              ; preds = %221, %213
  br label %195

227:                                              ; preds = %211
  %228 = load i32*, i32** %15, align 8
  %229 = load i32*, i32** @stdin, align 8
  %230 = icmp ne i32* %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i32*, i32** %15, align 8
  %233 = call i32 @fclose(i32* %232)
  br label %234

234:                                              ; preds = %231, %227
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %8, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = load i8*, i8** %6, align 8
  %240 = load i64, i64* %8, align 8
  %241 = sub i64 %240, 1
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 10
  br i1 %245, label %246, label %251

246:                                              ; preds = %238
  %247 = load i8*, i8** %6, align 8
  %248 = load i64, i64* %8, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %8, align 8
  %250 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8 10, i8* %250, align 1
  br label %251

251:                                              ; preds = %246, %238, %234
  br label %416

252:                                              ; preds = %60
  store i32 1, i32* @no_filenames, align 4
  br label %416

253:                                              ; preds = %60, %60
  store i32 1, i32* @match_icase, align 4
  br label %416

254:                                              ; preds = %60
  store i32 -1, i32* @list_files, align 4
  br label %416

255:                                              ; preds = %60
  store i32 1, i32* @list_files, align 4
  br label %416

256:                                              ; preds = %60
  %257 = load i8*, i8** @optarg, align 8
  %258 = call i32 @xstrtoumax(i8* %257, i32 0, i32 10, i64* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  switch i32 %258, label %272 [
    i32 129, label %259
    i32 128, label %269
  ]

259:                                              ; preds = %256
  %260 = load i64, i64* %16, align 8
  store i64 %260, i64* @max_count, align 8
  %261 = load i64, i64* @max_count, align 8
  %262 = icmp sle i64 0, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load i64, i64* @max_count, align 8
  %265 = load i64, i64* %16, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  br label %275

268:                                              ; preds = %263, %259
  br label %269

269:                                              ; preds = %256, %268
  %270 = load i32, i32* @off_t, align 4
  %271 = call i64 @TYPE_MAXIMUM(i32 %270)
  store i64 %271, i64* @max_count, align 8
  br label %275

272:                                              ; preds = %256
  %273 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %274 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %273)
  br label %275

275:                                              ; preds = %272, %269, %267
  br label %416

276:                                              ; preds = %60
  store i32 1, i32* @out_line, align 4
  br label %416

277:                                              ; preds = %60
  store i32 1, i32* @only_matching, align 4
  br label %416

278:                                              ; preds = %60
  store i32 1, i32* @exit_on_match, align 4
  %279 = call i32 @close_stdout_set_status(i32 0)
  br label %416

280:                                              ; preds = %60, %60
  %281 = load i32, i32* @RECURSE_DIRECTORIES, align 4
  store i32 %281, i32* @directories, align 4
  br label %416

282:                                              ; preds = %60
  store i32 1, i32* @suppress_errors, align 4
  br label %416

283:                                              ; preds = %60
  store i32 1, i32* @out_invert, align 4
  br label %416

284:                                              ; preds = %60
  store i32 1, i32* @match_words, align 4
  br label %416

285:                                              ; preds = %60
  store i32 1, i32* @match_lines, align 4
  br label %416

286:                                              ; preds = %60
  store i32 0, i32* @filename_mask, align 4
  br label %416

287:                                              ; preds = %60
  store i8 0, i8* @eolbyte, align 1
  br label %416

288:                                              ; preds = %60
  %289 = load i8*, i8** @optarg, align 8
  %290 = call i64 @strcmp(i8* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @BINARY_BINARY_FILES, align 4
  store i32 %293, i32* @binary_files, align 4
  br label %311

294:                                              ; preds = %288
  %295 = load i8*, i8** @optarg, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* @TEXT_BINARY_FILES, align 4
  store i32 %299, i32* @binary_files, align 4
  br label %310

300:                                              ; preds = %294
  %301 = load i8*, i8** @optarg, align 8
  %302 = call i64 @strcmp(i8* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i32, i32* @WITHOUT_MATCH_BINARY_FILES, align 4
  store i32 %305, i32* @binary_files, align 4
  br label %309

306:                                              ; preds = %300
  %307 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %308 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %307)
  br label %309

309:                                              ; preds = %306, %304
  br label %310

310:                                              ; preds = %309, %298
  br label %311

311:                                              ; preds = %310, %292
  br label %416

312:                                              ; preds = %60
  %313 = load i8*, i8** @optarg, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %358

315:                                              ; preds = %312
  %316 = load i8*, i8** @optarg, align 8
  %317 = call i32 @strcasecmp(i8* %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %315
  %320 = load i8*, i8** @optarg, align 8
  %321 = call i32 @strcasecmp(i8* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = load i8*, i8** @optarg, align 8
  %325 = call i32 @strcasecmp(i8* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %323, %319, %315
  store i32 1, i32* @color_option, align 4
  br label %357

328:                                              ; preds = %323
  %329 = load i8*, i8** @optarg, align 8
  %330 = call i32 @strcasecmp(i8* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = load i8*, i8** @optarg, align 8
  %334 = call i32 @strcasecmp(i8* %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load i8*, i8** @optarg, align 8
  %338 = call i32 @strcasecmp(i8* %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %336, %332, %328
  store i32 0, i32* @color_option, align 4
  br label %356

341:                                              ; preds = %336
  %342 = load i8*, i8** @optarg, align 8
  %343 = call i32 @strcasecmp(i8* %342, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %341
  %346 = load i8*, i8** @optarg, align 8
  %347 = call i32 @strcasecmp(i8* %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %345
  %350 = load i8*, i8** @optarg, align 8
  %351 = call i32 @strcasecmp(i8* %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %349, %345, %341
  store i32 2, i32* @color_option, align 4
  br label %355

354:                                              ; preds = %349
  store i32 1, i32* @show_help, align 4
  br label %355

355:                                              ; preds = %354, %353
  br label %356

356:                                              ; preds = %355, %340
  br label %357

357:                                              ; preds = %356, %327
  br label %359

358:                                              ; preds = %312
  store i32 2, i32* @color_option, align 4
  br label %359

359:                                              ; preds = %358, %357
  %360 = load i32, i32* @color_option, align 4
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %376

362:                                              ; preds = %359
  %363 = load i32, i32* @STDOUT_FILENO, align 4
  %364 = call i64 @isatty(i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %374

366:                                              ; preds = %362
  %367 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %371 = call i64 @strcmp(i8* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  store i32 1, i32* @color_option, align 4
  br label %375

374:                                              ; preds = %369, %366, %362
  store i32 0, i32* @color_option, align 4
  br label %375

375:                                              ; preds = %374, %373
  br label %376

376:                                              ; preds = %375, %359
  br label %416

377:                                              ; preds = %60
  %378 = load i64, i64* @excluded_patterns, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %377
  %381 = call i64 (...) @new_exclude()
  store i64 %381, i64* @excluded_patterns, align 8
  br label %382

382:                                              ; preds = %380, %377
  %383 = load i64, i64* @excluded_patterns, align 8
  %384 = load i8*, i8** @optarg, align 8
  %385 = call i32 @add_exclude(i64 %383, i8* %384)
  br label %416

386:                                              ; preds = %60
  %387 = load i64, i64* @excluded_patterns, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = call i64 (...) @new_exclude()
  store i64 %390, i64* @excluded_patterns, align 8
  br label %391

391:                                              ; preds = %389, %386
  %392 = load i64, i64* @excluded_patterns, align 8
  %393 = load i8*, i8** @optarg, align 8
  %394 = call i32 @add_exclude_file(i32 (i64, i8*)* @add_exclude, i64 %392, i8* %393, i8 signext 10)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %391
  %397 = load i32, i32* @errno, align 4
  %398 = load i8*, i8** @optarg, align 8
  %399 = call i32 (i32, i32, i8*, ...) @error(i32 2, i32 %397, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %398)
  br label %400

400:                                              ; preds = %396, %391
  br label %416

401:                                              ; preds = %60
  %402 = load i64, i64* @included_patterns, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %401
  %405 = call i64 (...) @new_exclude()
  store i64 %405, i64* @included_patterns, align 8
  br label %406

406:                                              ; preds = %404, %401
  %407 = load i64, i64* @included_patterns, align 8
  %408 = load i8*, i8** @optarg, align 8
  %409 = call i32 @add_exclude(i64 %407, i8* %408)
  br label %416

410:                                              ; preds = %60
  store i32 1, i32* @line_buffered, align 4
  br label %416

411:                                              ; preds = %60
  %412 = load i8*, i8** @optarg, align 8
  store i8* %412, i8** @label, align 8
  br label %416

413:                                              ; preds = %60
  br label %416

414:                                              ; preds = %60
  %415 = call i32 @usage(i32 2)
  br label %416

416:                                              ; preds = %414, %413, %411, %410, %406, %400, %382, %376, %311, %287, %286, %285, %284, %283, %282, %280, %278, %277, %276, %275, %255, %254, %253, %252, %251, %141, %140, %116, %115, %113, %110, %109, %108, %107, %106, %97, %96, %94, %92, %90, %88, %87, %68, %65, %62
  br label %55

417:                                              ; preds = %55
  %418 = load i32, i32* @exit_on_match, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  store i32 0, i32* @list_files, align 4
  br label %421

421:                                              ; preds = %420, %417
  %422 = load i32, i32* @exit_on_match, align 4
  %423 = load i32, i32* @list_files, align 4
  %424 = or i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %421
  store i32 0, i32* @count_matches, align 4
  store i32 1, i32* @done_on_match, align 4
  br label %427

427:                                              ; preds = %426, %421
  %428 = load i32, i32* @count_matches, align 4
  %429 = load i32, i32* @done_on_match, align 4
  %430 = or i32 %428, %429
  store i32 %430, i32* @out_quiet, align 4
  %431 = load i32, i32* @out_after, align 4
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %427
  %434 = load i32, i32* %14, align 4
  store i32 %434, i32* @out_after, align 4
  br label %435

435:                                              ; preds = %433, %427
  %436 = load i32, i32* @out_before, align 4
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %435
  %439 = load i32, i32* %14, align 4
  store i32 %439, i32* @out_before, align 4
  br label %440

440:                                              ; preds = %438, %435
  %441 = load i32, i32* @color_option, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %455

443:                                              ; preds = %440
  %444 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  store i8* %444, i8** %17, align 8
  %445 = load i8*, i8** %17, align 8
  %446 = icmp ne i8* %445, null
  br i1 %446, label %447, label %454

447:                                              ; preds = %443
  %448 = load i8*, i8** %17, align 8
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %447
  %453 = load i8*, i8** %17, align 8
  store i8* %453, i8** @grep_color, align 8
  br label %454

454:                                              ; preds = %452, %447, %443
  br label %455

455:                                              ; preds = %454, %440
  %456 = load i8*, i8** @matcher, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load i8*, i8** @program_name, align 8
  store i8* %459, i8** @matcher, align 8
  br label %460

460:                                              ; preds = %458, %455
  %461 = load i32, i32* @show_version, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %475

463:                                              ; preds = %460
  %464 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %465 = load i8*, i8** @matcher, align 8
  %466 = load i8*, i8** @VERSION, align 8
  %467 = call i32 (i8*, ...) @printf(i8* %464, i8* %465, i8* %466)
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %469 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.34, i64 0, i64 0))
  %470 = call i32 (i8*, ...) @printf(i8* %469)
  %471 = call i8* @_(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.35, i64 0, i64 0))
  %472 = call i32 (i8*, ...) @printf(i8* %471)
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %474 = call i32 @exit(i32 0) #3
  unreachable

475:                                              ; preds = %460
  %476 = load i32, i32* @show_help, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %475
  %479 = call i32 @usage(i32 0)
  br label %480

480:                                              ; preds = %478, %475
  %481 = load i8*, i8** %6, align 8
  %482 = icmp ne i8* %481, null
  br i1 %482, label %483, label %493

483:                                              ; preds = %480
  %484 = load i64, i64* %8, align 8
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32, i32* @out_invert, align 4
  %488 = xor i32 %487, 1
  store i32 %488, i32* @out_invert, align 4
  store i32 0, i32* @match_words, align 4
  store i32 0, i32* @match_lines, align 4
  br label %492

489:                                              ; preds = %483
  %490 = load i64, i64* %8, align 8
  %491 = add i64 %490, -1
  store i64 %491, i64* %8, align 8
  br label %492

492:                                              ; preds = %489, %486
  br label %510

493:                                              ; preds = %480
  %494 = load i32, i32* @optind, align 4
  %495 = load i32, i32* %4, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %507

497:                                              ; preds = %493
  %498 = load i8**, i8*** %5, align 8
  %499 = load i32, i32* @optind, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* @optind, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i8*, i8** %498, i64 %501
  %503 = load i8*, i8** %502, align 8
  store i8* %503, i8** %6, align 8
  %504 = load i8*, i8** %6, align 8
  %505 = call i8* @strlen(i8* %504)
  %506 = ptrtoint i8* %505 to i64
  store i64 %506, i64* %8, align 8
  br label %509

507:                                              ; preds = %493
  %508 = call i32 @usage(i32 2)
  br label %509

509:                                              ; preds = %507, %497
  br label %510

510:                                              ; preds = %509, %492
  %511 = load i8*, i8** @matcher, align 8
  %512 = call i32 @install_matcher(i8* %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %519, label %514

514:                                              ; preds = %510
  %515 = call i32 @install_matcher(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %514
  %518 = call i32 (...) @abort() #3
  unreachable

519:                                              ; preds = %514, %510
  %520 = load i8*, i8** %6, align 8
  %521 = load i64, i64* %8, align 8
  %522 = call i32 @compile(i8* %520, i64 %521)
  %523 = load i32, i32* %4, align 4
  %524 = load i32, i32* @optind, align 4
  %525 = sub nsw i32 %523, %524
  %526 = icmp sgt i32 %525, 1
  br i1 %526, label %527, label %530

527:                                              ; preds = %519
  %528 = load i32, i32* @no_filenames, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %533

530:                                              ; preds = %527, %519
  %531 = load i32, i32* %11, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %530, %527
  store i32 1, i32* @out_file, align 4
  br label %534

534:                                              ; preds = %533, %530
  %535 = load i64, i64* @max_count, align 8
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = call i32 @exit(i32 1) #3
  unreachable

539:                                              ; preds = %534
  %540 = load i32, i32* @optind, align 4
  %541 = load i32, i32* %4, align 4
  %542 = icmp slt i32 %540, %541
  br i1 %542, label %543, label %596

543:                                              ; preds = %539
  store i32 1, i32* %13, align 4
  br label %544

544:                                              ; preds = %590, %543
  %545 = load i8**, i8*** %5, align 8
  %546 = load i32, i32* @optind, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8*, i8** %545, i64 %547
  %549 = load i8*, i8** %548, align 8
  store i8* %549, i8** %18, align 8
  %550 = load i64, i64* @included_patterns, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %555, label %552

552:                                              ; preds = %544
  %553 = load i64, i64* @excluded_patterns, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %578

555:                                              ; preds = %552, %544
  %556 = load i8*, i8** %18, align 8
  %557 = call i32 @isdir(i8* %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %578, label %559

559:                                              ; preds = %555
  %560 = load i64, i64* @included_patterns, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %559
  %563 = load i64, i64* @included_patterns, align 8
  %564 = load i8*, i8** %18, align 8
  %565 = call i64 @excluded_filename(i64 %563, i8* %564, i32 0)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %562
  br label %590

568:                                              ; preds = %562, %559
  %569 = load i64, i64* @excluded_patterns, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %568
  %572 = load i64, i64* @excluded_patterns, align 8
  %573 = load i8*, i8** %18, align 8
  %574 = call i64 @excluded_filename(i64 %572, i8* %573, i32 0)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  br label %590

577:                                              ; preds = %571, %568
  br label %578

578:                                              ; preds = %577, %555, %552
  %579 = load i8*, i8** %18, align 8
  %580 = call i64 @strcmp(i8* %579, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %578
  br label %585

583:                                              ; preds = %578
  %584 = load i8*, i8** %18, align 8
  br label %585

585:                                              ; preds = %583, %582
  %586 = phi i8* [ null, %582 ], [ %584, %583 ]
  %587 = call i32 @grepfile(i8* %586, i32* @stats_base)
  %588 = load i32, i32* %13, align 4
  %589 = and i32 %588, %587
  store i32 %589, i32* %13, align 4
  br label %590

590:                                              ; preds = %585, %576, %567
  %591 = load i32, i32* @optind, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* @optind, align 4
  %593 = load i32, i32* %4, align 4
  %594 = icmp slt i32 %592, %593
  br i1 %594, label %544, label %595

595:                                              ; preds = %590
  br label %598

596:                                              ; preds = %539
  %597 = call i32 @grepfile(i8* null, i32* @stats_base)
  store i32 %597, i32* %13, align 4
  br label %598

598:                                              ; preds = %596, %595
  %599 = load i64, i64* @errseen, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %598
  br label %604

602:                                              ; preds = %598
  %603 = load i32, i32* %13, align 4
  br label %604

604:                                              ; preds = %602, %601
  %605 = phi i32 [ 2, %601 ], [ %603, %602 ]
  %606 = call i32 @exit(i32 %605) #3
  unreachable
}

declare dso_local i32 @initialize_main(i32*, i8***) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @TYPE_MAXIMUM(i32) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @prepend_default_options(i8*, i32*, i8***) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @get_nondigit_option(i32, i8**, i32*) #1

declare dso_local i32 @context_length_arg(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @setmatcher(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @xstrtoumax(i8*, i32, i32, i64*, i8*) #1

declare dso_local i32 @close_stdout_set_status(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @new_exclude(...) #1

declare dso_local i32 @add_exclude(i64, i8*) #1

declare dso_local i32 @add_exclude_file(i32 (i64, i8*)*, i64, i8*, i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @install_matcher(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @compile(i8*, i64) #1

declare dso_local i32 @isdir(i8*) #1

declare dso_local i64 @excluded_filename(i64, i8*, i32) #1

declare dso_local i32 @grepfile(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
