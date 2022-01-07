; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_allowed_luser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/authpf/extr_authpf.c_allowed_luser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32 }
%struct.group = type { i64 }

@PATH_ALLOWFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot open allowed users file %s (%s)\00", align 1
@NGROUPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid group '%s' in %s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"denied access to %s: not listed in %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\0A\0ASorry, you are not allowed to use this facility!\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*)* @allowed_luser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allowed_luser(%struct.passwd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.group*, align 8
  %15 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  %16 = load i8*, i8** @PATH_ALLOWFILE, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %189

24:                                               ; preds = %19
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load i8*, i8** @PATH_ALLOWFILE, align 8
  %27 = load i64, i64* @errno, align 8
  %28 = call i8* @strerror(i64 %27)
  %29 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %28)
  store i32 0, i32* %2, align 4
  br label %189

30:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* @NGROUPS, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @NGROUPS, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca i64, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %169, %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @fgetln(i32* %39, i64* %7)
  store i8* %40, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %170

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %72

55:                                               ; preds = %42
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  %58 = call i64 @malloc(i64 %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %5, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @err(i32 1, i32* null)
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %63, %50
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.passwd*, %struct.passwd** %3, align 8
  %80 = getelementptr inbounds %struct.passwd, %struct.passwd* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i64 @strcmp(i8* %81, i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %78
  br label %159

90:                                               ; preds = %72
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 37
  br i1 %95, label %96, label %144

96:                                               ; preds = %90
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call %struct.group* @getgrnam(i8* %98)
  store %struct.group* %99, %struct.group** %14, align 8
  %100 = icmp eq %struct.group* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8*, i8** @PATH_ALLOWFILE, align 8
  %106 = load i64, i64* @errno, align 8
  %107 = call i8* @strerror(i64 %106)
  %108 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %104, i8* %105, i8* %107)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %182

109:                                              ; preds = %96
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = load %struct.passwd*, %struct.passwd** %3, align 8
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.passwd*, %struct.passwd** %3, align 8
  %117 = getelementptr inbounds %struct.passwd, %struct.passwd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @getgrouplist(i8* %115, i32 %118, i64* %37, i32* %10)
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %112, %109
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %140, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load %struct.group*, %struct.group** %14, align 8
  %129 = getelementptr inbounds %struct.group, %struct.group* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %37, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %130, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %143

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %123

143:                                              ; preds = %136, %123
  br label %158

144:                                              ; preds = %90
  %145 = load %struct.passwd*, %struct.passwd** %3, align 8
  %146 = getelementptr inbounds %struct.passwd, %struct.passwd* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = call i64 @strcmp(i8* %147, i8* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %144
  %152 = load i8*, i8** %4, align 8
  %153 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  %154 = icmp eq i64 %153, 0
  br label %155

155:                                              ; preds = %151, %144
  %156 = phi i1 [ true, %144 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %143
  br label %159

159:                                              ; preds = %158, %89
  %160 = load i8*, i8** %5, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @free(i8* %163)
  store i8* null, i8** %5, align 8
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %182

169:                                              ; preds = %165
  br label %38

170:                                              ; preds = %38
  %171 = load i32, i32* @LOG_INFO, align 4
  %172 = load %struct.passwd*, %struct.passwd** %3, align 8
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** @PATH_ALLOWFILE, align 8
  %176 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %174, i8* %175)
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i8*, i8** %4, align 8
  %180 = load i32, i32* @stdout, align 4
  %181 = call i32 @fputs(i8* %179, i32 %180)
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %170, %168, %101
  %183 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %15, align 4
  switch i32 %184, label %191 [
    i32 0, label %185
    i32 1, label %189
  ]

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* @stdout, align 4
  %188 = call i32 @fflush(i32 %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %186, %182, %24, %23
  %190 = load i32, i32* %2, align 4
  ret i32 %190

191:                                              ; preds = %182
  unreachable
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @getgrouplist(i8*, i32, i64*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
