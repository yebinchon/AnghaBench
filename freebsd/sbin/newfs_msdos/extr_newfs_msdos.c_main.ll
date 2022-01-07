; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_options = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@main.opts = internal constant [49 x i8] c"@:NAB:C:F:I:L:O:S:a:b:c:e:f:h:i:k:m:n:o:r:s:T:u:\00", align 16
@MAXPATHLEN = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"create size\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: bad FAT type\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"volume ID\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bytes/sector\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"sectors/FAT\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"block size\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"sectors/cluster\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"directory entries\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"drive heads\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"info sector\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"backup sector\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"media descriptor\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"number of FATs\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"hidden sectors\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"reserved sectors\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"file system size\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"sectors/track\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [35 x i8] c"align (-A) is incompatible with -r\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.msdos_options, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = call i32 @memset(%struct.msdos_options* %6, i32 0, i32 208)
  br label %17

17:                                               ; preds = %139, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @main.opts, i64 0, i64 0))
  store i32 %20, i32* %11, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %140

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %137 [
    i32 64, label %24
    i32 78, label %28
    i32 65, label %30
    i32 66, label %32
    i32 67, label %35
    i32 70, label %39
    i32 73, label %58
    i32 76, label %63
    i32 79, label %66
    i32 83, label %69
    i32 97, label %73
    i32 98, label %77
    i32 99, label %82
    i32 101, label %87
    i32 102, label %91
    i32 104, label %94
    i32 105, label %98
    i32 107, label %102
    i32 109, label %106
    i32 110, label %111
    i32 111, label %115
    i32 114, label %120
    i32 115, label %124
    i32 84, label %128
    i32 117, label %133
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @argtooff(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 28
  store i8* %26, i8** %27, align 8
  br label %139

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %139

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %139

32:                                               ; preds = %22
  %33 = load i8*, i8** @optarg, align 8
  %34 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 27
  store i8* %33, i8** %34, align 8
  br label %139

35:                                               ; preds = %22
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @argtooff(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 6
  store i8* %37, i8** %38, align 8
  br label %139

39:                                               ; preds = %22
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47, %43, %39
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @atoi(i8* %55)
  %57 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 26
  store i32 %56, i32* %57, align 8
  br label %139

58:                                               ; preds = %22
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i8* @argto4(i8* %59, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 25
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %139

63:                                               ; preds = %22
  %64 = load i8*, i8** @optarg, align 8
  %65 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 24
  store i8* %64, i8** %65, align 8
  br label %139

66:                                               ; preds = %22
  %67 = load i8*, i8** @optarg, align 8
  %68 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 23
  store i8* %67, i8** %68, align 8
  br label %139

69:                                               ; preds = %22
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i8* @argto2(i8* %70, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 22
  store i8* %71, i8** %72, align 8
  br label %139

73:                                               ; preds = %22
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i8* @argto4(i8* %74, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 21
  store i8* %75, i8** %76, align 8
  br label %139

77:                                               ; preds = %22
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @argtox(i8* %78, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 19
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 20
  store i8* null, i8** %81, align 8
  br label %139

82:                                               ; preds = %22
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @argto1(i8* %83, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 20
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 19
  store i32 0, i32* %86, align 8
  br label %139

87:                                               ; preds = %22
  %88 = load i8*, i8** @optarg, align 8
  %89 = call i8* @argto2(i8* %88, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 18
  store i8* %89, i8** %90, align 8
  br label %139

91:                                               ; preds = %22
  %92 = load i8*, i8** @optarg, align 8
  %93 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 17
  store i8* %92, i8** %93, align 8
  br label %139

94:                                               ; preds = %22
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i8* @argto2(i8* %95, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %97 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 16
  store i8* %96, i8** %97, align 8
  br label %139

98:                                               ; preds = %22
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i8* @argto2(i8* %99, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 15
  store i8* %100, i8** %101, align 8
  br label %139

102:                                              ; preds = %22
  %103 = load i8*, i8** @optarg, align 8
  %104 = call i8* @argto2(i8* %103, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 14
  store i8* %104, i8** %105, align 8
  br label %139

106:                                              ; preds = %22
  %107 = load i8*, i8** @optarg, align 8
  %108 = call i8* @argto1(i8* %107, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 13
  store i8* %108, i8** %109, align 8
  %110 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 3
  store i32 1, i32* %110, align 4
  br label %139

111:                                              ; preds = %22
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i8* @argto1(i8* %112, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 12
  store i8* %113, i8** %114, align 8
  br label %139

115:                                              ; preds = %22
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i8* @argto4(i8* %116, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %118 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 11
  store i8* %117, i8** %118, align 8
  %119 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 4
  store i32 1, i32* %119, align 8
  br label %139

120:                                              ; preds = %22
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i8* @argto2(i8* %121, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %123 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 10
  store i8* %122, i8** %123, align 8
  br label %139

124:                                              ; preds = %22
  %125 = load i8*, i8** @optarg, align 8
  %126 = call i8* @argto4(i8* %125, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %127 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 9
  store i8* %126, i8** %127, align 8
  br label %139

128:                                              ; preds = %22
  %129 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 5
  store i32 1, i32* %129, align 4
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i32 @get_tstamp(i8* %130)
  %132 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 8
  store i32 %131, i32* %132, align 8
  br label %139

133:                                              ; preds = %22
  %134 = load i8*, i8** @optarg, align 8
  %135 = call i8* @argto2(i8* %134, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %136 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 7
  store i8* %135, i8** %136, align 8
  br label %139

137:                                              ; preds = %22
  %138 = call i32 (...) @usage()
  br label %139

139:                                              ; preds = %137, %133, %128, %124, %120, %115, %111, %106, %102, %98, %94, %91, %87, %82, %77, %73, %69, %66, %63, %58, %54, %35, %32, %30, %28, %24
  br label %17

140:                                              ; preds = %17
  %141 = load i64, i64* @optind, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %4, align 4
  %146 = load i64, i64* @optind, align 8
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 %146
  store i8** %148, i8*** %5, align 8
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %4, align 4
  %153 = icmp sgt i32 %152, 2
  br i1 %153, label %154, label %156

154:                                              ; preds = %151, %140
  %155 = call i32 (...) @usage()
  br label %156

156:                                              ; preds = %154, %151
  %157 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %160
  br label %167

167:                                              ; preds = %166, %156
  %168 = load i8**, i8*** %5, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %5, align 8
  %170 = load i8*, i8** %168, align 8
  store i8* %170, i8** %7, align 8
  %171 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %6, i32 0, i32 6
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %188, label %174

174:                                              ; preds = %167
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @strchr(i8* %175, i8 signext 47)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %174
  %179 = trunc i64 %13 to i32
  %180 = load i8*, i8** @_PATH_DEV, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @snprintf(i8* %15, i32 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %180, i8* %181)
  %183 = call i8* @strdup(i8* %15)
  store i8* %183, i8** %7, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %178
  %186 = call i32 @err(i32 1, i32* null)
  br label %187

187:                                              ; preds = %185, %178
  br label %188

188:                                              ; preds = %187, %174, %167
  %189 = load i8**, i8*** %5, align 8
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %8, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i32 @mkfs_msdos(i8* %191, i8* %192, %struct.msdos_options* %6)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %3, align 4
  %198 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.msdos_options*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @argtooff(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @argto4(i8*, i32, i8*) #2

declare dso_local i8* @argto2(i8*, i32, i8*) #2

declare dso_local i32 @argtox(i8*, i32, i8*) #2

declare dso_local i8* @argto1(i8*, i32, i8*) #2

declare dso_local i32 @get_tstamp(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i32 @mkfs_msdos(i8*, i8*, %struct.msdos_options*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
