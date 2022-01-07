; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getclassbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_login_getclassbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.passwd = type { i8*, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@login_getclassbyname.login_dbarray = internal global [3 x i8*] zeroinitializer, align 16
@LOGIN_MECLASS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_FILE_LOGIN_CONF = common dso_local global i8* null, align 8
@path_login_conf = common dso_local global i8* null, align 8
@LOGIN_DEFCLASS = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"login_getclass: unknown class '%s'\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: no default/fallback class '%s'\00", align 1
@lc_object_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: strdup: %m\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: retrieving class information: %m\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: 'tc=' reference loop '%s'\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"couldn't resolve 'tc=' reference in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: unexpected cgetent() error '%s': %m\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"login_getclass\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @login_getclassbyname(i8* %0, %struct.passwd* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %17 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %209

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** @LOGIN_MECLASS, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i1 [ false, %19 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.passwd*, %struct.passwd** %5, align 8
  %38 = icmp eq %struct.passwd* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  br label %44

40:                                               ; preds = %36
  %41 = load %struct.passwd*, %struct.passwd** %5, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i8* [ null, %39 ], [ %43, %40 ]
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = call i32 (...) @geteuid()
  store i32 %49, i32* %10, align 4
  %50 = call i32 (...) @getegid()
  store i32 %50, i32* %11, align 4
  %51 = load %struct.passwd*, %struct.passwd** %5, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @setegid(i32 %53)
  %55 = load %struct.passwd*, %struct.passwd** %5, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @seteuid(i32 %57)
  br label %59

59:                                               ; preds = %48, %44
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load i32, i32* @MAXPATHLEN, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** @_FILE_LOGIN_CONF, align 8
  %66 = call i32 @snprintf(i8* %23, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i32, i32* @MAXPATHLEN, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.passwd*, %struct.passwd** %5, align 8
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.passwd*, %struct.passwd** %5, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @_secure_path(i8* %23, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 %81
  store i8* %23, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %69
  br label %84

84:                                               ; preds = %83, %62, %59
  %85 = load i8*, i8** @path_login_conf, align 8
  %86 = call i32 @_secure_path(i8* %85, i32 0, i32 0)
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i8*, i8** @path_login_conf, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 %92
  store i8* %89, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 %96
  store i8* null, i8** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = call i32 @memset(%struct.TYPE_6__* %98, i32 0, i32 24)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %94
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108, %94
  %114 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  store i8* %114, i8** %4, align 8
  br label %115

115:                                              ; preds = %113, %108
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @cgetent(i32** %117, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 0), i8* %118)
  switch i32 %119, label %185 [
    i32 -1, label %120
    i32 0, label %163
    i32 -2, label %182
    i32 -3, label %183
    i32 1, label %184
  ]

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %186

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 -1, i32* %7, align 4
  br label %139

128:                                              ; preds = %124
  %129 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 0), align 16
  %130 = load i32, i32* @O_RDONLY, align 4
  %131 = load i32, i32* @O_CLOEXEC, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @open(i8* %129, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @close(i32 %136)
  br label %138

138:                                              ; preds = %135, %128
  br label %139

139:                                              ; preds = %138, %127
  %140 = load i32, i32* %7, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %4, align 8
  %144 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  %145 = call i64 @strcmp(i8* %143, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142, %139
  %148 = load i32, i32* @LOG_ERR, align 4
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %147, %142
  %152 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  store i8* %152, i8** %4, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @cgetent(i32** %154, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @login_getclassbyname.login_dbarray, i64 0, i64 0), i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %186

162:                                              ; preds = %158, %151
  br label %163

163:                                              ; preds = %115, %162
  %164 = load i8*, i8** %4, align 8
  %165 = call i32* @strdup(i8* %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i32* %165, i32** %167, align 8
  %168 = icmp ne i32* %165, null
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load i8*, i8** %13, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @seteuid(i32 %173)
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @setegid(i32 %175)
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i32, i32* @lc_object_count, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @lc_object_count, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %180, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %16, align 4
  br label %205

181:                                              ; preds = %163
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %186

182:                                              ; preds = %115
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %186

183:                                              ; preds = %115
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %186

184:                                              ; preds = %115
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %186

185:                                              ; preds = %115
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %186

186:                                              ; preds = %185, %184, %183, %182, %181, %161, %123
  %187 = load i8*, i8** %13, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @seteuid(i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @setegid(i32 %192)
  br label %194

194:                                              ; preds = %189, %186
  %195 = load i8*, i8** %12, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load i32, i32* @LOG_ERR, align 4
  %199 = load i8*, i8** %12, align 8
  %200 = load i8*, i8** %4, align 8
  %201 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %198, i8* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %197, %194
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %204 = call i32 @free(%struct.TYPE_6__* %203)
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %202, %177
  %206 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %16, align 4
  switch i32 %207, label %212 [
    i32 0, label %208
    i32 1, label %210
  ]

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %208, %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %210

210:                                              ; preds = %209, %205
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %211

212:                                              ; preds = %205
  unreachable
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i32 @setegid(i32) #1

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @_secure_path(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cgetent(i32**, i8**, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
