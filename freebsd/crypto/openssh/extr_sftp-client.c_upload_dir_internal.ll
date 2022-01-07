; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_upload_dir_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_upload_dir_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.dirent = type { i64, i8* }
%struct.stat = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_DIR_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Maximum directory depth exceeded: %d levels\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't stat directory \22%s\22: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\22%s\22 is not a directory\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Entering %s\0A\00", align 1
@SSH2_FILEXFER_ATTR_SIZE = common dso_local global i32 0, align 4
@SSH2_FILEXFER_ATTR_UIDGID = common dso_local global i32 0, align 4
@SSH2_FILEXFER_ATTR_ACMODTIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\22%s\22 exists but is not a directory\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to open dir \22%s\22: %s\00", align 1
@interrupted = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: lstat failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Uploading of file %s to %s failed!\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: not a regular file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*, i32, i32, i32, i32, i32)* @upload_dir_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_dir_internal(%struct.sftp_conn* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sftp_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.dirent*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.stat, align 4
  %25 = alloca %struct.TYPE_7__, align 4
  %26 = alloca %struct.TYPE_7__*, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @MAX_DIR_DEPTH, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %9, align 4
  br label %213

33:                                               ; preds = %8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @stat(i8* %34, %struct.stat* %24)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %40)
  store i32 -1, i32* %9, align 4
  br label %213

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %9, align 4
  br label %213

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = call i32 @attrib_clear(%struct.TYPE_7__* %25)
  %58 = call i32 @stat_to_attrib(%struct.stat* %24, %struct.TYPE_7__* %25)
  %59 = load i32, i32* @SSH2_FILEXFER_ATTR_SIZE, align 4
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @SSH2_FILEXFER_ATTR_UIDGID, align 4
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1023
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %56
  %75 = load i32, i32* @SSH2_FILEXFER_ATTR_ACMODTIME, align 4
  %76 = xor i32 %75, -1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %56
  %81 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i64 @do_mkdir(%struct.sftp_conn* %81, i8* %82, %struct.TYPE_7__* %25, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call %struct.TYPE_7__* @do_stat(%struct.sftp_conn* %86, i8* %87, i32 0)
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %26, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %9, align 4
  br label %213

91:                                               ; preds = %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @S_ISDIR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %9, align 4
  br label %213

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i8*, i8** %11, align 8
  %103 = call i32* @opendir(i8* %102)
  store i32* %103, i32** %19, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* @errno, align 4
  %108 = call i8* @strerror(i32 %107)
  %109 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %106, i8* %108)
  store i32 -1, i32* %9, align 4
  br label %213

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %201, %162, %126, %110
  %112 = load i32*, i32** %19, align 8
  %113 = call %struct.dirent* @readdir(i32* %112)
  store %struct.dirent* %113, %struct.dirent** %20, align 8
  %114 = icmp ne %struct.dirent* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* @interrupted, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i1 [ false, %111 ], [ %118, %115 ]
  br i1 %120, label %121, label %202

121:                                              ; preds = %119
  %122 = load %struct.dirent*, %struct.dirent** %20, align 8
  %123 = getelementptr inbounds %struct.dirent, %struct.dirent* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %111

127:                                              ; preds = %121
  %128 = load i8*, i8** %23, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %22, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load %struct.dirent*, %struct.dirent** %20, align 8
  %133 = getelementptr inbounds %struct.dirent, %struct.dirent* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %21, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %21, align 8
  %137 = call i8* @path_append(i8* %135, i8* %136)
  store i8* %137, i8** %23, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = call i8* @path_append(i8* %138, i8* %139)
  store i8* %140, i8** %22, align 8
  %141 = load i8*, i8** %22, align 8
  %142 = call i32 @lstat(i8* %141, %struct.stat* %24)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %149

144:                                              ; preds = %127
  %145 = load i8*, i8** %21, align 8
  %146 = load i32, i32* @errno, align 4
  %147 = call i8* @strerror(i32 %146)
  %148 = call i32 (i8*, i8*, ...) @logit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %145, i8* %147)
  store i32 -1, i32* %18, align 4
  br label %201

149:                                              ; preds = %127
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @S_ISDIR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i8*, i8** %21, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %21, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %154
  br label %111

163:                                              ; preds = %158
  %164 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %165 = load i8*, i8** %22, align 8
  %166 = load i8*, i8** %23, align 8
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @upload_dir_internal(%struct.sftp_conn* %164, i8* %165, i8* %166, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %163
  store i32 -1, i32* %18, align 4
  br label %176

176:                                              ; preds = %175, %163
  br label %200

177:                                              ; preds = %149
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @S_ISREG(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %184 = load i8*, i8** %22, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @do_upload(%struct.sftp_conn* %183, i8* %184, i8* %185, i32 %186, i32 %187, i32 %188)
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %195

191:                                              ; preds = %182
  %192 = load i8*, i8** %22, align 8
  %193 = load i8*, i8** %23, align 8
  %194 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %192, i8* %193)
  store i32 -1, i32* %18, align 4
  br label %195

195:                                              ; preds = %191, %182
  br label %199

196:                                              ; preds = %177
  %197 = load i8*, i8** %21, align 8
  %198 = call i32 (i8*, i8*, ...) @logit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %196, %195
  br label %200

200:                                              ; preds = %199, %176
  br label %201

201:                                              ; preds = %200, %144
  br label %111

202:                                              ; preds = %119
  %203 = load i8*, i8** %23, align 8
  %204 = call i32 @free(i8* %203)
  %205 = load i8*, i8** %22, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @do_setstat(%struct.sftp_conn* %207, i8* %208, %struct.TYPE_7__* %25)
  %210 = load i32*, i32** %19, align 8
  %211 = call i32 @closedir(i32* %210)
  %212 = load i32, i32* %18, align 4
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %202, %105, %97, %90, %47, %37, %30
  %214 = load i32, i32* %9, align 4
  ret i32 %214
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mprintf(i8*, i8*) #1

declare dso_local i32 @attrib_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @stat_to_attrib(%struct.stat*, %struct.TYPE_7__*) #1

declare dso_local i64 @do_mkdir(%struct.sftp_conn*, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @do_stat(%struct.sftp_conn*, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @path_append(i8*, i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @logit(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @do_upload(%struct.sftp_conn*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @do_setstat(%struct.sftp_conn*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
