; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_compare.c_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_compare.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8*, %struct.stat* }
%struct.stat = type { i32, i64, i64, i32, i32, i64, i64, i32, %struct.TYPE_8__ }
%struct.timeval = type { i64, i64 }

@LABEL = common dso_local global i32 0, align 4
@flavor = common dso_local global i64 0, align 8
@F_FREEBSD9 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"\09type expected %s found %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09type (%s, %s)\0A\00", align 1
@mtree_Wflag = common dso_local global i64 0, align 8
@F_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%sdevice expected %#jx found %#jx\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%sdevice (%#jx, %#jx\00", align 1
@uflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c", not modified: %s%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", modified%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@F_UID = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"%suser expected %lu found %lu\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%suser (%lu, %lu\00", align 1
@F_GID = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"%sgid expected %lu found %lu\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%sgid (%lu, %lu\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@MBITS = common dso_local global i32 0, align 4
@lflag = common dso_local global i64 0, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"%spermissions expcted %#lo found %#lo\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"%spermissions (%#lo, %#lo\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"%slink count expected %lu found %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"%slink count (%lu, %lu)\0A\00", align 1
@F_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"%ssize expected %ju found %ju\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"%ssize (%ju, %ju)\0A\00", align 1
@F_TIME = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [42 x i8] c"%smodification time expected %.24s found \00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"%smodification time (%.24s, \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%.24s\00", align 1
@tflag = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@F_CKSUM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"%scksum: %s: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"%scksum expected %lu found %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"%scksum (%lu, %lu)\0A\00", align 1
@F_MD5 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"%s%s: %s: %s\0A\00", align 1
@MD5KEY = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [27 x i8] c"%s%s expected %s found %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"%s%s (0x%s, 0x%s)\0A\00", align 1
@F_RMD160 = common dso_local global i32 0, align 4
@RMD160KEY = common dso_local global i8* null, align 8
@F_SHA1 = common dso_local global i32 0, align 4
@SHA1KEY = common dso_local global i8* null, align 8
@F_SHA256 = common dso_local global i32 0, align 4
@SHA256KEY = common dso_local global i8* null, align 8
@F_SHA512 = common dso_local global i32 0, align 4
@SHA512KEY = common dso_local global i8* null, align 8
@F_SLINK = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [32 x i8] c"%slink ref expected %s found %s\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"%slink ref (%s, %s\00", align 1
@CH_MASK = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@F_SHA384 = common dso_local global i32 0, align 4
@SHA384KEY = common dso_local global i8* null, align 8
@SP_FLGS = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@mflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.timeval], align 16
  %17 = alloca %struct.stat*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %102 [
    i32 134, label %23
    i32 133, label %33
    i32 132, label %43
    i32 131, label %53
    i32 130, label %63
    i32 129, label %73
  ]

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.stat*, %struct.stat** %25, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISBLK(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %83

32:                                               ; preds = %23
  br label %102

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.stat*, %struct.stat** %35, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @S_ISCHR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %83

42:                                               ; preds = %33
  br label %102

43:                                               ; preds = %2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.stat*, %struct.stat** %45, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @S_ISDIR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %83

52:                                               ; preds = %43
  br label %102

53:                                               ; preds = %2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.stat*, %struct.stat** %55, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @S_ISFIFO(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %83

62:                                               ; preds = %53
  br label %102

63:                                               ; preds = %2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.stat*, %struct.stat** %65, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @S_ISREG(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %83

72:                                               ; preds = %63
  br label %102

73:                                               ; preds = %2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load %struct.stat*, %struct.stat** %75, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @S_ISLNK(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %83

82:                                               ; preds = %73
  br label %102

83:                                               ; preds = %81, %71, %61, %51, %41, %31
  %84 = load i32, i32* @LABEL, align 4
  %85 = load i64, i64* @flavor, align 8
  %86 = load i64, i64* @F_FREEBSD9, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @nodetype(i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.stat*, %struct.stat** %95, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @inotype(i32 %98)
  %100 = call i32 (i8*, ...) @printf(i8* %89, i32 %93, i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %1017

102:                                              ; preds = %2, %82, %72, %62, %52, %42, %32
  %103 = load i64, i64* @mtree_Wflag, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %641

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @F_DEV, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %213

113:                                              ; preds = %106
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 134
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 133
  br i1 %122, label %123, label %213

123:                                              ; preds = %118, %113
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.stat*, %struct.stat** %128, align 8
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %126, %131
  br i1 %132, label %133, label %213

133:                                              ; preds = %123
  %134 = load i32, i32* @LABEL, align 4
  %135 = load i64, i64* @flavor, align 8
  %136 = load i64, i64* @F_FREEBSD9, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)
  %140 = load i8*, i8** %12, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load %struct.stat*, %struct.stat** %146, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i8*, ...) @printf(i8* %139, i8* %140, i32 %144, i32 %150)
  %152 = load i64, i64* @uflag, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %210

154:                                              ; preds = %133
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @unlink(i8* %157)
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %193, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @nodetoino(i32 %169)
  %171 = or i32 %166, %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @mknod(i8* %163, i32 %171, i64 %174)
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %193, label %177

177:                                              ; preds = %160
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load %struct.stat*, %struct.stat** %182, align 8
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load %struct.stat*, %struct.stat** %187, align 8
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @lchown(i8* %180, i32 %185, i32 %190)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %202

193:                                              ; preds = %177, %160, %154
  %194 = load i32, i32* @errno, align 4
  %195 = call i8* @strerror(i32 %194)
  %196 = load i64, i64* @flavor, align 8
  %197 = load i64, i64* @F_FREEBSD9, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %195, i8* %200)
  br label %209

202:                                              ; preds = %177
  %203 = load i64, i64* @flavor, align 8
  %204 = load i64, i64* @F_FREEBSD9, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %202, %193
  br label %212

210:                                              ; preds = %133
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %209
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %213

213:                                              ; preds = %212, %123, %118, %106
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @F_UID, align 4
  %218 = load i32, i32* @F_UNAME, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %283

222:                                              ; preds = %213
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load %struct.stat*, %struct.stat** %227, align 8
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = icmp ne i64 %225, %231
  br i1 %232, label %233, label %283

233:                                              ; preds = %222
  %234 = load i32, i32* @LABEL, align 4
  %235 = load i64, i64* @flavor, align 8
  %236 = load i64, i64* @F_FREEBSD9, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)
  %240 = load i8*, i8** %12, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load %struct.stat*, %struct.stat** %246, align 8
  %248 = getelementptr inbounds %struct.stat, %struct.stat* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @printf(i8* %239, i8* %240, i32 %244, i32 %249)
  %251 = load i64, i64* @uflag, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %280

253:                                              ; preds = %233
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i32 @lchown(i8* %256, i32 %260, i32 -1)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %253
  %264 = load i32, i32* @errno, align 4
  %265 = call i8* @strerror(i32 %264)
  %266 = load i64, i64* @flavor, align 8
  %267 = load i64, i64* @F_FREEBSD9, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %265, i8* %270)
  br label %279

272:                                              ; preds = %253
  %273 = load i64, i64* @flavor, align 8
  %274 = load i64, i64* @F_FREEBSD9, align 8
  %275 = icmp eq i64 %273, %274
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %272, %263
  br label %282

280:                                              ; preds = %233
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %279
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %283

283:                                              ; preds = %282, %222, %213
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @F_GID, align 4
  %288 = load i32, i32* @F_GNAME, align 4
  %289 = or i32 %287, %288
  %290 = and i32 %286, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %353

292:                                              ; preds = %283
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  %298 = load %struct.stat*, %struct.stat** %297, align 8
  %299 = getelementptr inbounds %struct.stat, %struct.stat* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = icmp ne i64 %295, %301
  br i1 %302, label %303, label %353

303:                                              ; preds = %292
  %304 = load i32, i32* @LABEL, align 4
  %305 = load i64, i64* @flavor, align 8
  %306 = load i64, i64* @F_FREEBSD9, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)
  %310 = load i8*, i8** %12, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = load %struct.stat*, %struct.stat** %316, align 8
  %318 = getelementptr inbounds %struct.stat, %struct.stat* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (i8*, ...) @printf(i8* %309, i8* %310, i32 %314, i32 %319)
  %321 = load i64, i64* @uflag, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %350

323:                                              ; preds = %303
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = trunc i64 %329 to i32
  %331 = call i32 @lchown(i8* %326, i32 -1, i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %323
  %334 = load i32, i32* @errno, align 4
  %335 = call i8* @strerror(i32 %334)
  %336 = load i64, i64* @flavor, align 8
  %337 = load i64, i64* @F_FREEBSD9, align 8
  %338 = icmp eq i64 %336, %337
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %335, i8* %340)
  br label %349

342:                                              ; preds = %323
  %343 = load i64, i64* @flavor, align 8
  %344 = load i64, i64* @F_FREEBSD9, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %347)
  br label %349

349:                                              ; preds = %342, %333
  br label %352

350:                                              ; preds = %303
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %349
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %353

353:                                              ; preds = %352, %292, %283
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @F_MODE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %465

360:                                              ; preds = %353
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 1
  %366 = load %struct.stat*, %struct.stat** %365, align 8
  %367 = getelementptr inbounds %struct.stat, %struct.stat* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @MBITS, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %363, %370
  br i1 %371, label %372, label %465

372:                                              ; preds = %360
  %373 = load i64, i64* @lflag, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %414

375:                                              ; preds = %372
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  store i32 %378, i32* %14, align 4
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 1
  %381 = load %struct.stat*, %struct.stat** %380, align 8
  %382 = getelementptr inbounds %struct.stat, %struct.stat* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @MBITS, align 4
  %385 = and i32 %383, %384
  store i32 %385, i32* %15, align 4
  %386 = load i32, i32* %14, align 4
  %387 = load i32, i32* @S_IRWXU, align 4
  %388 = load i32, i32* @S_IRWXG, align 4
  %389 = or i32 %387, %388
  %390 = load i32, i32* @S_IRWXO, align 4
  %391 = or i32 %389, %390
  %392 = xor i32 %391, -1
  %393 = and i32 %386, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %413, label %395

395:                                              ; preds = %375
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* @S_IRWXU, align 4
  %398 = load i32, i32* @S_IRWXG, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @S_IRWXO, align 4
  %401 = or i32 %399, %400
  %402 = xor i32 %401, -1
  %403 = and i32 %396, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %413, label %405

405:                                              ; preds = %395
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %14, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* %14, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %405
  br label %464

412:                                              ; preds = %405
  br label %413

413:                                              ; preds = %412, %395, %375
  br label %414

414:                                              ; preds = %413, %372
  %415 = load i32, i32* @LABEL, align 4
  %416 = load i64, i64* @flavor, align 8
  %417 = load i64, i64* @F_FREEBSD9, align 8
  %418 = icmp eq i64 %416, %417
  %419 = zext i1 %418 to i64
  %420 = select i1 %418, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)
  %421 = load i8*, i8** %12, align 8
  %422 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 1
  %427 = load %struct.stat*, %struct.stat** %426, align 8
  %428 = getelementptr inbounds %struct.stat, %struct.stat* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @MBITS, align 4
  %431 = and i32 %429, %430
  %432 = call i32 (i8*, ...) @printf(i8* %420, i8* %421, i32 %424, i32 %431)
  %433 = load i64, i64* @uflag, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %461

435:                                              ; preds = %414
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 0
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 8
  %442 = call i64 @lchmod(i8* %438, i32 %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %435
  %445 = load i32, i32* @errno, align 4
  %446 = call i8* @strerror(i32 %445)
  %447 = load i64, i64* @flavor, align 8
  %448 = load i64, i64* @F_FREEBSD9, align 8
  %449 = icmp eq i64 %447, %448
  %450 = zext i1 %449 to i64
  %451 = select i1 %449, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %446, i8* %451)
  br label %460

453:                                              ; preds = %435
  %454 = load i64, i64* @flavor, align 8
  %455 = load i64, i64* @F_FREEBSD9, align 8
  %456 = icmp eq i64 %454, %455
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %458)
  br label %460

460:                                              ; preds = %453, %444
  br label %463

461:                                              ; preds = %414
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %463

463:                                              ; preds = %461, %460
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %464

464:                                              ; preds = %463, %411
  br label %465

465:                                              ; preds = %464, %360, %353
  %466 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* @F_NLINK, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %506

472:                                              ; preds = %465
  %473 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = icmp ne i32 %475, 132
  br i1 %476, label %477, label %506

477:                                              ; preds = %472
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 6
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 1
  %483 = load %struct.stat*, %struct.stat** %482, align 8
  %484 = getelementptr inbounds %struct.stat, %struct.stat* %483, i32 0, i32 5
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %480, %485
  br i1 %486, label %487, label %506

487:                                              ; preds = %477
  %488 = load i32, i32* @LABEL, align 4
  %489 = load i64, i64* @flavor, align 8
  %490 = load i64, i64* @F_FREEBSD9, align 8
  %491 = icmp eq i64 %489, %490
  %492 = zext i1 %491 to i64
  %493 = select i1 %491, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0)
  %494 = load i8*, i8** %12, align 8
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 6
  %497 = load i64, i64* %496, align 8
  %498 = trunc i64 %497 to i32
  %499 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 1
  %501 = load %struct.stat*, %struct.stat** %500, align 8
  %502 = getelementptr inbounds %struct.stat, %struct.stat* %501, i32 0, i32 5
  %503 = load i64, i64* %502, align 8
  %504 = trunc i64 %503 to i32
  %505 = call i32 (i8*, ...) @printf(i8* %493, i8* %494, i32 %498, i32 %504)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %506

506:                                              ; preds = %487, %477, %472, %465
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @F_SIZE, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %542

513:                                              ; preds = %506
  %514 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 7
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 1
  %519 = load %struct.stat*, %struct.stat** %518, align 8
  %520 = getelementptr inbounds %struct.stat, %struct.stat* %519, i32 0, i32 6
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %516, %521
  br i1 %522, label %523, label %542

523:                                              ; preds = %513
  %524 = load i32, i32* @LABEL, align 4
  %525 = load i64, i64* @flavor, align 8
  %526 = load i64, i64* @F_FREEBSD9, align 8
  %527 = icmp eq i64 %525, %526
  %528 = zext i1 %527 to i64
  %529 = select i1 %527, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0)
  %530 = load i8*, i8** %12, align 8
  %531 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 7
  %533 = load i64, i64* %532, align 8
  %534 = trunc i64 %533 to i32
  %535 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 1
  %537 = load %struct.stat*, %struct.stat** %536, align 8
  %538 = getelementptr inbounds %struct.stat, %struct.stat* %537, i32 0, i32 6
  %539 = load i64, i64* %538, align 8
  %540 = trunc i64 %539 to i32
  %541 = call i32 (i8*, ...) @printf(i8* %529, i8* %530, i32 %534, i32 %540)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %542

542:                                              ; preds = %523, %513, %506
  %543 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* @F_TIME, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %640

549:                                              ; preds = %542
  %550 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %550, i32 0, i32 1
  %552 = load %struct.stat*, %struct.stat** %551, align 8
  store %struct.stat* %552, %struct.stat** %17, align 8
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 17
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 0
  %556 = load i8*, i8** %555, align 8
  store i8* %556, i8** %18, align 8
  %557 = load %struct.stat*, %struct.stat** %17, align 8
  %558 = getelementptr inbounds %struct.stat, %struct.stat* %557, i32 0, i32 7
  %559 = load i32, i32* %558, align 8
  %560 = sext i32 %559 to i64
  %561 = inttoptr i64 %560 to i8*
  store i8* %561, i8** %19, align 8
  %562 = load i8*, i8** %18, align 8
  %563 = ptrtoint i8* %562 to i64
  %564 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %565 = getelementptr inbounds %struct.timeval, %struct.timeval* %564, i32 0, i32 0
  store i64 %563, i64* %565, align 16
  %566 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %567 = getelementptr inbounds %struct.timeval, %struct.timeval* %566, i32 0, i32 1
  store i64 0, i64* %567, align 8
  %568 = load i8*, i8** %19, align 8
  %569 = ptrtoint i8* %568 to i64
  %570 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 1
  %571 = getelementptr inbounds %struct.timeval, %struct.timeval* %570, i32 0, i32 0
  store i64 %569, i64* %571, align 16
  %572 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 1
  %573 = getelementptr inbounds %struct.timeval, %struct.timeval* %572, i32 0, i32 1
  store i64 0, i64* %573, align 8
  %574 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %575 = getelementptr inbounds %struct.timeval, %struct.timeval* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 16
  %577 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 1
  %578 = getelementptr inbounds %struct.timeval, %struct.timeval* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 16
  %580 = icmp ne i64 %576, %579
  br i1 %580, label %589, label %581

581:                                              ; preds = %549
  %582 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %583 = getelementptr inbounds %struct.timeval, %struct.timeval* %582, i32 0, i32 1
  %584 = load i64, i64* %583, align 8
  %585 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 1
  %586 = getelementptr inbounds %struct.timeval, %struct.timeval* %585, i32 0, i32 1
  %587 = load i64, i64* %586, align 8
  %588 = icmp ne i64 %584, %587
  br i1 %588, label %589, label %639

589:                                              ; preds = %581, %549
  %590 = load i32, i32* @LABEL, align 4
  %591 = load i64, i64* @flavor, align 8
  %592 = load i64, i64* @F_FREEBSD9, align 8
  %593 = icmp eq i64 %591, %592
  %594 = zext i1 %593 to i64
  %595 = select i1 %593, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0)
  %596 = load i8*, i8** %12, align 8
  %597 = call i8* @ctime(i8** %18)
  %598 = call i32 (i8*, ...) @printf(i8* %595, i8* %596, i8* %597)
  %599 = call i8* @ctime(i8** %19)
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* %599)
  %601 = load i64, i64* @tflag, align 8
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %631

603:                                              ; preds = %589
  %604 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 1
  %605 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %606 = bitcast %struct.timeval* %604 to i8*
  %607 = bitcast %struct.timeval* %605 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %606, i8* align 16 %607, i64 16, i1 false)
  %608 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %609 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %608, i32 0, i32 0
  %610 = load i8*, i8** %609, align 8
  %611 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %16, i64 0, i64 0
  %612 = call i64 @utimes(i8* %610, %struct.timeval* %611)
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %614, label %623

614:                                              ; preds = %603
  %615 = load i32, i32* @errno, align 4
  %616 = call i8* @strerror(i32 %615)
  %617 = load i64, i64* @flavor, align 8
  %618 = load i64, i64* @F_FREEBSD9, align 8
  %619 = icmp eq i64 %617, %618
  %620 = zext i1 %619 to i64
  %621 = select i1 %619, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %622 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %616, i8* %621)
  br label %630

623:                                              ; preds = %603
  %624 = load i64, i64* @flavor, align 8
  %625 = load i64, i64* @F_FREEBSD9, align 8
  %626 = icmp eq i64 %624, %625
  %627 = zext i1 %626 to i64
  %628 = select i1 %626, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %629 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %628)
  br label %630

630:                                              ; preds = %623, %614
  br label %638

631:                                              ; preds = %589
  %632 = load i64, i64* @flavor, align 8
  %633 = load i64, i64* @F_FREEBSD9, align 8
  %634 = icmp eq i64 %632, %633
  %635 = zext i1 %634 to i64
  %636 = select i1 %634, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %636)
  br label %638

638:                                              ; preds = %631, %630
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %639

639:                                              ; preds = %638, %581
  br label %640

640:                                              ; preds = %639, %542
  br label %641

641:                                              ; preds = %640, %105
  %642 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = load i32, i32* @F_CKSUM, align 4
  %646 = and i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %703

648:                                              ; preds = %641
  %649 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %650 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %649, i32 0, i32 0
  %651 = load i8*, i8** %650, align 8
  %652 = load i32, i32* @O_RDONLY, align 4
  %653 = call i32 @open(i8* %651, i32 %652, i32 0)
  store i32 %653, i32* %9, align 4
  %654 = icmp slt i32 %653, 0
  br i1 %654, label %655, label %664

655:                                              ; preds = %648
  %656 = load i32, i32* @LABEL, align 4
  %657 = load i8*, i8** %12, align 8
  %658 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 0
  %660 = load i8*, i8** %659, align 8
  %661 = load i32, i32* @errno, align 4
  %662 = call i8* @strerror(i32 %661)
  %663 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* %657, i8* %660, i8* %662)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %702

664:                                              ; preds = %648
  %665 = load i32, i32* %9, align 4
  %666 = call i64 @crc(i32 %665, i64* %7, i64* %6)
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %679

668:                                              ; preds = %664
  %669 = load i32, i32* %9, align 4
  %670 = call i32 @close(i32 %669)
  %671 = load i32, i32* @LABEL, align 4
  %672 = load i8*, i8** %12, align 8
  %673 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %674 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %673, i32 0, i32 0
  %675 = load i8*, i8** %674, align 8
  %676 = load i32, i32* @errno, align 4
  %677 = call i8* @strerror(i32 %676)
  %678 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* %672, i8* %675, i8* %677)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %701

679:                                              ; preds = %664
  %680 = load i32, i32* %9, align 4
  %681 = call i32 @close(i32 %680)
  %682 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %683 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %682, i32 0, i32 16
  %684 = load i64, i64* %683, align 8
  %685 = load i64, i64* %7, align 8
  %686 = icmp ne i64 %684, %685
  br i1 %686, label %687, label %700

687:                                              ; preds = %679
  %688 = load i32, i32* @LABEL, align 4
  %689 = load i64, i64* @flavor, align 8
  %690 = load i64, i64* @F_FREEBSD9, align 8
  %691 = icmp eq i64 %689, %690
  %692 = zext i1 %691 to i64
  %693 = select i1 %691, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0)
  %694 = load i8*, i8** %12, align 8
  %695 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %696 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %695, i32 0, i32 16
  %697 = load i64, i64* %696, align 8
  %698 = load i64, i64* %7, align 8
  %699 = call i32 (i8*, ...) @printf(i8* %693, i8* %694, i64 %697, i64 %698)
  br label %700

700:                                              ; preds = %687, %679
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %701

701:                                              ; preds = %700, %668
  br label %702

702:                                              ; preds = %701, %655
  br label %703

703:                                              ; preds = %702, %641
  %704 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %705 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = load i32, i32* @F_MD5, align 4
  %708 = and i32 %706, %707
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %751

710:                                              ; preds = %703
  %711 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %712 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %711, i32 0, i32 0
  %713 = load i8*, i8** %712, align 8
  %714 = call i8* @MD5File(i8* %713, i32* null)
  store i8* %714, i8** %13, align 8
  %715 = icmp eq i8* %714, null
  br i1 %715, label %716, label %726

716:                                              ; preds = %710
  %717 = load i32, i32* @LABEL, align 4
  %718 = load i8*, i8** %12, align 8
  %719 = load i8*, i8** @MD5KEY, align 8
  %720 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %721 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %720, i32 0, i32 0
  %722 = load i8*, i8** %721, align 8
  %723 = load i32, i32* @errno, align 4
  %724 = call i8* @strerror(i32 %723)
  %725 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %718, i8* %719, i8* %722, i8* %724)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %750

726:                                              ; preds = %710
  %727 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %728 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %727, i32 0, i32 9
  %729 = load i8*, i8** %728, align 8
  %730 = load i8*, i8** %13, align 8
  %731 = call i64 @strcmp(i8* %729, i8* %730)
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %747

733:                                              ; preds = %726
  %734 = load i32, i32* @LABEL, align 4
  %735 = load i64, i64* @flavor, align 8
  %736 = load i64, i64* @F_FREEBSD9, align 8
  %737 = icmp eq i64 %735, %736
  %738 = zext i1 %737 to i64
  %739 = select i1 %737, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)
  %740 = load i8*, i8** %12, align 8
  %741 = load i8*, i8** @MD5KEY, align 8
  %742 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %743 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %742, i32 0, i32 9
  %744 = load i8*, i8** %743, align 8
  %745 = load i8*, i8** %13, align 8
  %746 = call i32 (i8*, ...) @printf(i8* %739, i8* %740, i8* %741, i8* %744, i8* %745)
  br label %747

747:                                              ; preds = %733, %726
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  %748 = load i8*, i8** %13, align 8
  %749 = call i32 @free(i8* %748)
  br label %750

750:                                              ; preds = %747, %716
  br label %751

751:                                              ; preds = %750, %703
  %752 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %753 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 4
  %755 = load i32, i32* @F_RMD160, align 4
  %756 = and i32 %754, %755
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %799

758:                                              ; preds = %751
  %759 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %760 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %759, i32 0, i32 0
  %761 = load i8*, i8** %760, align 8
  %762 = call i8* @RMD160File(i8* %761, i32* null)
  store i8* %762, i8** %13, align 8
  %763 = icmp eq i8* %762, null
  br i1 %763, label %764, label %774

764:                                              ; preds = %758
  %765 = load i32, i32* @LABEL, align 4
  %766 = load i8*, i8** %12, align 8
  %767 = load i8*, i8** @RMD160KEY, align 8
  %768 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %769 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %768, i32 0, i32 0
  %770 = load i8*, i8** %769, align 8
  %771 = load i32, i32* @errno, align 4
  %772 = call i8* @strerror(i32 %771)
  %773 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %766, i8* %767, i8* %770, i8* %772)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %798

774:                                              ; preds = %758
  %775 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %776 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %775, i32 0, i32 10
  %777 = load i8*, i8** %776, align 8
  %778 = load i8*, i8** %13, align 8
  %779 = call i64 @strcmp(i8* %777, i8* %778)
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %781, label %795

781:                                              ; preds = %774
  %782 = load i32, i32* @LABEL, align 4
  %783 = load i64, i64* @flavor, align 8
  %784 = load i64, i64* @F_FREEBSD9, align 8
  %785 = icmp eq i64 %783, %784
  %786 = zext i1 %785 to i64
  %787 = select i1 %785, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)
  %788 = load i8*, i8** %12, align 8
  %789 = load i8*, i8** @RMD160KEY, align 8
  %790 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %791 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %790, i32 0, i32 10
  %792 = load i8*, i8** %791, align 8
  %793 = load i8*, i8** %13, align 8
  %794 = call i32 (i8*, ...) @printf(i8* %787, i8* %788, i8* %789, i8* %792, i8* %793)
  br label %795

795:                                              ; preds = %781, %774
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  %796 = load i8*, i8** %13, align 8
  %797 = call i32 @free(i8* %796)
  br label %798

798:                                              ; preds = %795, %764
  br label %799

799:                                              ; preds = %798, %751
  %800 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %801 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %800, i32 0, i32 1
  %802 = load i32, i32* %801, align 4
  %803 = load i32, i32* @F_SHA1, align 4
  %804 = and i32 %802, %803
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %806, label %847

806:                                              ; preds = %799
  %807 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %808 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %807, i32 0, i32 0
  %809 = load i8*, i8** %808, align 8
  %810 = call i8* @SHA1File(i8* %809, i32* null)
  store i8* %810, i8** %13, align 8
  %811 = icmp eq i8* %810, null
  br i1 %811, label %812, label %822

812:                                              ; preds = %806
  %813 = load i32, i32* @LABEL, align 4
  %814 = load i8*, i8** %12, align 8
  %815 = load i8*, i8** @SHA1KEY, align 8
  %816 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %817 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %816, i32 0, i32 0
  %818 = load i8*, i8** %817, align 8
  %819 = load i32, i32* @errno, align 4
  %820 = call i8* @strerror(i32 %819)
  %821 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %814, i8* %815, i8* %818, i8* %820)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %846

822:                                              ; preds = %806
  %823 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %824 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %823, i32 0, i32 11
  %825 = load i8*, i8** %824, align 8
  %826 = load i8*, i8** %13, align 8
  %827 = call i64 @strcmp(i8* %825, i8* %826)
  %828 = icmp ne i64 %827, 0
  br i1 %828, label %829, label %843

829:                                              ; preds = %822
  %830 = load i32, i32* @LABEL, align 4
  %831 = load i64, i64* @flavor, align 8
  %832 = load i64, i64* @F_FREEBSD9, align 8
  %833 = icmp eq i64 %831, %832
  %834 = zext i1 %833 to i64
  %835 = select i1 %833, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)
  %836 = load i8*, i8** %12, align 8
  %837 = load i8*, i8** @SHA1KEY, align 8
  %838 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %839 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %838, i32 0, i32 11
  %840 = load i8*, i8** %839, align 8
  %841 = load i8*, i8** %13, align 8
  %842 = call i32 (i8*, ...) @printf(i8* %835, i8* %836, i8* %837, i8* %840, i8* %841)
  br label %843

843:                                              ; preds = %829, %822
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  %844 = load i8*, i8** %13, align 8
  %845 = call i32 @free(i8* %844)
  br label %846

846:                                              ; preds = %843, %812
  br label %847

847:                                              ; preds = %846, %799
  %848 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %849 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %848, i32 0, i32 1
  %850 = load i32, i32* %849, align 4
  %851 = load i32, i32* @F_SHA256, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %895

854:                                              ; preds = %847
  %855 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %856 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %855, i32 0, i32 0
  %857 = load i8*, i8** %856, align 8
  %858 = call i8* @SHA256_File(i8* %857, i32* null)
  store i8* %858, i8** %13, align 8
  %859 = icmp eq i8* %858, null
  br i1 %859, label %860, label %870

860:                                              ; preds = %854
  %861 = load i32, i32* @LABEL, align 4
  %862 = load i8*, i8** %12, align 8
  %863 = load i8*, i8** @SHA256KEY, align 8
  %864 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %865 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %864, i32 0, i32 0
  %866 = load i8*, i8** %865, align 8
  %867 = load i32, i32* @errno, align 4
  %868 = call i8* @strerror(i32 %867)
  %869 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %862, i8* %863, i8* %866, i8* %868)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %894

870:                                              ; preds = %854
  %871 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %872 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %871, i32 0, i32 12
  %873 = load i8*, i8** %872, align 8
  %874 = load i8*, i8** %13, align 8
  %875 = call i64 @strcmp(i8* %873, i8* %874)
  %876 = icmp ne i64 %875, 0
  br i1 %876, label %877, label %891

877:                                              ; preds = %870
  %878 = load i32, i32* @LABEL, align 4
  %879 = load i64, i64* @flavor, align 8
  %880 = load i64, i64* @F_FREEBSD9, align 8
  %881 = icmp eq i64 %879, %880
  %882 = zext i1 %881 to i64
  %883 = select i1 %881, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)
  %884 = load i8*, i8** %12, align 8
  %885 = load i8*, i8** @SHA256KEY, align 8
  %886 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %887 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %886, i32 0, i32 12
  %888 = load i8*, i8** %887, align 8
  %889 = load i8*, i8** %13, align 8
  %890 = call i32 (i8*, ...) @printf(i8* %883, i8* %884, i8* %885, i8* %888, i8* %889)
  br label %891

891:                                              ; preds = %877, %870
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  %892 = load i8*, i8** %13, align 8
  %893 = call i32 @free(i8* %892)
  br label %894

894:                                              ; preds = %891, %860
  br label %895

895:                                              ; preds = %894, %847
  %896 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %897 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %896, i32 0, i32 1
  %898 = load i32, i32* %897, align 4
  %899 = load i32, i32* @F_SHA512, align 4
  %900 = and i32 %898, %899
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %943

902:                                              ; preds = %895
  %903 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %904 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %903, i32 0, i32 0
  %905 = load i8*, i8** %904, align 8
  %906 = call i8* @SHA512_File(i8* %905, i32* null)
  store i8* %906, i8** %13, align 8
  %907 = icmp eq i8* %906, null
  br i1 %907, label %908, label %918

908:                                              ; preds = %902
  %909 = load i32, i32* @LABEL, align 4
  %910 = load i8*, i8** %12, align 8
  %911 = load i8*, i8** @SHA512KEY, align 8
  %912 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %913 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %912, i32 0, i32 0
  %914 = load i8*, i8** %913, align 8
  %915 = load i32, i32* @errno, align 4
  %916 = call i8* @strerror(i32 %915)
  %917 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %910, i8* %911, i8* %914, i8* %916)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %942

918:                                              ; preds = %902
  %919 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %920 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %919, i32 0, i32 14
  %921 = load i8*, i8** %920, align 8
  %922 = load i8*, i8** %13, align 8
  %923 = call i64 @strcmp(i8* %921, i8* %922)
  %924 = icmp ne i64 %923, 0
  br i1 %924, label %925, label %939

925:                                              ; preds = %918
  %926 = load i32, i32* @LABEL, align 4
  %927 = load i64, i64* @flavor, align 8
  %928 = load i64, i64* @F_FREEBSD9, align 8
  %929 = icmp eq i64 %927, %928
  %930 = zext i1 %929 to i64
  %931 = select i1 %929, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)
  %932 = load i8*, i8** %12, align 8
  %933 = load i8*, i8** @SHA512KEY, align 8
  %934 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %935 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %934, i32 0, i32 14
  %936 = load i8*, i8** %935, align 8
  %937 = load i8*, i8** %13, align 8
  %938 = call i32 (i8*, ...) @printf(i8* %931, i8* %932, i8* %933, i8* %936, i8* %937)
  br label %939

939:                                              ; preds = %925, %918
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  %940 = load i8*, i8** %13, align 8
  %941 = call i32 @free(i8* %940)
  br label %942

942:                                              ; preds = %939, %908
  br label %943

943:                                              ; preds = %942, %895
  %944 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %945 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %944, i32 0, i32 1
  %946 = load i32, i32* %945, align 4
  %947 = load i32, i32* @F_SLINK, align 4
  %948 = and i32 %946, %947
  %949 = icmp ne i32 %948, 0
  br i1 %949, label %950, label %1015

950:                                              ; preds = %943
  %951 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %952 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %951, i32 0, i32 0
  %953 = load i8*, i8** %952, align 8
  %954 = call i8* @rlink(i8* %953)
  store i8* %954, i8** %11, align 8
  %955 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %956 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %955, i32 0, i32 15
  %957 = load i8*, i8** %956, align 8
  %958 = call i64 @strcmp(i8* %954, i8* %957)
  %959 = icmp ne i64 %958, 0
  br i1 %959, label %960, label %1015

960:                                              ; preds = %950
  %961 = load i32, i32* @LABEL, align 4
  %962 = load i64, i64* @flavor, align 8
  %963 = load i64, i64* @F_FREEBSD9, align 8
  %964 = icmp eq i64 %962, %963
  %965 = zext i1 %964 to i64
  %966 = select i1 %964, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0)
  %967 = load i8*, i8** %12, align 8
  %968 = load i8*, i8** %11, align 8
  %969 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %970 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %969, i32 0, i32 15
  %971 = load i8*, i8** %970, align 8
  %972 = call i32 (i8*, ...) @printf(i8* %966, i8* %967, i8* %968, i8* %971)
  %973 = load i64, i64* @uflag, align 8
  %974 = icmp ne i64 %973, 0
  br i1 %974, label %975, label %1007

975:                                              ; preds = %960
  %976 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %977 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %976, i32 0, i32 0
  %978 = load i8*, i8** %977, align 8
  %979 = call i32 @unlink(i8* %978)
  %980 = icmp eq i32 %979, -1
  br i1 %980, label %990, label %981

981:                                              ; preds = %975
  %982 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %983 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %982, i32 0, i32 15
  %984 = load i8*, i8** %983, align 8
  %985 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %986 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %985, i32 0, i32 0
  %987 = load i8*, i8** %986, align 8
  %988 = call i32 @symlink(i8* %984, i8* %987)
  %989 = icmp eq i32 %988, -1
  br i1 %989, label %990, label %999

990:                                              ; preds = %981, %975
  %991 = load i32, i32* @errno, align 4
  %992 = call i8* @strerror(i32 %991)
  %993 = load i64, i64* @flavor, align 8
  %994 = load i64, i64* @F_FREEBSD9, align 8
  %995 = icmp eq i64 %993, %994
  %996 = zext i1 %995 to i64
  %997 = select i1 %995, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %998 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %992, i8* %997)
  br label %1006

999:                                              ; preds = %981
  %1000 = load i64, i64* @flavor, align 8
  %1001 = load i64, i64* @F_FREEBSD9, align 8
  %1002 = icmp eq i64 %1000, %1001
  %1003 = zext i1 %1002 to i64
  %1004 = select i1 %1002, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %1005 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %1004)
  br label %1006

1006:                                             ; preds = %999, %990
  br label %1014

1007:                                             ; preds = %960
  %1008 = load i64, i64* @flavor, align 8
  %1009 = load i64, i64* @F_FREEBSD9, align 8
  %1010 = icmp eq i64 %1008, %1009
  %1011 = zext i1 %1010 to i64
  %1012 = select i1 %1010, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %1013 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %1012)
  br label %1014

1014:                                             ; preds = %1007, %1006
  br label %1015

1015:                                             ; preds = %1014, %950, %943
  %1016 = load i32, i32* %10, align 4
  store i32 %1016, i32* %3, align 4
  br label %1017

1017:                                             ; preds = %1015, %83
  %1018 = load i32, i32* %3, align 4
  ret i32 %1018
}

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nodetype(i32) #1

declare dso_local i32 @inotype(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @mknod(i8*, i32, i64) #1

declare dso_local i32 @nodetoino(i32) #1

declare dso_local i32 @lchown(i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @lchmod(i8*, i32) #1

declare dso_local i8* @ctime(i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @crc(i32, i64*, i64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @MD5File(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @RMD160File(i8*, i32*) #1

declare dso_local i8* @SHA1File(i8*, i32*) #1

declare dso_local i8* @SHA256_File(i8*, i32*) #1

declare dso_local i8* @SHA512_File(i8*, i32*) #1

declare dso_local i8* @rlink(i8*) #1

declare dso_local i32 @symlink(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
