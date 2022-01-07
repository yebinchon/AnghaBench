; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manconf = type { i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.mansearch = type { i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.curparse = type { i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32*, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.TYPE_5__* }
%struct.winsize = type { i32 }
%struct.tag_files = type { i8*, i32, i64, i32 }
%struct.manpage = type { i8*, i8*, i8*, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"mandoc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mandocdb\00", align 1
@BINM_MAKEWHATIS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"Nd\00", align 1
@BINM_MAN = common dso_local global i8* null, align 8
@BINM_APROPOS = common dso_local global i8* null, align 8
@ARG_EXPR = common dso_local global i8* null, align 8
@BINM_WHATIS = common dso_local global i8* null, align 8
@ARG_WORD = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@MPARSE_SO = common dso_local global i32 0, align 4
@MPARSE_UTF8 = common dso_local global i32 0, align 4
@MPARSE_LATIN1 = common dso_local global i32 0, align 4
@OUTMODE_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"aC:cfhI:iK:klM:m:O:S:s:T:VW:w\00", align 1
@optind = common dso_local global i64 0, align 8
@OUTMODE_ALL = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"os=\00", align 1
@MANDOCERR_BADARG_BAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"-I %s\00", align 1
@MANDOCERR_BADARG_DUPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-K %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@OUTT_LINT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@MANDOCERR_BASE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@OUTT_TREE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@OUTT_MAN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"markdown\00", align 1
@OUTT_MARKDOWN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"-T %s\00", align 1
@OUTMODE_FLN = common dso_local global i32 0, align 4
@OUTMODE_ONE = common dso_local global i32 0, align 4
@OUTMODE_LST = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@MPARSE_VALIDATE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@help_argv = common dso_local global i8** null, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"MACHINE\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@FORM_SRC = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"nothing appropriate\00", align 1
@MANDOCLEVEL_BADARG = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"%s - %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@sec_prios = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@MPARSE_MDOC = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@MPARSE_MAN = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@MANDOCERR_WRITE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@MANDOCERR_OPEN = common dso_local global i32 0, align 4
@MANDOCLEVEL_OK = common dso_local global i64 0, align 8
@SIGSTOP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@MANDOCERR_WAIT = common dso_local global i32 0, align 4
@MACHINE = common dso_local global i8* null, align 8
@MANDOCERR_PLEDGE = common dso_local global i32 0, align 4
@MANDOCLEVEL_SYSERR = common dso_local global i64 0, align 8
@SANDBOX_NAMED = common dso_local global i32 0, align 4
@kSBXProfileNoInternet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.manconf, align 8
  %7 = alloca %struct.mansearch, align 8
  %8 = alloca %struct.curparse, align 8
  %9 = alloca %struct.winsize, align 4
  %10 = alloca %struct.tag_files*, align 8
  %11 = alloca %struct.manpage*, align 8
  %12 = alloca %struct.manpage*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %13, align 8
  br label %58

44:                                               ; preds = %2
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strrchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %13, align 8
  br label %57

54:                                               ; preds = %44
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @setprogname(i8* %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @mandoc_msg_setoutfile(i32 %61)
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 8)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** @BINM_MAKEWHATIS, align 8
  %69 = call i64 @strcmp(i8* %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = call i32 @mandocdb(i32 %72, i8** %73)
  store i32 %74, i32* %3, align 4
  br label %1276

75:                                               ; preds = %66
  %76 = bitcast %struct.manconf* %6 to %struct.mansearch*
  %77 = call i32 @memset(%struct.mansearch* %76, i32 0, i32 120)
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %18, align 8
  %78 = call i32 @memset(%struct.mansearch* %7, i32 0, i32 120)
  %79 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %79, align 8
  store i8* null, i8** %19, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** @BINM_MAN, align 8
  %82 = call i64 @strcmp(i8* %80, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 134, i32* %85, align 8
  br label %115

86:                                               ; preds = %75
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** @BINM_APROPOS, align 8
  %89 = call i64 @strcmp(i8* %87, i8* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8*, i8** @ARG_EXPR, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  br label %114

95:                                               ; preds = %86
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** @BINM_WHATIS, align 8
  %98 = call i64 @strcmp(i8* %96, i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** @ARG_WORD, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  br label %113

104:                                              ; preds = %95
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @strncmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 4)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 134, i32* %109, align 8
  br label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 135, i32* %111, align 8
  br label %112

112:                                              ; preds = %110, %108
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %84
  %116 = bitcast %struct.curparse* %8 to %struct.mansearch*
  %117 = call i32 @memset(%struct.mansearch* %116, i32 0, i32 120)
  %118 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 131, i32* %118, align 4
  %119 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %120 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 13
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %120, align 8
  %121 = load i32, i32* @MPARSE_SO, align 4
  %122 = load i32, i32* @MPARSE_UTF8, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MPARSE_LATIN1, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %31, align 4
  store i32 1, i32* %32, align 4
  store %struct.tag_files* null, %struct.tag_files** %10, align 8
  store i32 0, i32* %30, align 4
  %126 = load i32, i32* @OUTMODE_DEF, align 4
  store i32 %126, i32* %27, align 4
  br label %127

127:                                              ; preds = %335, %115
  %128 = load i32, i32* %4, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = call i32 @getopt(i32 %128, i8** %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 %130, i32* %35, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %336

132:                                              ; preds = %127
  %133 = load i32, i32* %35, align 4
  %134 = icmp eq i32 %133, 105
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load i8*, i8** @ARG_EXPR, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i64, i64* @optind, align 8
  %144 = add nsw i64 %143, -1
  store i64 %144, i64* @optind, align 8
  br label %336

145:                                              ; preds = %135, %132
  %146 = load i32, i32* %35, align 4
  switch i32 %146, label %334 [
    i32 97, label %147
    i32 67, label %149
    i32 99, label %151
    i32 102, label %152
    i32 104, label %156
    i32 73, label %160
    i32 75, label %185
    i32 107, label %220
    i32 108, label %224
    i32 77, label %227
    i32 109, label %229
    i32 79, label %231
    i32 83, label %233
    i32 115, label %236
    i32 84, label %239
    i32 87, label %323
    i32 119, label %332
  ]

147:                                              ; preds = %145
  %148 = load i32, i32* @OUTMODE_ALL, align 4
  store i32 %148, i32* %27, align 4
  br label %335

149:                                              ; preds = %145
  %150 = load i8*, i8** @optarg, align 8
  store i8* %150, i8** %16, align 8
  br label %335

151:                                              ; preds = %145
  store i32 0, i32* %32, align 4
  br label %335

152:                                              ; preds = %145
  %153 = load i8*, i8** @ARG_WORD, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 %154, i32* %155, align 8
  br label %335

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  store i32 0, i32* %32, align 4
  %159 = load i32, i32* @OUTMODE_ALL, align 4
  store i32 %159, i32* %27, align 4
  br label %335

160:                                              ; preds = %145
  %161 = load i8*, i8** @optarg, align 8
  %162 = call i64 @strncmp(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 3)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %166 = load i8*, i8** @optarg, align 8
  %167 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %165, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %166)
  %168 = call i64 (...) @mandoc_msg_getrc()
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %3, align 4
  br label %1276

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32, i32* @MANDOCERR_BADARG_DUPE, align 4
  %176 = load i8*, i8** @optarg, align 8
  %177 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %175, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %176)
  %178 = call i64 (...) @mandoc_msg_getrc()
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %3, align 4
  br label %1276

180:                                              ; preds = %170
  %181 = load i8*, i8** @optarg, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 3
  %183 = call i8* @mandoc_strdup(i8* %182)
  %184 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 3
  store i8* %183, i8** %184, align 8
  br label %335

185:                                              ; preds = %145
  %186 = load i32, i32* @MPARSE_UTF8, align 4
  %187 = load i32, i32* @MPARSE_LATIN1, align 4
  %188 = or i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %31, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %31, align 4
  %192 = load i8*, i8** @optarg, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %185
  %196 = load i32, i32* @MPARSE_UTF8, align 4
  %197 = load i32, i32* %31, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %31, align 4
  br label %219

199:                                              ; preds = %185
  %200 = load i8*, i8** @optarg, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i32, i32* @MPARSE_LATIN1, align 4
  %205 = load i32, i32* %31, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %31, align 4
  br label %218

207:                                              ; preds = %199
  %208 = load i8*, i8** @optarg, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %213 = load i8*, i8** @optarg, align 8
  %214 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %212, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %213)
  %215 = call i64 (...) @mandoc_msg_getrc()
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %3, align 4
  br label %1276

217:                                              ; preds = %207
  br label %218

218:                                              ; preds = %217, %203
  br label %219

219:                                              ; preds = %218, %195
  br label %335

220:                                              ; preds = %145
  %221 = load i8*, i8** @ARG_EXPR, align 8
  %222 = ptrtoint i8* %221 to i32
  %223 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 %222, i32* %223, align 8
  br label %335

224:                                              ; preds = %145
  %225 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  store i32 135, i32* %225, align 8
  %226 = load i32, i32* @OUTMODE_ALL, align 4
  store i32 %226, i32* %27, align 4
  br label %335

227:                                              ; preds = %145
  %228 = load i8*, i8** @optarg, align 8
  store i8* %228, i8** %17, align 8
  br label %335

229:                                              ; preds = %145
  %230 = load i8*, i8** @optarg, align 8
  store i8* %230, i8** %18, align 8
  br label %335

231:                                              ; preds = %145
  %232 = load i8*, i8** @optarg, align 8
  store i8* %232, i8** %19, align 8
  br label %335

233:                                              ; preds = %145
  %234 = load i8*, i8** @optarg, align 8
  %235 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 4
  store i8* %234, i8** %235, align 8
  br label %335

236:                                              ; preds = %145
  %237 = load i8*, i8** @optarg, align 8
  %238 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  store i8* %237, i8** %238, align 8
  br label %335

239:                                              ; preds = %145
  %240 = load i8*, i8** @optarg, align 8
  %241 = call i64 @strcmp(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 133, i32* %244, align 4
  br label %322

245:                                              ; preds = %239
  %246 = load i8*, i8** @optarg, align 8
  %247 = call i64 @strcmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i32, i32* @OUTT_LINT, align 4
  %251 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* @stdout, align 4
  %253 = call i32 @mandoc_msg_setoutfile(i32 %252)
  %254 = load i32, i32* @MANDOCERR_BASE, align 4
  %255 = call i32 @mandoc_msg_setmin(i32 %254)
  br label %321

256:                                              ; preds = %245
  %257 = load i8*, i8** @optarg, align 8
  %258 = call i64 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, i32* @OUTT_TREE, align 4
  %262 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 %261, i32* %262, align 4
  br label %320

263:                                              ; preds = %256
  %264 = load i8*, i8** @optarg, align 8
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load i32, i32* @OUTT_MAN, align 4
  %269 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 %268, i32* %269, align 4
  br label %319

270:                                              ; preds = %263
  %271 = load i8*, i8** @optarg, align 8
  %272 = call i64 @strcmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 132, i32* %275, align 4
  br label %318

276:                                              ; preds = %270
  %277 = load i8*, i8** @optarg, align 8
  %278 = call i64 @strcmp(i8* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i32, i32* @OUTT_MARKDOWN, align 4
  %282 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 %281, i32* %282, align 4
  br label %317

283:                                              ; preds = %276
  %284 = load i8*, i8** @optarg, align 8
  %285 = call i64 @strcmp(i8* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 128, i32* %288, align 4
  br label %316

289:                                              ; preds = %283
  %290 = load i8*, i8** @optarg, align 8
  %291 = call i64 @strcmp(i8* %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 131, i32* %294, align 4
  br label %315

295:                                              ; preds = %289
  %296 = load i8*, i8** @optarg, align 8
  %297 = call i64 @strcmp(i8* %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 129, i32* %300, align 4
  br label %314

301:                                              ; preds = %295
  %302 = load i8*, i8** @optarg, align 8
  %303 = call i64 @strcmp(i8* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  store i32 130, i32* %306, align 4
  br label %313

307:                                              ; preds = %301
  %308 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %309 = load i8*, i8** @optarg, align 8
  %310 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %308, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %309)
  %311 = call i64 (...) @mandoc_msg_getrc()
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %3, align 4
  br label %1276

313:                                              ; preds = %305
  br label %314

314:                                              ; preds = %313, %299
  br label %315

315:                                              ; preds = %314, %293
  br label %316

316:                                              ; preds = %315, %287
  br label %317

317:                                              ; preds = %316, %280
  br label %318

318:                                              ; preds = %317, %274
  br label %319

319:                                              ; preds = %318, %267
  br label %320

320:                                              ; preds = %319, %260
  br label %321

321:                                              ; preds = %320, %249
  br label %322

322:                                              ; preds = %321, %243
  br label %335

323:                                              ; preds = %145
  %324 = bitcast %struct.curparse* %8 to %struct.mansearch*
  %325 = load i8*, i8** @optarg, align 8
  %326 = call i32 @woptions(%struct.mansearch* %324, i8* %325)
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = call i64 (...) @mandoc_msg_getrc()
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %3, align 4
  br label %1276

331:                                              ; preds = %323
  br label %335

332:                                              ; preds = %145
  %333 = load i32, i32* @OUTMODE_FLN, align 4
  store i32 %333, i32* %27, align 4
  br label %335

334:                                              ; preds = %145
  store i32 1, i32* %30, align 4
  br label %335

335:                                              ; preds = %334, %332, %331, %322, %236, %233, %231, %229, %227, %224, %220, %219, %180, %156, %152, %151, %149, %147
  br label %127

336:                                              ; preds = %142, %127
  %337 = load i32, i32* %30, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @usage(i32 %341)
  br label %343

343:                                              ; preds = %339, %336
  %344 = load i32, i32* %27, align 4
  %345 = load i32, i32* @OUTMODE_DEF, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  switch i32 %349, label %354 [
    i32 135, label %350
    i32 134, label %352
  ]

350:                                              ; preds = %347
  %351 = load i32, i32* @OUTMODE_ALL, align 4
  store i32 %351, i32* %27, align 4
  store i32 0, i32* %32, align 4
  br label %356

352:                                              ; preds = %347
  %353 = load i32, i32* @OUTMODE_ONE, align 4
  store i32 %353, i32* %27, align 4
  br label %356

354:                                              ; preds = %347
  %355 = load i32, i32* @OUTMODE_LST, align 4
  store i32 %355, i32* %27, align 4
  br label %356

356:                                              ; preds = %354, %352, %350
  br label %357

357:                                              ; preds = %356, %343
  %358 = load i8*, i8** %19, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %382

360:                                              ; preds = %357
  %361 = load i32, i32* %27, align 4
  %362 = load i32, i32* @OUTMODE_LST, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = load i8*, i8** %19, align 8
  %366 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 0
  store i8* %365, i8** %366, align 8
  br label %381

367:                                              ; preds = %360
  br label %368

368:                                              ; preds = %379, %367
  %369 = load i8*, i8** %19, align 8
  %370 = icmp ne i8* %369, null
  br i1 %370, label %371, label %380

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %373 = call i32 @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %374 = call i32 @manconf_output(%struct.TYPE_5__* %372, i32 %373, i32 0)
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = call i64 (...) @mandoc_msg_getrc()
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %3, align 4
  br label %1276

379:                                              ; preds = %371
  br label %368

380:                                              ; preds = %368
  br label %381

381:                                              ; preds = %380, %364
  br label %382

382:                                              ; preds = %381, %357
  %383 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @OUTT_TREE, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %393, label %387

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 13
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %387, %382
  %394 = load i32, i32* @MPARSE_VALIDATE, align 4
  %395 = load i32, i32* %31, align 4
  %396 = or i32 %395, %394
  store i32 %396, i32* %31, align 4
  br label %397

397:                                              ; preds = %393, %387
  %398 = load i32, i32* %27, align 4
  %399 = load i32, i32* @OUTMODE_FLN, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %409, label %401

401:                                              ; preds = %397
  %402 = load i32, i32* %27, align 4
  %403 = load i32, i32* @OUTMODE_LST, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %409, label %405

405:                                              ; preds = %401
  %406 = load i32, i32* @STDOUT_FILENO, align 4
  %407 = call i32 @isatty(i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %405, %401, %397
  store i32 0, i32* %32, align 4
  br label %410

410:                                              ; preds = %409, %405
  %411 = load i32, i32* %32, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %460

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %460

423:                                              ; preds = %418, %413
  %424 = load i32, i32* @STDOUT_FILENO, align 4
  %425 = load i32, i32* @TIOCGWINSZ, align 4
  %426 = call i32 @ioctl(i32 %424, i32 %425, %struct.winsize* %9)
  %427 = icmp ne i32 %426, -1
  br i1 %427, label %428, label %460

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = icmp sgt i32 %430, 1
  br i1 %431, label %432, label %460

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %447

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = icmp slt i32 %439, 79
  br i1 %440, label %441, label %447

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sub nsw i32 %443, 1
  %445 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 1
  store i32 %444, i32* %446, align 4
  br label %447

447:                                              ; preds = %441, %437, %432
  %448 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %447
  %453 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = icmp slt i32 %454, 66
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 2
  store i32 3, i32* %458, align 8
  br label %459

459:                                              ; preds = %456, %452, %447
  br label %460

460:                                              ; preds = %459, %428, %423, %418, %410
  %461 = load i32, i32* %4, align 4
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %460
  %464 = load i64, i64* @optind, align 8
  %465 = load i32, i32* %4, align 4
  %466 = sext i32 %465 to i64
  %467 = sub nsw i64 %466, %464
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* %4, align 4
  %469 = load i64, i64* @optind, align 8
  %470 = load i8**, i8*** %5, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 %469
  store i8** %471, i8*** %5, align 8
  br label %472

472:                                              ; preds = %463, %460
  store %struct.manpage* null, %struct.manpage** %12, align 8
  %473 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %474 = load i32, i32* %473, align 8
  %475 = icmp eq i32 %474, 134
  br i1 %475, label %476, label %541

476:                                              ; preds = %472
  %477 = load i8*, i8** %13, align 8
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %479, 104
  br i1 %480, label %481, label %487

481:                                              ; preds = %476
  %482 = load i32, i32* %4, align 4
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %481
  %485 = load i8**, i8*** @help_argv, align 8
  store i8** %485, i8*** %5, align 8
  store i32 1, i32* %4, align 4
  br label %486

486:                                              ; preds = %484, %481
  br label %533

487:                                              ; preds = %476
  %488 = load i32, i32* %4, align 4
  %489 = icmp sgt i32 %488, 1
  br i1 %489, label %490, label %532

490:                                              ; preds = %487
  %491 = load i8**, i8*** %5, align 8
  %492 = getelementptr inbounds i8*, i8** %491, i64 0
  %493 = load i8*, i8** %492, align 8
  store i8* %493, i8** %21, align 8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %532

495:                                              ; preds = %490
  %496 = load i8*, i8** %21, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 0
  %498 = load i8, i8* %497, align 1
  %499 = call i64 @isdigit(i8 zeroext %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %513

501:                                              ; preds = %495
  %502 = load i8*, i8** %21, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 1
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i32
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %525, label %507

507:                                              ; preds = %501
  %508 = load i8*, i8** %21, align 8
  %509 = getelementptr inbounds i8, i8* %508, i64 1
  %510 = load i8, i8* %509, align 1
  %511 = call i64 @isalpha(i8 zeroext %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %525, label %513

513:                                              ; preds = %507, %495
  %514 = load i8*, i8** %21, align 8
  %515 = getelementptr inbounds i8, i8* %514, i64 0
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 110
  br i1 %518, label %519, label %532

519:                                              ; preds = %513
  %520 = load i8*, i8** %21, align 8
  %521 = getelementptr inbounds i8, i8* %520, i64 1
  %522 = load i8, i8* %521, align 1
  %523 = zext i8 %522 to i32
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %532

525:                                              ; preds = %519, %507, %501
  %526 = load i8*, i8** %21, align 8
  %527 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  store i8* %526, i8** %527, align 8
  %528 = load i8**, i8*** %5, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i32 1
  store i8** %529, i8*** %5, align 8
  %530 = load i32, i32* %4, align 4
  %531 = add nsw i32 %530, -1
  store i32 %531, i32* %4, align 4
  br label %532

532:                                              ; preds = %525, %519, %513, %490, %487
  br label %533

533:                                              ; preds = %532, %486
  %534 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 4
  %535 = load i8*, i8** %534, align 8
  %536 = icmp eq i8* %535, null
  br i1 %536, label %537, label %540

537:                                              ; preds = %533
  %538 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %539 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 4
  store i8* %538, i8** %539, align 8
  br label %540

540:                                              ; preds = %537, %533
  br label %541

541:                                              ; preds = %540, %472
  %542 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 3
  %544 = load i8*, i8** %543, align 8
  %545 = icmp ne i8* %544, null
  br i1 %545, label %546, label %582

546:                                              ; preds = %541
  %547 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %548 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %547, i32 0, i32 3
  %549 = load i8*, i8** %548, align 8
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %582

553:                                              ; preds = %546
  %554 = load i32, i32* %4, align 4
  %555 = icmp sgt i32 %554, 0
  br i1 %555, label %556, label %567

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = sext i32 %558 to i64
  %560 = inttoptr i64 %559 to i8*
  %561 = load i8*, i8** @ARG_EXPR, align 8
  %562 = icmp eq i8* %560, %561
  br i1 %562, label %563, label %567

563:                                              ; preds = %556
  %564 = load i8**, i8*** %5, align 8
  %565 = load i8*, i8** %564, align 8
  %566 = call i8* @strchr(i8* %565, i8 signext 61)
  br label %568

567:                                              ; preds = %556, %553
  br label %568

568:                                              ; preds = %567, %563
  %569 = phi i8* [ %566, %563 ], [ null, %567 ]
  store i8* %569, i8** %20, align 8
  %570 = load i8*, i8** %20, align 8
  %571 = icmp eq i8* %570, null
  br i1 %571, label %572, label %575

572:                                              ; preds = %568
  %573 = load i8**, i8*** %5, align 8
  %574 = load i8*, i8** %573, align 8
  br label %578

575:                                              ; preds = %568
  %576 = load i8*, i8** %20, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 1
  br label %578

578:                                              ; preds = %575, %572
  %579 = phi i8* [ %574, %572 ], [ %577, %575 ]
  %580 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %581 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %580, i32 0, i32 3
  store i8* %579, i8** %581, align 8
  br label %582

582:                                              ; preds = %578, %546, %541
  %583 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %584 = load i32, i32* %583, align 8
  %585 = icmp ne i32 %584, 135
  br i1 %585, label %586, label %888

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = icmp eq i32 %588, 134
  br i1 %589, label %590, label %596

590:                                              ; preds = %586
  %591 = load i32, i32* %27, align 4
  %592 = load i32, i32* @OUTMODE_ONE, align 4
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %596

594:                                              ; preds = %590
  %595 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 6
  store i32 1, i32* %595, align 8
  br label %596

596:                                              ; preds = %594, %590, %586
  %597 = bitcast %struct.manconf* %6 to %struct.mansearch*
  %598 = load i8*, i8** %16, align 8
  %599 = load i8*, i8** %17, align 8
  %600 = load i8*, i8** %18, align 8
  %601 = call i32 @manconf_parse(%struct.mansearch* %597, i8* %598, i8* %599, i8* %600)
  %602 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 11
  %603 = load i32, i32* %4, align 4
  %604 = load i8**, i8*** %5, align 8
  %605 = call i32 @mansearch(%struct.mansearch* %7, %struct.TYPE_4__* %602, i32 %603, i8** %604, %struct.manpage** %11, i64* %23)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %611, label %607

607:                                              ; preds = %596
  %608 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @usage(i32 %609)
  br label %611

611:                                              ; preds = %607, %596
  %612 = load i64, i64* %23, align 8
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %614, label %623

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %616 = load i32, i32* %615, align 8
  %617 = icmp eq i32 %616, 134
  br i1 %617, label %618, label %623

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 11
  %620 = load i32, i32* %4, align 4
  %621 = load i8**, i8*** %5, align 8
  %622 = call i32 @fs_search(%struct.mansearch* %7, %struct.TYPE_4__* %619, i32 %620, i8** %621, %struct.manpage** %11, i64* %23)
  br label %623

623:                                              ; preds = %618, %614, %611
  %624 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %625 = load i32, i32* %624, align 8
  %626 = icmp eq i32 %625, 134
  br i1 %626, label %627, label %709

627:                                              ; preds = %623
  store i32 0, i32* %35, align 4
  br label %628

628:                                              ; preds = %705, %627
  %629 = load i32, i32* %35, align 4
  %630 = load i32, i32* %4, align 4
  %631 = icmp slt i32 %629, %630
  br i1 %631, label %632, label %708

632:                                              ; preds = %628
  %633 = load i8**, i8*** %5, align 8
  %634 = load i32, i32* %35, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8*, i8** %633, i64 %635
  %637 = load i8*, i8** %636, align 8
  %638 = call i8* @strchr(i8* %637, i8 signext 47)
  %639 = icmp eq i8* %638, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %632
  br label %705

641:                                              ; preds = %632
  %642 = load i8**, i8*** %5, align 8
  %643 = load i32, i32* %35, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i8*, i8** %642, i64 %644
  %646 = load i8*, i8** %645, align 8
  %647 = load i32, i32* @R_OK, align 4
  %648 = call i32 @access(i8* %646, i32 %647)
  %649 = icmp eq i32 %648, -1
  br i1 %649, label %650, label %662

650:                                              ; preds = %641
  %651 = load i8**, i8*** %5, align 8
  %652 = load i32, i32* %35, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8*, i8** %651, i64 %653
  %655 = load i8*, i8** %654, align 8
  %656 = call i32 @mandoc_msg_setinfilename(i8* %655)
  %657 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  %658 = load i64, i64* @errno, align 8
  %659 = call i8* @strerror(i64 %658)
  %660 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %657, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %659)
  %661 = call i32 @mandoc_msg_setinfilename(i8* null)
  br label %705

662:                                              ; preds = %641
  %663 = load %struct.manpage*, %struct.manpage** %11, align 8
  %664 = load i64, i64* %23, align 8
  %665 = add i64 %664, 1
  %666 = call %struct.manpage* @mandoc_reallocarray(%struct.manpage* %663, i64 %665, i32 56)
  store %struct.manpage* %666, %struct.manpage** %11, align 8
  %667 = load i8**, i8*** %5, align 8
  %668 = load i32, i32* %35, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8*, i8** %667, i64 %669
  %671 = load i8*, i8** %670, align 8
  %672 = call i8* @mandoc_strdup(i8* %671)
  %673 = load %struct.manpage*, %struct.manpage** %11, align 8
  %674 = load i64, i64* %23, align 8
  %675 = getelementptr inbounds %struct.manpage, %struct.manpage* %673, i64 %674
  %676 = getelementptr inbounds %struct.manpage, %struct.manpage* %675, i32 0, i32 0
  store i8* %672, i8** %676, align 8
  %677 = load %struct.manpage*, %struct.manpage** %11, align 8
  %678 = load i64, i64* %23, align 8
  %679 = getelementptr inbounds %struct.manpage, %struct.manpage* %677, i64 %678
  %680 = getelementptr inbounds %struct.manpage, %struct.manpage* %679, i32 0, i32 1
  store i8* null, i8** %680, align 8
  %681 = load %struct.manpage*, %struct.manpage** %11, align 8
  %682 = load i64, i64* %23, align 8
  %683 = getelementptr inbounds %struct.manpage, %struct.manpage* %681, i64 %682
  %684 = getelementptr inbounds %struct.manpage, %struct.manpage* %683, i32 0, i32 2
  store i8* null, i8** %684, align 8
  %685 = load %struct.manpage*, %struct.manpage** %11, align 8
  %686 = load i64, i64* %23, align 8
  %687 = getelementptr inbounds %struct.manpage, %struct.manpage* %685, i64 %686
  %688 = getelementptr inbounds %struct.manpage, %struct.manpage* %687, i32 0, i32 6
  store i64 0, i64* %688, align 8
  %689 = load i64, i64* @SIZE_MAX, align 8
  %690 = load %struct.manpage*, %struct.manpage** %11, align 8
  %691 = load i64, i64* %23, align 8
  %692 = getelementptr inbounds %struct.manpage, %struct.manpage* %690, i64 %691
  %693 = getelementptr inbounds %struct.manpage, %struct.manpage* %692, i32 0, i32 3
  store i64 %689, i64* %693, align 8
  %694 = load %struct.manpage*, %struct.manpage** %11, align 8
  %695 = load i64, i64* %23, align 8
  %696 = getelementptr inbounds %struct.manpage, %struct.manpage* %694, i64 %695
  %697 = getelementptr inbounds %struct.manpage, %struct.manpage* %696, i32 0, i32 4
  store i32 10, i32* %697, align 8
  %698 = load i64, i64* @FORM_SRC, align 8
  %699 = load %struct.manpage*, %struct.manpage** %11, align 8
  %700 = load i64, i64* %23, align 8
  %701 = getelementptr inbounds %struct.manpage, %struct.manpage* %699, i64 %700
  %702 = getelementptr inbounds %struct.manpage, %struct.manpage* %701, i32 0, i32 5
  store i64 %698, i64* %702, align 8
  %703 = load i64, i64* %23, align 8
  %704 = add i64 %703, 1
  store i64 %704, i64* %23, align 8
  br label %705

705:                                              ; preds = %662, %650, %640
  %706 = load i32, i32* %35, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %35, align 4
  br label %628

708:                                              ; preds = %628
  br label %709

709:                                              ; preds = %708, %623
  %710 = load i64, i64* %23, align 8
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %712, label %721

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %714 = load i32, i32* %713, align 8
  %715 = icmp ne i32 %714, 134
  br i1 %715, label %716, label %718

716:                                              ; preds = %712
  %717 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  br label %718

718:                                              ; preds = %716, %712
  %719 = load i32, i32* @MANDOCLEVEL_BADARG, align 4
  %720 = call i32 @mandoc_msg_setrc(i32 %719)
  br label %1148

721:                                              ; preds = %709
  %722 = load i32, i32* %27, align 4
  %723 = load i32, i32* @OUTMODE_ONE, align 4
  %724 = icmp eq i32 %722, %723
  br i1 %724, label %725, label %726

725:                                              ; preds = %721
  store i32 1, i32* %4, align 4
  store i32 40, i32* %26, align 4
  br label %734

726:                                              ; preds = %721
  %727 = load i32, i32* %27, align 4
  %728 = load i32, i32* @OUTMODE_ALL, align 4
  %729 = icmp eq i32 %727, %728
  br i1 %729, label %730, label %733

730:                                              ; preds = %726
  %731 = load i64, i64* %23, align 8
  %732 = trunc i64 %731 to i32
  store i32 %732, i32* %4, align 4
  br label %733

733:                                              ; preds = %730, %726
  br label %734

734:                                              ; preds = %733, %725
  %735 = load %struct.manpage*, %struct.manpage** %11, align 8
  store %struct.manpage* %735, %struct.manpage** %12, align 8
  store i64 0, i64* %22, align 8
  br label %736

736:                                              ; preds = %875, %734
  %737 = load i64, i64* %22, align 8
  %738 = load i64, i64* %23, align 8
  %739 = icmp ult i64 %737, %738
  br i1 %739, label %740, label %878

740:                                              ; preds = %736
  %741 = load i32, i32* %27, align 4
  %742 = load i32, i32* @OUTMODE_FLN, align 4
  %743 = icmp eq i32 %741, %742
  br i1 %743, label %744, label %751

744:                                              ; preds = %740
  %745 = load %struct.manpage*, %struct.manpage** %11, align 8
  %746 = load i64, i64* %22, align 8
  %747 = getelementptr inbounds %struct.manpage, %struct.manpage* %745, i64 %746
  %748 = getelementptr inbounds %struct.manpage, %struct.manpage* %747, i32 0, i32 0
  %749 = load i8*, i8** %748, align 8
  %750 = call i32 @puts(i8* %749)
  br label %874

751:                                              ; preds = %740
  %752 = load i32, i32* %27, align 4
  %753 = load i32, i32* @OUTMODE_LST, align 4
  %754 = icmp eq i32 %752, %753
  br i1 %754, label %755, label %777

755:                                              ; preds = %751
  %756 = load %struct.manpage*, %struct.manpage** %11, align 8
  %757 = load i64, i64* %22, align 8
  %758 = getelementptr inbounds %struct.manpage, %struct.manpage* %756, i64 %757
  %759 = getelementptr inbounds %struct.manpage, %struct.manpage* %758, i32 0, i32 1
  %760 = load i8*, i8** %759, align 8
  %761 = load %struct.manpage*, %struct.manpage** %11, align 8
  %762 = load i64, i64* %22, align 8
  %763 = getelementptr inbounds %struct.manpage, %struct.manpage* %761, i64 %762
  %764 = getelementptr inbounds %struct.manpage, %struct.manpage* %763, i32 0, i32 2
  %765 = load i8*, i8** %764, align 8
  %766 = icmp eq i8* %765, null
  br i1 %766, label %767, label %768

767:                                              ; preds = %755
  br label %774

768:                                              ; preds = %755
  %769 = load %struct.manpage*, %struct.manpage** %11, align 8
  %770 = load i64, i64* %22, align 8
  %771 = getelementptr inbounds %struct.manpage, %struct.manpage* %769, i64 %770
  %772 = getelementptr inbounds %struct.manpage, %struct.manpage* %771, i32 0, i32 2
  %773 = load i8*, i8** %772, align 8
  br label %774

774:                                              ; preds = %768, %767
  %775 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), %767 ], [ %773, %768 ]
  %776 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %760, i8* %775)
  br label %873

777:                                              ; preds = %751
  %778 = load i32, i32* %27, align 4
  %779 = load i32, i32* @OUTMODE_ONE, align 4
  %780 = icmp eq i32 %778, %779
  br i1 %780, label %781, label %872

781:                                              ; preds = %777
  %782 = load %struct.manpage*, %struct.manpage** %11, align 8
  %783 = load i64, i64* %22, align 8
  %784 = getelementptr inbounds %struct.manpage, %struct.manpage* %782, i64 %783
  %785 = getelementptr inbounds %struct.manpage, %struct.manpage* %784, i32 0, i32 0
  %786 = load i8*, i8** %785, align 8
  store i8* %786, i8** %14, align 8
  %787 = load i8*, i8** %14, align 8
  %788 = call i32 @strcspn(i8* %787, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %789 = load i8*, i8** %14, align 8
  %790 = sext i32 %788 to i64
  %791 = getelementptr inbounds i8, i8* %789, i64 %790
  store i8* %791, i8** %14, align 8
  %792 = load i8*, i8** %14, align 8
  %793 = getelementptr inbounds i8, i8* %792, i64 0
  %794 = load i8, i8* %793, align 1
  %795 = sext i8 %794 to i32
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %798

797:                                              ; preds = %781
  br label %875

798:                                              ; preds = %781
  %799 = load i32*, i32** @sec_prios, align 8
  %800 = load i8*, i8** %14, align 8
  %801 = getelementptr inbounds i8, i8* %800, i64 0
  %802 = load i8, i8* %801, align 1
  %803 = sext i8 %802 to i32
  %804 = sub nsw i32 %803, 49
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i32, i32* %799, i64 %805
  %807 = load i32, i32* %806, align 4
  store i32 %807, i32* %25, align 4
  %808 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  %809 = load i8*, i8** %808, align 8
  %810 = icmp ne i8* %809, null
  br i1 %810, label %811, label %826

811:                                              ; preds = %798
  %812 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  %813 = load i8*, i8** %812, align 8
  %814 = call i64 @strlen(i8* %813)
  store i64 %814, i64* %24, align 8
  %815 = load i8*, i8** %14, align 8
  %816 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  %817 = load i8*, i8** %816, align 8
  %818 = load i64, i64* %24, align 8
  %819 = call i64 @strncmp(i8* %815, i8* %817, i64 %818)
  %820 = icmp eq i64 %819, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %811
  %822 = load i64, i64* %24, align 8
  %823 = load i8*, i8** %14, align 8
  %824 = getelementptr inbounds i8, i8* %823, i64 %822
  store i8* %824, i8** %14, align 8
  br label %825

825:                                              ; preds = %821, %811
  br label %829

826:                                              ; preds = %798
  %827 = load i8*, i8** %14, align 8
  %828 = getelementptr inbounds i8, i8* %827, i32 1
  store i8* %828, i8** %14, align 8
  br label %829

829:                                              ; preds = %826, %825
  %830 = load i8*, i8** %14, align 8
  %831 = load i8, i8* %830, align 1
  %832 = sext i8 %831 to i32
  %833 = icmp ne i32 %832, 47
  br i1 %833, label %834, label %837

834:                                              ; preds = %829
  %835 = load i32, i32* %25, align 4
  %836 = add nsw i32 %835, 10
  store i32 %836, i32* %25, align 4
  br label %837

837:                                              ; preds = %834, %829
  %838 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  %839 = load i8*, i8** %838, align 8
  %840 = icmp ne i8* %839, null
  br i1 %840, label %841, label %862

841:                                              ; preds = %837
  %842 = load i8*, i8** %14, align 8
  %843 = call i64 @strlen(i8* %842)
  %844 = load i64, i64* %24, align 8
  %845 = add i64 %844, 3
  %846 = icmp ule i64 %843, %845
  br i1 %846, label %859, label %847

847:                                              ; preds = %841
  %848 = load i8*, i8** %14, align 8
  %849 = load i8*, i8** %14, align 8
  %850 = call i64 @strlen(i8* %849)
  %851 = getelementptr inbounds i8, i8* %848, i64 %850
  %852 = load i64, i64* %24, align 8
  %853 = sub i64 0, %852
  %854 = getelementptr inbounds i8, i8* %851, i64 %853
  %855 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 5
  %856 = load i8*, i8** %855, align 8
  %857 = call i64 @strcmp(i8* %854, i8* %856)
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %859, label %862

859:                                              ; preds = %847, %841
  %860 = load i32, i32* %25, align 4
  %861 = add nsw i32 %860, 20
  store i32 %861, i32* %25, align 4
  br label %862

862:                                              ; preds = %859, %847, %837
  %863 = load i32, i32* %25, align 4
  %864 = load i32, i32* %26, align 4
  %865 = icmp sge i32 %863, %864
  br i1 %865, label %866, label %867

866:                                              ; preds = %862
  br label %875

867:                                              ; preds = %862
  %868 = load i32, i32* %25, align 4
  store i32 %868, i32* %26, align 4
  %869 = load %struct.manpage*, %struct.manpage** %11, align 8
  %870 = load i64, i64* %22, align 8
  %871 = getelementptr inbounds %struct.manpage, %struct.manpage* %869, i64 %870
  store %struct.manpage* %871, %struct.manpage** %12, align 8
  br label %872

872:                                              ; preds = %867, %777
  br label %873

873:                                              ; preds = %872, %774
  br label %874

874:                                              ; preds = %873, %744
  br label %875

875:                                              ; preds = %874, %866, %797
  %876 = load i64, i64* %22, align 8
  %877 = add i64 %876, 1
  store i64 %877, i64* %22, align 8
  br label %736

878:                                              ; preds = %736
  %879 = load i32, i32* %27, align 4
  %880 = load i32, i32* @OUTMODE_FLN, align 4
  %881 = icmp eq i32 %879, %880
  br i1 %881, label %886, label %882

882:                                              ; preds = %878
  %883 = load i32, i32* %27, align 4
  %884 = load i32, i32* @OUTMODE_LST, align 4
  %885 = icmp eq i32 %883, %884
  br i1 %885, label %886, label %887

886:                                              ; preds = %882, %878
  br label %1148

887:                                              ; preds = %882
  br label %888

888:                                              ; preds = %887, %582
  %889 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %890 = load i32, i32* %889, align 8
  %891 = icmp eq i32 %890, 135
  br i1 %891, label %892, label %913

892:                                              ; preds = %888
  %893 = load i8*, i8** %18, align 8
  %894 = icmp ne i8* %893, null
  br i1 %894, label %895, label %913

895:                                              ; preds = %892
  %896 = load i8*, i8** %18, align 8
  %897 = call i64 @strcmp(i8* %896, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %899, label %903

899:                                              ; preds = %895
  %900 = load i32, i32* @MPARSE_MDOC, align 4
  %901 = load i32, i32* %31, align 4
  %902 = or i32 %901, %900
  store i32 %902, i32* %31, align 4
  br label %912

903:                                              ; preds = %895
  %904 = load i8*, i8** %18, align 8
  %905 = call i64 @strcmp(i8* %904, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %906 = icmp eq i64 %905, 0
  br i1 %906, label %907, label %911

907:                                              ; preds = %903
  %908 = load i32, i32* @MPARSE_MAN, align 4
  %909 = load i32, i32* %31, align 4
  %910 = or i32 %909, %908
  store i32 %910, i32* %31, align 4
  br label %911

911:                                              ; preds = %907, %903
  br label %912

912:                                              ; preds = %911, %899
  br label %913

913:                                              ; preds = %912, %892, %888
  %914 = call i32 (...) @mchars_alloc()
  %915 = load i32, i32* %31, align 4
  %916 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 12
  %917 = load i32, i32* %916, align 8
  %918 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 3
  %919 = load i8*, i8** %918, align 8
  %920 = call i32 @mparse_alloc(i32 %915, i32 %917, i8* %919)
  %921 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 7
  store i32 %920, i32* %921, align 4
  %922 = load i32, i32* %4, align 4
  %923 = icmp slt i32 %922, 1
  br i1 %923, label %924, label %946

924:                                              ; preds = %913
  %925 = load i32, i32* %32, align 4
  %926 = icmp ne i32 %925, 0
  br i1 %926, label %927, label %938

927:                                              ; preds = %924
  %928 = call %struct.tag_files* (...) @tag_init()
  store %struct.tag_files* %928, %struct.tag_files** %10, align 8
  %929 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %930 = icmp ne %struct.tag_files* %929, null
  br i1 %930, label %931, label %937

931:                                              ; preds = %927
  %932 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %933 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %932, i32 0, i32 3
  %934 = load i8*, i8** %933, align 8
  %935 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %936 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %935, i32 0, i32 0
  store i8* %934, i8** %936, align 8
  br label %937

937:                                              ; preds = %931, %927
  br label %938

938:                                              ; preds = %937, %924
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8** %15, align 8
  %939 = load i8*, i8** %15, align 8
  %940 = call i32 @mandoc_msg_setinfilename(i8* %939)
  %941 = bitcast %struct.curparse* %8 to %struct.mansearch*
  %942 = load i32, i32* @STDIN_FILENO, align 4
  %943 = load i8*, i8** %15, align 8
  %944 = call i32 @parse(%struct.mansearch* %941, i32 %942, i8* %943)
  %945 = call i32 @mandoc_msg_setinfilename(i8* null)
  br label %946

946:                                              ; preds = %938, %913
  %947 = load i32, i32* @O_RDONLY, align 4
  %948 = load i32, i32* @O_DIRECTORY, align 4
  %949 = or i32 %947, %948
  %950 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %949)
  store i32 %950, i32* %29, align 4
  br label %951

951:                                              ; preds = %1112, %946
  %952 = load i32, i32* %4, align 4
  %953 = icmp sgt i32 %952, 0
  br i1 %953, label %954, label %1113

954:                                              ; preds = %951
  %955 = load %struct.manpage*, %struct.manpage** %12, align 8
  %956 = icmp ne %struct.manpage* %955, null
  br i1 %956, label %957, label %984

957:                                              ; preds = %954
  %958 = load %struct.manpage*, %struct.manpage** %12, align 8
  %959 = getelementptr inbounds %struct.manpage, %struct.manpage* %958, i32 0, i32 3
  %960 = load i64, i64* %959, align 8
  %961 = load i64, i64* @SIZE_MAX, align 8
  %962 = icmp ne i64 %960, %961
  br i1 %962, label %963, label %973

963:                                              ; preds = %957
  %964 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 11
  %965 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %964, i32 0, i32 0
  %966 = load i32*, i32** %965, align 8
  %967 = load %struct.manpage*, %struct.manpage** %12, align 8
  %968 = getelementptr inbounds %struct.manpage, %struct.manpage* %967, i32 0, i32 3
  %969 = load i64, i64* %968, align 8
  %970 = getelementptr inbounds i32, i32* %966, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = call i32 @chdir(i32 %971)
  br label %980

973:                                              ; preds = %957
  %974 = load i32, i32* %29, align 4
  %975 = icmp ne i32 %974, -1
  br i1 %975, label %976, label %979

976:                                              ; preds = %973
  %977 = load i32, i32* %29, align 4
  %978 = call i32 @fchdir(i32 %977)
  br label %979

979:                                              ; preds = %976, %973
  br label %980

980:                                              ; preds = %979, %963
  %981 = load %struct.manpage*, %struct.manpage** %12, align 8
  %982 = getelementptr inbounds %struct.manpage, %struct.manpage* %981, i32 0, i32 0
  %983 = load i8*, i8** %982, align 8
  store i8* %983, i8** %15, align 8
  br label %987

984:                                              ; preds = %954
  %985 = load i8**, i8*** %5, align 8
  %986 = load i8*, i8** %985, align 8
  store i8* %986, i8** %15, align 8
  br label %987

987:                                              ; preds = %984, %980
  %988 = load i8*, i8** %15, align 8
  %989 = call i32 @mandoc_msg_setinfilename(i8* %988)
  %990 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 7
  %991 = load i32, i32* %990, align 4
  %992 = load i8*, i8** %15, align 8
  %993 = call i32 @mparse_open(i32 %991, i8* %992)
  store i32 %993, i32* %28, align 4
  %994 = load i32, i32* %28, align 4
  %995 = icmp ne i32 %994, -1
  br i1 %995, label %996, label %1073

996:                                              ; preds = %987
  %997 = load i32, i32* %32, align 4
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1010

999:                                              ; preds = %996
  store i32 0, i32* %32, align 4
  %1000 = call %struct.tag_files* (...) @tag_init()
  store %struct.tag_files* %1000, %struct.tag_files** %10, align 8
  %1001 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1002 = icmp ne %struct.tag_files* %1001, null
  br i1 %1002, label %1003, label %1009

1003:                                             ; preds = %999
  %1004 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %1005 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1004, i32 0, i32 3
  %1006 = load i8*, i8** %1005, align 8
  %1007 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1008 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1007, i32 0, i32 0
  store i8* %1006, i8** %1008, align 8
  br label %1009

1009:                                             ; preds = %1003, %999
  br label %1010

1010:                                             ; preds = %1009, %996
  %1011 = load %struct.manpage*, %struct.manpage** %12, align 8
  %1012 = icmp eq %struct.manpage* %1011, null
  br i1 %1012, label %1019, label %1013

1013:                                             ; preds = %1010
  %1014 = load %struct.manpage*, %struct.manpage** %12, align 8
  %1015 = getelementptr inbounds %struct.manpage, %struct.manpage* %1014, i32 0, i32 5
  %1016 = load i64, i64* %1015, align 8
  %1017 = load i64, i64* @FORM_SRC, align 8
  %1018 = icmp eq i64 %1016, %1017
  br i1 %1018, label %1019, label %1024

1019:                                             ; preds = %1013, %1010
  %1020 = bitcast %struct.curparse* %8 to %struct.mansearch*
  %1021 = load i32, i32* %28, align 4
  %1022 = load i8*, i8** %15, align 8
  %1023 = call i32 @parse(%struct.mansearch* %1020, i32 %1021, i8* %1022)
  br label %1030

1024:                                             ; preds = %1013
  %1025 = load i32, i32* %28, align 4
  %1026 = getelementptr inbounds %struct.manconf, %struct.manconf* %6, i32 0, i32 10
  %1027 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1026, i32 0, i32 0
  %1028 = load i32, i32* %1027, align 8
  %1029 = call i32 @passthrough(i32 %1025, i32 %1028)
  br label %1030

1030:                                             ; preds = %1024, %1019
  %1031 = load i32, i32* @stdout, align 4
  %1032 = call i64 @ferror(i32 %1031)
  %1033 = icmp ne i64 %1032, 0
  br i1 %1033, label %1034, label %1054

1034:                                             ; preds = %1030
  %1035 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1036 = icmp ne %struct.tag_files* %1035, null
  br i1 %1036, label %1037, label %1048

1037:                                             ; preds = %1034
  %1038 = load i32, i32* @MANDOCERR_WRITE, align 4
  %1039 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1040 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1039, i32 0, i32 3
  %1041 = load i32, i32* %1040, align 8
  %1042 = sext i32 %1041 to i64
  %1043 = inttoptr i64 %1042 to i8*
  %1044 = load i64, i64* @errno, align 8
  %1045 = call i8* @strerror(i64 %1044)
  %1046 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %1038, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %1043, i8* %1045)
  %1047 = call i32 (...) @tag_unlink()
  store %struct.tag_files* null, %struct.tag_files** %10, align 8
  br label %1053

1048:                                             ; preds = %1034
  %1049 = load i32, i32* @MANDOCERR_WRITE, align 4
  %1050 = load i64, i64* @errno, align 8
  %1051 = call i8* @strerror(i64 %1050)
  %1052 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %1049, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %1051)
  br label %1053

1053:                                             ; preds = %1048, %1037
  br label %1113

1054:                                             ; preds = %1030
  %1055 = load i32, i32* %4, align 4
  %1056 = icmp sgt i32 %1055, 1
  br i1 %1056, label %1057, label %1072

1057:                                             ; preds = %1054
  %1058 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  %1059 = load i32, i32* %1058, align 4
  %1060 = icmp sle i32 %1059, 128
  br i1 %1060, label %1061, label %1072

1061:                                             ; preds = %1057
  %1062 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1063 = load i32*, i32** %1062, align 8
  %1064 = icmp eq i32* %1063, null
  br i1 %1064, label %1065, label %1068

1065:                                             ; preds = %1061
  %1066 = bitcast %struct.curparse* %8 to %struct.mansearch*
  %1067 = call i32 @outdata_alloc(%struct.mansearch* %1066)
  br label %1068

1068:                                             ; preds = %1065, %1061
  %1069 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1070 = load i32*, i32** %1069, align 8
  %1071 = call i32 @terminal_sepline(i32* %1070)
  br label %1072

1072:                                             ; preds = %1068, %1057, %1054
  br label %1085

1073:                                             ; preds = %987
  %1074 = load %struct.manpage*, %struct.manpage** %12, align 8
  %1075 = icmp eq %struct.manpage* %1074, null
  br i1 %1075, label %1076, label %1078

1076:                                             ; preds = %1073
  %1077 = load i32, i32* @MANDOCERR_BADARG_BAD, align 4
  br label %1080

1078:                                             ; preds = %1073
  %1079 = load i32, i32* @MANDOCERR_OPEN, align 4
  br label %1080

1080:                                             ; preds = %1078, %1076
  %1081 = phi i32 [ %1077, %1076 ], [ %1079, %1078 ]
  %1082 = load i64, i64* @errno, align 8
  %1083 = call i8* @strerror(i64 %1082)
  %1084 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %1081, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %1083)
  br label %1085

1085:                                             ; preds = %1080, %1072
  %1086 = call i32 @mandoc_msg_setinfilename(i8* null)
  %1087 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 9
  %1088 = load i64, i64* %1087, align 8
  %1089 = icmp ne i64 %1088, 0
  br i1 %1089, label %1090, label %1095

1090:                                             ; preds = %1085
  %1091 = call i64 (...) @mandoc_msg_getrc()
  %1092 = load i64, i64* @MANDOCLEVEL_OK, align 8
  %1093 = icmp ne i64 %1091, %1092
  br i1 %1093, label %1094, label %1095

1094:                                             ; preds = %1090
  br label %1113

1095:                                             ; preds = %1090, %1085
  %1096 = load %struct.manpage*, %struct.manpage** %12, align 8
  %1097 = icmp ne %struct.manpage* %1096, null
  br i1 %1097, label %1098, label %1101

1098:                                             ; preds = %1095
  %1099 = load %struct.manpage*, %struct.manpage** %12, align 8
  %1100 = getelementptr inbounds %struct.manpage, %struct.manpage* %1099, i32 1
  store %struct.manpage* %1100, %struct.manpage** %12, align 8
  br label %1104

1101:                                             ; preds = %1095
  %1102 = load i8**, i8*** %5, align 8
  %1103 = getelementptr inbounds i8*, i8** %1102, i32 1
  store i8** %1103, i8*** %5, align 8
  br label %1104

1104:                                             ; preds = %1101, %1098
  %1105 = load i32, i32* %4, align 4
  %1106 = add nsw i32 %1105, -1
  store i32 %1106, i32* %4, align 4
  %1107 = icmp ne i32 %1106, 0
  br i1 %1107, label %1108, label %1112

1108:                                             ; preds = %1104
  %1109 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 7
  %1110 = load i32, i32* %1109, align 4
  %1111 = call i32 @mparse_reset(i32 %1110)
  br label %1112

1112:                                             ; preds = %1108, %1104
  br label %951

1113:                                             ; preds = %1094, %1053, %951
  %1114 = load i32, i32* %29, align 4
  %1115 = icmp ne i32 %1114, -1
  br i1 %1115, label %1116, label %1121

1116:                                             ; preds = %1113
  %1117 = load i32, i32* %29, align 4
  %1118 = call i32 @fchdir(i32 %1117)
  %1119 = load i32, i32* %29, align 4
  %1120 = call i32 @close(i32 %1119)
  br label %1121

1121:                                             ; preds = %1116, %1113
  %1122 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1123 = load i32*, i32** %1122, align 8
  %1124 = icmp ne i32* %1123, null
  br i1 %1124, label %1125, label %1142

1125:                                             ; preds = %1121
  %1126 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  %1127 = load i32, i32* %1126, align 4
  switch i32 %1127, label %1140 [
    i32 132, label %1128
    i32 128, label %1132
    i32 131, label %1132
    i32 133, label %1132
    i32 130, label %1136
    i32 129, label %1136
  ]

1128:                                             ; preds = %1125
  %1129 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1130 = load i32*, i32** %1129, align 8
  %1131 = call i32 @html_free(i32* %1130)
  br label %1141

1132:                                             ; preds = %1125, %1125, %1125
  %1133 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1134 = load i32*, i32** %1133, align 8
  %1135 = call i32 @ascii_free(i32* %1134)
  br label %1141

1136:                                             ; preds = %1125, %1125
  %1137 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 8
  %1138 = load i32*, i32** %1137, align 8
  %1139 = call i32 @pspdf_free(i32* %1138)
  br label %1141

1140:                                             ; preds = %1125
  br label %1141

1141:                                             ; preds = %1140, %1136, %1132, %1128
  br label %1142

1142:                                             ; preds = %1141, %1121
  %1143 = call i32 (...) @mandoc_xr_free()
  %1144 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 7
  %1145 = load i32, i32* %1144, align 4
  %1146 = call i32 @mparse_free(i32 %1145)
  %1147 = call i32 (...) @mchars_free()
  br label %1148

1148:                                             ; preds = %1142, %886, %718
  %1149 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %1150 = load i32, i32* %1149, align 8
  %1151 = icmp ne i32 %1150, 135
  br i1 %1151, label %1152, label %1158

1152:                                             ; preds = %1148
  %1153 = bitcast %struct.manconf* %6 to %struct.mansearch*
  %1154 = call i32 @manconf_free(%struct.mansearch* %1153)
  %1155 = load %struct.manpage*, %struct.manpage** %11, align 8
  %1156 = load i64, i64* %23, align 8
  %1157 = call i32 @mansearch_free(%struct.manpage* %1155, i64 %1156)
  br label %1158

1158:                                             ; preds = %1152, %1148
  %1159 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 3
  %1160 = load i8*, i8** %1159, align 8
  %1161 = call i32 @free(i8* %1160)
  %1162 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1163 = icmp ne %struct.tag_files* %1162, null
  br i1 %1163, label %1164, label %1258

1164:                                             ; preds = %1158
  %1165 = load i32, i32* @stdout, align 4
  %1166 = call i32 @fclose(i32 %1165)
  %1167 = call i32 (...) @tag_write()
  %1168 = call i64 @getpgid(i32 0)
  store i64 %1168, i64* %38, align 8
  %1169 = load i64, i64* %38, align 8
  %1170 = call i64 (...) @getpid()
  %1171 = icmp eq i64 %1169, %1170
  br i1 %1171, label %1172, label %1175

1172:                                             ; preds = %1164
  %1173 = call i32 (...) @getppid()
  %1174 = call i64 @getpgid(i32 %1173)
  br label %1177

1175:                                             ; preds = %1164
  %1176 = load i64, i64* %38, align 8
  br label %1177

1177:                                             ; preds = %1175, %1172
  %1178 = phi i64 [ %1174, %1172 ], [ %1176, %1175 ]
  %1179 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1180 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1179, i32 0, i32 2
  store i64 %1178, i64* %1180, align 8
  store i64 0, i64* %36, align 8
  %1181 = load i32, i32* @SIGSTOP, align 4
  store i32 %1181, i32* %34, align 4
  br label %1182

1182:                                             ; preds = %1253, %1209, %1203, %1177
  %1183 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1184 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1183, i32 0, i32 1
  %1185 = load i32, i32* %1184, align 8
  %1186 = call i64 @tcgetpgrp(i32 %1185)
  store i64 %1186, i64* %37, align 8
  %1187 = load i64, i64* %37, align 8
  %1188 = load i64, i64* %38, align 8
  %1189 = icmp ne i64 %1187, %1188
  br i1 %1189, label %1190, label %1212

1190:                                             ; preds = %1182
  %1191 = load i64, i64* %37, align 8
  %1192 = load i64, i64* %36, align 8
  %1193 = icmp eq i64 %1191, %1192
  br i1 %1193, label %1194, label %1205

1194:                                             ; preds = %1190
  %1195 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1196 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1195, i32 0, i32 1
  %1197 = load i32, i32* %1196, align 8
  %1198 = load i64, i64* %38, align 8
  %1199 = call i32 @tcsetpgrp(i32 %1197, i64 %1198)
  %1200 = load i32, i32* %34, align 4
  %1201 = load i32, i32* @SIGTTIN, align 4
  %1202 = icmp eq i32 %1200, %1201
  br i1 %1202, label %1203, label %1204

1203:                                             ; preds = %1194
  br label %1182

1204:                                             ; preds = %1194
  br label %1209

1205:                                             ; preds = %1190
  %1206 = load i64, i64* %37, align 8
  %1207 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1208 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1207, i32 0, i32 2
  store i64 %1206, i64* %1208, align 8
  br label %1209

1209:                                             ; preds = %1205, %1204
  %1210 = load i32, i32* %34, align 4
  %1211 = call i32 @kill(i64 0, i32 %1210)
  br label %1182

1212:                                             ; preds = %1182
  %1213 = load i64, i64* %36, align 8
  %1214 = icmp ne i64 %1213, 0
  br i1 %1214, label %1215, label %1224

1215:                                             ; preds = %1212
  %1216 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1217 = getelementptr inbounds %struct.tag_files, %struct.tag_files* %1216, i32 0, i32 1
  %1218 = load i32, i32* %1217, align 8
  %1219 = load i64, i64* %36, align 8
  %1220 = call i32 @tcsetpgrp(i32 %1218, i64 %1219)
  %1221 = load i64, i64* %36, align 8
  %1222 = load i32, i32* @SIGCONT, align 4
  %1223 = call i32 @kill(i64 %1221, i32 %1222)
  br label %1227

1224:                                             ; preds = %1212
  %1225 = load %struct.tag_files*, %struct.tag_files** %10, align 8
  %1226 = call i64 @spawn_pager(%struct.tag_files* %1225)
  store i64 %1226, i64* %36, align 8
  br label %1227

1227:                                             ; preds = %1224, %1215
  br label %1228

1228:                                             ; preds = %1239, %1227
  %1229 = load i64, i64* %36, align 8
  %1230 = load i32, i32* @WUNTRACED, align 4
  %1231 = call i64 @waitpid(i64 %1229, i32* %33, i32 %1230)
  store i64 %1231, i64* %39, align 8
  %1232 = icmp eq i64 %1231, -1
  br i1 %1232, label %1233, label %1237

1233:                                             ; preds = %1228
  %1234 = load i64, i64* @errno, align 8
  %1235 = load i64, i64* @EINTR, align 8
  %1236 = icmp eq i64 %1234, %1235
  br label %1237

1237:                                             ; preds = %1233, %1228
  %1238 = phi i1 [ false, %1228 ], [ %1236, %1233 ]
  br i1 %1238, label %1239, label %1240

1239:                                             ; preds = %1237
  br label %1228

1240:                                             ; preds = %1237
  %1241 = load i64, i64* %39, align 8
  %1242 = icmp eq i64 %1241, -1
  br i1 %1242, label %1243, label %1248

1243:                                             ; preds = %1240
  %1244 = load i32, i32* @MANDOCERR_WAIT, align 4
  %1245 = load i64, i64* @errno, align 8
  %1246 = call i8* @strerror(i64 %1245)
  %1247 = call i32 (i32, i32, i32, i8*, i8*, ...) @mandoc_msg(i32 %1244, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %1246)
  br label %1256

1248:                                             ; preds = %1240
  %1249 = load i32, i32* %33, align 4
  %1250 = call i32 @WIFSTOPPED(i32 %1249)
  %1251 = icmp ne i32 %1250, 0
  br i1 %1251, label %1253, label %1252

1252:                                             ; preds = %1248
  br label %1256

1253:                                             ; preds = %1248
  %1254 = load i32, i32* %33, align 4
  %1255 = call i32 @WSTOPSIG(i32 %1254)
  store i32 %1255, i32* %34, align 4
  br label %1182

1256:                                             ; preds = %1252, %1243
  %1257 = call i32 (...) @tag_unlink()
  br label %1273

1258:                                             ; preds = %1158
  %1259 = getelementptr inbounds %struct.curparse, %struct.curparse* %8, i32 0, i32 2
  %1260 = load i32, i32* %1259, align 4
  %1261 = load i32, i32* @OUTT_LINT, align 4
  %1262 = icmp ne i32 %1260, %1261
  br i1 %1262, label %1263, label %1272

1263:                                             ; preds = %1258
  %1264 = getelementptr inbounds %struct.mansearch, %struct.mansearch* %7, i32 0, i32 1
  %1265 = load i32, i32* %1264, align 8
  %1266 = icmp eq i32 %1265, 135
  br i1 %1266, label %1270, label %1267

1267:                                             ; preds = %1263
  %1268 = load i64, i64* %23, align 8
  %1269 = icmp ugt i64 %1268, 0
  br i1 %1269, label %1270, label %1272

1270:                                             ; preds = %1267, %1263
  %1271 = call i32 (...) @mandoc_msg_summary()
  br label %1272

1272:                                             ; preds = %1270, %1267, %1258
  br label %1273

1273:                                             ; preds = %1272, %1256
  %1274 = call i64 (...) @mandoc_msg_getrc()
  %1275 = trunc i64 %1274 to i32
  store i32 %1275, i32* %3, align 4
  br label %1276

1276:                                             ; preds = %1273, %376, %328, %307, %211, %174, %164, %71
  %1277 = load i32, i32* %3, align 4
  ret i32 %1277
}

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @mandoc_msg_setoutfile(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mandocdb(i32, i8**) #1

declare dso_local i32 @memset(%struct.mansearch*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @mandoc_msg_getrc(...) #1

declare dso_local i32 @mandoc_msg_setmin(i32) #1

declare dso_local i32 @woptions(%struct.mansearch*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @manconf_output(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @manconf_parse(%struct.mansearch*, i8*, i8*, i8*) #1

declare dso_local i32 @mansearch(%struct.mansearch*, %struct.TYPE_4__*, i32, i8**, %struct.manpage**, i64*) #1

declare dso_local i32 @fs_search(%struct.mansearch*, %struct.TYPE_4__*, i32, i8**, %struct.manpage**, i64*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @mandoc_msg_setinfilename(i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local %struct.manpage* @mandoc_reallocarray(%struct.manpage*, i64, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mandoc_msg_setrc(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mchars_alloc(...) #1

declare dso_local i32 @mparse_alloc(i32, i32, i8*) #1

declare dso_local %struct.tag_files* @tag_init(...) #1

declare dso_local i32 @parse(%struct.mansearch*, i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @chdir(i32) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @mparse_open(i32, i8*) #1

declare dso_local i32 @passthrough(i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @tag_unlink(...) #1

declare dso_local i32 @outdata_alloc(%struct.mansearch*) #1

declare dso_local i32 @terminal_sepline(i32*) #1

declare dso_local i32 @mparse_reset(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @html_free(i32*) #1

declare dso_local i32 @ascii_free(i32*) #1

declare dso_local i32 @pspdf_free(i32*) #1

declare dso_local i32 @mandoc_xr_free(...) #1

declare dso_local i32 @mparse_free(i32) #1

declare dso_local i32 @mchars_free(...) #1

declare dso_local i32 @manconf_free(%struct.mansearch*) #1

declare dso_local i32 @mansearch_free(%struct.manpage*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @tag_write(...) #1

declare dso_local i64 @getpgid(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i64 @tcgetpgrp(i32) #1

declare dso_local i32 @tcsetpgrp(i32, i64) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @spawn_pager(%struct.tag_files*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i32 @mandoc_msg_summary(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
