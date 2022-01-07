; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/decryptcore/extr_decryptcore.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/decryptcore/extr_decryptcore.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@PJDLOG_MODE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(decryptcore) \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Lc:d:e:fk:n:p:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Core file path is too long.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Encrypted core file path is too long.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Key file path is too long.\00", align 1
@optind = common dso_local global i64 0, align 8
@DECRYPTCORE_CRASHDIR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s/key.%s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s/vmcore.%s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s/vmcore_encrypted.%s\00", align 1
@PJDLOG_MODE_SYSLOG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Unable to remove old core\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unable to remove core\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i32 1, i32* %15, align 4
  %30 = load i32, i32* @PJDLOG_MODE_STD, align 4
  %31 = call i32 @pjdlog_init(i32 %30)
  %32 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  store i8 0, i8* %23, align 16
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8 0, i8* %26, align 16
  store i32 0, i32* %18, align 4
  store i8 0, i8* %29, align 16
  store i8* null, i8** %12, align 8
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %80, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %78 [
    i32 76, label %40
    i32 99, label %41
    i32 100, label %50
    i32 101, label %52
    i32 102, label %61
    i32 107, label %62
    i32 110, label %71
    i32 112, label %73
    i32 118, label %75
  ]

40:                                               ; preds = %38
  store i32 1, i32* %19, align 4
  br label %80

41:                                               ; preds = %38
  %42 = load i8*, i8** @optarg, align 8
  %43 = trunc i64 %21 to i32
  %44 = call i32 @strlcpy(i8* %23, i8* %42, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, %21
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @pjdlog_exitx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  br label %80

50:                                               ; preds = %38
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %10, align 8
  br label %80

52:                                               ; preds = %38
  %53 = load i8*, i8** @optarg, align 8
  %54 = trunc i64 %25 to i32
  %55 = call i32 @strlcpy(i8* %26, i8* %53, i32 %54)
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %56, %25
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @pjdlog_exitx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  br label %80

61:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  br label %80

62:                                               ; preds = %38
  %63 = load i8*, i8** @optarg, align 8
  %64 = trunc i64 %28 to i32
  %65 = call i32 @strlcpy(i8* %29, i8* %63, i32 %64)
  %66 = sext i32 %65 to i64
  %67 = icmp uge i64 %66, %28
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @pjdlog_exitx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  br label %80

71:                                               ; preds = %38
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** %11, align 8
  br label %80

73:                                               ; preds = %38
  %74 = load i8*, i8** @optarg, align 8
  store i8* %74, i8** %12, align 8
  br label %80

75:                                               ; preds = %38
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %80

78:                                               ; preds = %38
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %75, %73, %71, %70, %61, %60, %50, %49, %40
  br label %33

81:                                               ; preds = %33
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* @optind, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87
  store i8** %89, i8*** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 (...) @usage()
  br label %94

94:                                               ; preds = %92, %81
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %97, %94
  %101 = load i8, i8* %29, align 16
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i8, i8* %26, align 16
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i8, i8* %23, align 16
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %104, %100
  %113 = call i32 (...) @usage()
  br label %114

114:                                              ; preds = %112, %108, %97
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %165

117:                                              ; preds = %114
  store i64 0, i64* %17, align 8
  br label %118

118:                                              ; preds = %135, %117
  %119 = load i64, i64* %17, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load i32, i32* @PATH_MAX, align 4
  %122 = call i64 @strnlen(i8* %120, i32 %121)
  %123 = icmp ult i64 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load i8*, i8** %11, align 8
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = call i64 @isdigit(i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = call i32 (...) @usage()
  br label %134

134:                                              ; preds = %132, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %17, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %17, align 8
  br label %118

138:                                              ; preds = %118
  %139 = load i8*, i8** %10, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i8*, i8** @DECRYPTCORE_CRASHDIR, align 8
  store i8* %142, i8** %10, align 8
  br label %143

143:                                              ; preds = %141, %138
  %144 = trunc i64 %28 to i32
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = call i64 @snprintf(i8* %29, i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %145, i8* %146)
  %148 = icmp sgt i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @PJDLOG_VERIFY(i32 %149)
  %151 = trunc i64 %21 to i32
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i64 @snprintf(i8* %23, i32 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %152, i8* %153)
  %155 = icmp sgt i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @PJDLOG_VERIFY(i32 %156)
  %158 = trunc i64 %25 to i32
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i64 @snprintf(i8* %26, i32 %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %159, i8* %160)
  %162 = icmp sgt i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @PJDLOG_VERIFY(i32 %163)
  br label %165

165:                                              ; preds = %143, %114
  %166 = load i8*, i8** %12, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = load i8, i8* %29, align 16
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = load i8, i8* %26, align 16
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i8, i8* %23, align 16
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176, %172, %168, %165
  %181 = call i32 (...) @usage()
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* @PJDLOG_MODE_SYSLOG, align 4
  %187 = call i32 @pjdlog_mode_set(i32 %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @pjdlog_debug_set(i32 %189)
  %191 = load i32, i32* %18, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = call i32 @unlink(i8* %23)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load i64, i64* @errno, align 8
  %198 = load i64, i64* @ENOENT, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* @LOG_ERR, align 4
  %202 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %232

203:                                              ; preds = %196, %193, %188
  %204 = load i32, i32* @O_WRONLY, align 4
  %205 = load i32, i32* @O_CREAT, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @O_EXCL, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @open(i8* %23, i32 %208, i32 384)
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp eq i32 %210, -1
  br i1 %211, label %212, label %215

212:                                              ; preds = %203
  %213 = load i32, i32* @LOG_ERR, align 4
  %214 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %213, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %23)
  br label %232

215:                                              ; preds = %203
  %216 = load i32, i32* %16, align 4
  %217 = load i8*, i8** %12, align 8
  %218 = call i32 @decrypt(i32 %216, i8* %217, i8* %29, i8* %26)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %215
  %221 = call i32 @unlink(i8* %23)
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i64, i64* @errno, align 8
  %225 = load i64, i64* @ENOENT, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* @LOG_ERR, align 4
  %229 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %223, %220
  br label %232

231:                                              ; preds = %215
  store i32 0, i32* %15, align 4
  br label %232

232:                                              ; preds = %231, %230, %212, %200
  %233 = call i32 (...) @pjdlog_fini()
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @exit(i32 %234) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pjdlog_init(i32) #2

declare dso_local i32 @pjdlog_prefix_set(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @pjdlog_exitx(i32, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i64 @isdigit(i32) #2

declare dso_local i32 @PJDLOG_VERIFY(i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @pjdlog_mode_set(i32) #2

declare dso_local i32 @pjdlog_debug_set(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @decrypt(i32, i8*, i8*, i8*) #2

declare dso_local i32 @pjdlog_fini(...) #2

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
