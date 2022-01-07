; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_runcmdshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_runcmdshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32 }
%struct.arglist = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@rst_opendir = common dso_local global i32 0, align 4
@glob_readdir = common dso_local global i32 0, align 4
@rst_closedir = common dso_local global i32 0, align 4
@glob_stat = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@reset = common dso_local global i32 0, align 4
@nextarg = common dso_local global i32* null, align 8
@volno = common dso_local global i64 0, align 8
@runshell = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@mflag = common dso_local global i32 0, align 4
@addfile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@LEAF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: not a directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@NEW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: not on extraction list\0A\00", align 1
@deletefile = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@dflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Available commands are:\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\09ls [arg] - list directory\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\09cd arg - change directory\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\09pwd - print current directory\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\09add [arg] - add `arg' to list of\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c" files to be extracted\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\09delete [arg] - delete `arg' from\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c" list of files to be extracted\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\09extract - extract requested files\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\09setmodes - set modes of requested directories\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\09quit - immediately exit program\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\09what - list dump header information\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\09verbose - toggle verbose flag\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c" (useful with ``ls'')\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\09help or `?' - print this list\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"If no `arg' is supplied, the current\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c" directory is used\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"/\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"xit\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@vflag = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [18 x i8] c"verbose mode off\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"verbose mode on\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"setmodes\00", align 1
@FORCE = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"debugging mode off\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"debugging mode on\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"%s: unknown command; type ? for help\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runcmdshell() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.arglist, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %22 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @rst_opendir, align 4
  %25 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @glob_readdir, align 4
  %28 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @rst_closedir, align 4
  %31 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @glob_stat, align 8
  %34 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @glob_stat, align 8
  %37 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = trunc i64 %10 to i32
  %40 = call i32 @canon(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %39)
  br label %41

41:                                               ; preds = %236, %0
  %42 = load i32, i32* @reset, align 4
  %43 = call i64 @setjmp(i32 %42) #4
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.arglist, %struct.arglist* %3, i32 0, i32 1
  %53 = call i32 @globfree(%struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %49, %45
  store i32* null, i32** @nextarg, align 8
  store i64 0, i64* @volno, align 8
  br label %55

55:                                               ; preds = %54, %41
  store i32 1, i32* @runshell, align 4
  %56 = trunc i64 %14 to i32
  %57 = call i32 @getcmd(i8* %12, i8* %18, i8* %15, i32 %56, %struct.arglist* %3)
  %58 = getelementptr inbounds i8, i8* %18, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  switch i32 %60, label %232 [
    i32 97, label %61
    i32 99, label %80
    i32 100, label %100
    i32 101, label %125
    i32 104, label %139
    i32 63, label %145
    i32 108, label %148
    i32 112, label %155
    i32 113, label %173
    i32 120, label %179
    i32 118, label %185
    i32 115, label %201
    i32 119, label %209
    i32 68, label %216
  ]

61:                                               ; preds = %55
  %62 = call i32 @strlen(i8* %18)
  %63 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %233

66:                                               ; preds = %61
  %67 = call i32 @dirlookup(i8* %15)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %236

71:                                               ; preds = %66
  %72 = load i32, i32* @mflag, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @pathcheck(i8* %15)
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @addfile, align 4
  %79 = call i32 @treescan(i8* %15, i32 %77, i32 %78)
  br label %236

80:                                               ; preds = %55
  %81 = call i32 @strlen(i8* %18)
  %82 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %233

85:                                               ; preds = %80
  %86 = call i32 @dirlookup(i8* %15)
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %236

90:                                               ; preds = %85
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @inodetype(i32 %91)
  %93 = load i32, i32* @LEAF, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  br label %236

98:                                               ; preds = %90
  %99 = call i32 @strcpy(i8* %12, i8* %15)
  br label %236

100:                                              ; preds = %55
  %101 = call i32 @strlen(i8* %18)
  %102 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %233

105:                                              ; preds = %100
  %106 = call %struct.entry* @lookupname(i8* %15)
  store %struct.entry* %106, %struct.entry** %1, align 8
  %107 = load %struct.entry*, %struct.entry** %1, align 8
  %108 = icmp eq %struct.entry* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = load %struct.entry*, %struct.entry** %1, align 8
  %111 = getelementptr inbounds %struct.entry, %struct.entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NEW, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109, %105
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %15)
  br label %236

119:                                              ; preds = %109
  %120 = load %struct.entry*, %struct.entry** %1, align 8
  %121 = getelementptr inbounds %struct.entry, %struct.entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @deletefile, align 4
  %124 = call i32 @treescan(i8* %15, i32 %122, i32 %123)
  br label %236

125:                                              ; preds = %55
  %126 = call i32 @strlen(i8* %18)
  %127 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %233

130:                                              ; preds = %125
  %131 = call i32 (...) @createfiles()
  %132 = call i32 (...) @createlinks()
  %133 = call i32 @setdirmodes(i32 0)
  %134 = load i32, i32* @dflag, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 (...) @checkrestore()
  br label %138

138:                                              ; preds = %136, %130
  store i64 0, i64* @volno, align 8
  br label %236

139:                                              ; preds = %55
  %140 = call i32 @strlen(i8* %18)
  %141 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %233

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %55, %144
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  br label %236

148:                                              ; preds = %55
  %149 = call i32 @strlen(i8* %18)
  %150 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %233

153:                                              ; preds = %148
  %154 = call i32 @printlist(i8* %15, i8* %12)
  br label %236

155:                                              ; preds = %55
  %156 = call i32 @strlen(i8* %18)
  %157 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %233

160:                                              ; preds = %155
  %161 = getelementptr inbounds i8, i8* %12, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @stderr, align 4
  %170 = getelementptr inbounds i8, i8* %12, i64 1
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %168, %165
  br label %236

173:                                              ; preds = %55
  %174 = call i32 @strlen(i8* %18)
  %175 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %233

178:                                              ; preds = %173
  store i32 1, i32* %8, align 4
  br label %237

179:                                              ; preds = %55
  %180 = call i32 @strlen(i8* %18)
  %181 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %233

184:                                              ; preds = %179
  store i32 1, i32* %8, align 4
  br label %237

185:                                              ; preds = %55
  %186 = call i32 @strlen(i8* %18)
  %187 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %233

190:                                              ; preds = %185
  %191 = load i32, i32* @vflag, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* @vflag, align 4
  br label %236

196:                                              ; preds = %190
  %197 = load i32, i32* @stderr, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %199 = load i32, i32* @vflag, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @vflag, align 4
  br label %236

201:                                              ; preds = %55
  %202 = call i32 @strlen(i8* %18)
  %203 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %233

206:                                              ; preds = %201
  %207 = load i32, i32* @FORCE, align 4
  %208 = call i32 @setdirmodes(i32 %207)
  br label %236

209:                                              ; preds = %55
  %210 = call i32 @strlen(i8* %18)
  %211 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %233

214:                                              ; preds = %209
  %215 = call i32 (...) @printdumpinfo()
  br label %236

216:                                              ; preds = %55
  %217 = call i32 @strlen(i8* %18)
  %218 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %233

221:                                              ; preds = %216
  %222 = load i32, i32* @dflag, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @stderr, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* @dflag, align 4
  br label %236

227:                                              ; preds = %221
  %228 = load i32, i32* @stderr, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0))
  %230 = load i32, i32* @dflag, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* @dflag, align 4
  br label %236

232:                                              ; preds = %55
  br label %233

233:                                              ; preds = %232, %220, %213, %205, %189, %183, %177, %159, %152, %143, %129, %104, %84, %65
  %234 = load i32, i32* @stderr, align 4
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i8* %18)
  br label %236

236:                                              ; preds = %233, %227, %224, %214, %206, %196, %193, %172, %153, %145, %138, %119, %116, %98, %95, %89, %76, %70
  br label %41

237:                                              ; preds = %184, %178
  %238 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %238)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @canon(i8*, i8*, i32) #2

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @globfree(%struct.TYPE_2__*) #2

declare dso_local i32 @getcmd(i8*, i8*, i8*, i32, %struct.arglist*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @dirlookup(i8*) #2

declare dso_local i32 @pathcheck(i8*) #2

declare dso_local i32 @treescan(i8*, i32, i32) #2

declare dso_local i32 @inodetype(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local %struct.entry* @lookupname(i8*) #2

declare dso_local i32 @createfiles(...) #2

declare dso_local i32 @createlinks(...) #2

declare dso_local i32 @setdirmodes(i32) #2

declare dso_local i32 @checkrestore(...) #2

declare dso_local i32 @printlist(i8*, i8*) #2

declare dso_local i32 @printdumpinfo(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
