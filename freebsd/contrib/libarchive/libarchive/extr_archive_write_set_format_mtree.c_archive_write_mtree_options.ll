; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@F_CKSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@F_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"dironly\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@F_FLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@F_GID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"gname\00", align 1
@F_GNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"inode\00", align 1
@F_INO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@F_SLINK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"md5digest\00", align 1
@F_MD5 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"resdevice\00", align 1
@F_RESDEV = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"ripemd160digest\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"rmd160digest\00", align 1
@F_RMD160 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"sha1digest\00", align 1
@F_SHA1 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"sha256digest\00", align 1
@F_SHA256 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"sha384digest\00", align 1
@F_SHA384 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"sha512digest\00", align 1
@F_SHA512 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@F_SIZE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@F_TIME = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@F_TYPE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@F_UID = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@F_UNAME = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"use-set\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*)* @archive_write_mtree_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_mtree_options(%struct.archive_write* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtree_writer*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load %struct.mtree_writer*, %struct.mtree_writer** %11, align 8
  store %struct.mtree_writer* %12, %struct.mtree_writer** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %232 [
    i32 97, label %17
    i32 99, label %23
    i32 100, label %30
    i32 102, label %50
    i32 103, label %57
    i32 105, label %71
    i32 108, label %91
    i32 109, label %98
    i32 110, label %115
    i32 114, label %122
    i32 115, label %144
    i32 116, label %191
    i32 117, label %205
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %232

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @F_CKSUM, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %232

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @F_DEV, align 4
  store i32 %35, i32* %9, align 4
  br label %49

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %46 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %255

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %34
  br label %232

50:                                               ; preds = %3
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @F_FLAGS, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %232

57:                                               ; preds = %3
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @F_GID, align 4
  store i32 %62, i32* %9, align 4
  br label %70

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @F_GNAME, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %70

70:                                               ; preds = %69, %61
  br label %232

71:                                               ; preds = %3
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %81 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %82, i32* %4, align 4
  br label %255

83:                                               ; preds = %71
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @F_INO, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %83
  br label %90

90:                                               ; preds = %89
  br label %232

91:                                               ; preds = %3
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @F_SLINK, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %91
  br label %232

98:                                               ; preds = %3
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %98
  %107 = load i32, i32* @F_MD5, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @F_MODE, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %108
  br label %232

115:                                              ; preds = %3
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @F_NLINK, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %119, %115
  br label %232

122:                                              ; preds = %3
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @F_RESDEV, align 4
  store i32 %127, i32* %9, align 4
  br label %143

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136, %132, %128
  %141 = load i32, i32* @F_RMD160, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %136
  br label %143

143:                                              ; preds = %142, %126
  br label %232

144:                                              ; preds = %3
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148, %144
  %153 = load i32, i32* @F_SHA1, align 4
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158, %154
  %163 = load i32, i32* @F_SHA256, align 4
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168, %164
  %173 = load i32, i32* @F_SHA384, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %174
  %183 = load i32, i32* @F_SHA512, align 4
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* @F_SIZE, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %188, %184
  br label %232

191:                                              ; preds = %3
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @F_TIME, align 4
  store i32 %196, i32* %9, align 4
  br label %204

197:                                              ; preds = %191
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @F_TYPE, align 4
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %201, %197
  br label %204

204:                                              ; preds = %203, %195
  br label %232

205:                                              ; preds = %3
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32, i32* @F_UID, align 4
  store i32 %210, i32* %9, align 4
  br label %231

211:                                              ; preds = %205
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* @F_UNAME, align 4
  store i32 %216, i32* %9, align 4
  br label %230

217:                                              ; preds = %211
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load i8*, i8** %7, align 8
  %223 = icmp ne i8* %222, null
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 1, i32 0
  %226 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %227 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %228, i32* %4, align 4
  br label %255

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229, %215
  br label %231

231:                                              ; preds = %230, %209
  br label %232

232:                                              ; preds = %3, %231, %204, %190, %143, %121, %114, %97, %90, %70, %56, %49, %29, %22
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %253

235:                                              ; preds = %232
  %236 = load i8*, i8** %7, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %241 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %251

244:                                              ; preds = %235
  %245 = load i32, i32* %9, align 4
  %246 = xor i32 %245, -1
  %247 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %248 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %244, %238
  %252 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %252, i32* %4, align 4
  br label %255

253:                                              ; preds = %232
  %254 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %253, %251, %221, %75, %40
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
