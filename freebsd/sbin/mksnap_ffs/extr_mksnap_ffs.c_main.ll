; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mksnap_ffs/extr_mksnap_ffs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mksnap_ffs/extr_mksnap_ffs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i32 }
%struct.group = type { i32 }
%struct.stat = type { i32, i64, i32 }
%struct.iovec = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pathname too long %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: Not a directory\00", align 1
@W_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Lack write permission in %s\00", align 1
@S_ISTXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Lack write permission in %s: Sticky bit set\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: Not a mount point\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Cannot retrieve operator gid\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Cannot create snapshot %s%s%s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Cannot stat %s\00", align 1
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"File %s is not a snapshot\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Cannot chown %s\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"Cannot chmod %s\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [255 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.statfs, align 8
  %12 = alloca %struct.group*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  br label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @PATH_MAX, align 4
  %52 = call i32 @strlcpy(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %71

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @PATH_MAX, align 4
  %59 = call i32 @strlcpy(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %70

60:                                               ; preds = %53
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = add nsw i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strlcpy(i8* %20, i8* %61, i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  br label %71

71:                                               ; preds = %70, %50
  %72 = call i64 @statfs(i8* %20, %struct.statfs* %11)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %76

76:                                               ; preds = %74, %71
  %77 = call i32 @isdir(i8* %20, %struct.stat* %13)
  switch i32 %77, label %82 [
    i32 -1, label %78
    i32 0, label %80
  ]

78:                                               ; preds = %76
  %79 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %80

80:                                               ; preds = %76, %78
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  br label %82

82:                                               ; preds = %76, %80
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @W_OK, align 4
  %85 = call i64 @access(i8* %20, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @S_ISTXT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 (...) @getuid()
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  br label %102

102:                                              ; preds = %100, %95, %89
  %103 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %120, %102
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @issamefs(i8* %106, %struct.statfs* %11)
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i8* @strchrnul(i8* %122, i8 signext 47)
  store i8* %123, i8** %9, align 8
  br label %105

124:                                              ; preds = %105
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @strlcpy(i8* %131, i8* %132, i32 8)
  br label %134

134:                                              ; preds = %129, %124
  %135 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.group* %135, %struct.group** %12, align 8
  %136 = icmp eq %struct.group* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  store %struct.iovec* null, %struct.iovec** %14, align 8
  store i32 0, i32* %16, align 4
  %140 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %141, i32 -1)
  %143 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %144, i32 -1)
  %146 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %147 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %146, i32 255)
  %148 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* null, i32 0)
  %149 = call i32 @build_iovec(%struct.iovec** %14, i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* null, i32 0)
  %150 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %150, align 16
  %151 = load %struct.iovec*, %struct.iovec** %14, align 8
  %152 = load i32, i32* %16, align 4
  %153 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @nmount(%struct.iovec* %151, i32 %152, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %139
  %158 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 254
  store i8 0, i8* %158, align 2
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %161 = load i8, i8* %160, align 16
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)
  %166 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %167 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %159, i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %157, %139
  %169 = load i8*, i8** %10, align 8
  %170 = load i32, i32* @O_RDONLY, align 4
  %171 = call i32 @open(i8* %169, i32 %170)
  store i32 %171, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %15, align 4
  %178 = call i64 @fstat(i32 %177, %struct.stat* %13)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SF_SNAPSHOT, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %189, %183
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.group*, %struct.group** %12, align 8
  %195 = getelementptr inbounds %struct.group, %struct.group* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @fchown(i32 %193, i32 -1, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %192
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @S_IRUSR, align 4
  %205 = load i32, i32* @S_IRGRP, align 4
  %206 = or i32 %204, %205
  %207 = call i64 @fchmod(i32 %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i8*, i8** %10, align 8
  %211 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %209, %202
  %213 = load i32, i32* @EXIT_SUCCESS, align 4
  %214 = call i32 @exit(i32 %213) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local i32 @isdir(i8*, %struct.stat*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i32 @issamefs(i8*, %struct.statfs*) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local %struct.group* @getgrnam(i8*) #2

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #2

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @fchown(i32, i32, i32) #2

declare dso_local i64 @fchmod(i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
