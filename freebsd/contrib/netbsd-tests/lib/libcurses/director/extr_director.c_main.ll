; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/director/extr_director.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libcurses/director/extr_director.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i8*, i32, i32, i32, i32 }
%struct.stat = type { i64, i32 }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vC:I:p:s:t:T:\00", align 1
@optarg = external dso_local global i8*, align 8
@include_path = common dso_local global i8* null, align 8
@check_path = common dso_local global i8* null, align 8
@optind = external dso_local global i32, align 4
@DEF_TERMPATH = common dso_local global i8* null, align 8
@DEF_SLAVE = common dso_local global i8* null, align 8
@DEF_TERM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"CHECK_PATH\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"$CHECK_PATH not set, defaulting to %s\00", align 1
@def_check_path = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"INCLUDE_PATH\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"$INCLUDE_PATH not set, defaulting to %s\00", align 1
@def_include_path = common dso_local global i8* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@slave_died = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to set TERM variable\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Cannot stat %s\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"terminfo.cdb\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Cannot stat `%s'\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TERMINFO\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to set TERMINFO variable\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"Cannot open `%s'\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"Cannot map `%s'\00", align 1
@cmdpipe = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"Command pipe creation failed\00", align 1
@slvpipe = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [27 x i8] c"Slave pipe creation failed\00", align 1
@TTYDEF_IFLAG = common dso_local global i32 0, align 4
@TTYDEF_OFLAG = common dso_local global i32 0, align 4
@TTYDEF_CFLAG = common dso_local global i32 0, align 4
@TTYDEF_LFLAG = common dso_local global i32 0, align 4
@TTYDEF_SPEED = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@master = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Fork of pty for slave failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"arg1 conversion failed\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"arg2 conversion failed\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"arg3 conversion failed\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"arg4 conversion failed\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Exec of slave %s failed\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@yyin = external dso_local global i32*, align 8
@.str.25 = private unnamed_addr constant [28 x i8] c"Cannot open command file %s\00", align 1
@cur_file = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [42 x i8] c"Failed to alloc memory for test file name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.termios, align 8
  %16 = alloca %struct.stat, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* @verbose, align 4
  br label %22

22:                                               ; preds = %45, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %43 [
    i32 73, label %29
    i32 67, label %31
    i32 84, label %33
    i32 112, label %35
    i32 115, label %37
    i32 116, label %39
    i32 118, label %41
    i32 63, label %42
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** @include_path, align 8
  br label %45

31:                                               ; preds = %27
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @check_path, align 8
  br label %45

33:                                               ; preds = %27
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %6, align 8
  br label %45

35:                                               ; preds = %27
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %6, align 8
  br label %45

37:                                               ; preds = %27
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %8, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %7, align 8
  br label %45

41:                                               ; preds = %27
  store i32 1, i32* @verbose, align 4
  br label %45

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %27, %42
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* @optind, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @optind, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** @DEF_TERMPATH, align 8
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** @DEF_SLAVE, align 8
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8*, i8** @DEF_TERM, align 8
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i8*, i8** @check_path, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %77, i8** @check_path, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8*, i8** @check_path, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** @check_path, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %78
  %88 = load i8*, i8** @def_check_path, align 8
  %89 = call i32 @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** @def_check_path, align 8
  store i8* %90, i8** @check_path, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i8*, i8** @include_path, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %95, i8** @include_path, align 8
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i8*, i8** @include_path, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** @include_path, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %96
  %106 = load i8*, i8** @def_include_path, align 8
  %107 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** @def_include_path, align 8
  store i8* %108, i8** @include_path, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i32, i32* @SIGCHLD, align 4
  %111 = load i32, i32* @slave_died, align 4
  %112 = call i32 @signal(i32 %110, i32 %111)
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %113, i32 1)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @stat(i8* %119, %struct.stat* %16)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @S_ISDIR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %125
  %131 = load i32, i32* @MAXPATHLEN, align 4
  %132 = zext i32 %131 to i64
  %133 = call i8* @llvm.stacksave()
  store i8* %133, i8** %17, align 8
  %134 = alloca i8, i64 %132, align 16
  store i64 %132, i64* %18, align 8
  %135 = trunc i64 %132 to i32
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @snprintf(i8* %134, i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 %137, i32* %19, align 4
  %138 = call i32 @stat(i8* %134, %struct.stat* %16)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %134)
  br label %142

142:                                              ; preds = %140, %130
  %143 = load i32, i32* %19, align 4
  %144 = icmp sge i32 %143, 4
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = sub nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %134, i64 %148
  store i8 0, i8* %149, align 1
  br label %150

150:                                              ; preds = %145, %142
  %151 = call i64 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %134, i32 1)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %156)
  br label %190

157:                                              ; preds = %125
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* @O_RDONLY, align 4
  %160 = call i32 @open(i8* %158, i32 %159)
  store i32 %160, i32* %20, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** %6, align 8
  %164 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %162, %157
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @PROT_READ, align 4
  %169 = load i32, i32* @MAP_FILE, align 4
  %170 = load i32, i32* %20, align 4
  %171 = call i8* @mmap(i32* null, i64 %167, i32 %168, i32 %169, i32 %170, i32 0)
  store i8* %171, i8** %21, align 8
  %172 = load i8*, i8** @MAP_FAILED, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %165
  %178 = load i8*, i8** %21, align 8
  %179 = call i64 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %178, i32 1)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @close(i32 %184)
  %186 = load i8*, i8** %21, align 8
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @munmap(i8* %186, i64 %188)
  br label %190

190:                                              ; preds = %183, %155
  %191 = load i32*, i32** @cmdpipe, align 8
  %192 = call i64 @pipe(i32* %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32*, i32** @slvpipe, align 8
  %198 = call i64 @pipe(i32* %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %196
  %203 = call i32 @memset(%struct.termios* %15, i32 0, i32 24)
  %204 = load i32, i32* @TTYDEF_IFLAG, align 4
  %205 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 4
  store i32 %204, i32* %205, align 4
  %206 = load i32, i32* @TTYDEF_OFLAG, align 4
  %207 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 3
  store i32 %206, i32* %207, align 8
  %208 = load i32, i32* @TTYDEF_CFLAG, align 4
  %209 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 2
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* @TTYDEF_LFLAG, align 4
  %211 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 1
  store i32 %210, i32* %211, align 8
  %212 = load i32, i32* @TTYDEF_SPEED, align 4
  %213 = call i32 @cfsetspeed(%struct.termios* %15, i32 %212)
  %214 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* @VERASE, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8 8, i8* %217, align 1
  %218 = getelementptr inbounds %struct.termios, %struct.termios* %15, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i64, i64* @VKILL, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8 21, i8* %221, align 1
  %222 = call i64 @forkpty(i32* @master, i32* null, %struct.termios* %15, i32* null)
  store i64 %222, i64* %10, align 8
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %202
  %225 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %202
  %227 = load i64, i64* %10, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %274

229:                                              ; preds = %226
  %230 = load i32*, i32** @cmdpipe, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @asprintf(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %229
  %238 = load i32*, i32** @cmdpipe, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %240)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %237
  %246 = load i32*, i32** @slvpipe, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %248)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %245
  %254 = load i32*, i32** @slvpipe, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @asprintf(i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %256)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %253
  %262 = load i8*, i8** %8, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = load i8*, i8** %12, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = load i8*, i8** %14, align 8
  %268 = call i64 @execl(i8* %262, i8* %263, i8* %264, i8* %265, i8* %266, i8* %267, i32* null)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load i8*, i8** %8, align 8
  %272 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %270, %261
  br label %274

274:                                              ; preds = %273, %226
  %275 = load i32, i32* @master, align 4
  %276 = load i32, i32* @F_SETFL, align 4
  %277 = load i32, i32* @O_NONBLOCK, align 4
  %278 = call i32 @fcntl(i32 %275, i32 %276, i32 %277)
  %279 = load i8**, i8*** %5, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i32* @fopen(i8* %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  store i32* %282, i32** @yyin, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %274
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %284, %274
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 0
  %292 = load i8*, i8** %291, align 8
  %293 = call i32* @strdup(i8* %292)
  store i32* %293, i32** @cur_file, align 8
  %294 = icmp eq i32* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %289
  %298 = call i32 @init_parse_variables(i32 1)
  %299 = call i32 (...) @yyparse()
  %300 = load i32*, i32** @yyin, align 8
  %301 = call i32 @fclose(i32* %300)
  %302 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @memset(%struct.termios*, i32, i32) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i64 @forkpty(i32*, i32*, %struct.termios*, i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i64 @execl(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @init_parse_variables(i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
