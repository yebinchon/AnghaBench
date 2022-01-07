; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_roll_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_roll_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@ISC_LOG_ROLLNEVER = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_LOG_ROLLINFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@ISC_R_NOSPACE = common dso_local global i64 0, align 8
@ISC_R_FILENOTFOUND = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to remove log file '%s.%d': %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"unable to rename log file '%s.%d' to '%s.%d': %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s.0\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"unable to rename log file '%s' to '%s.0': %s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"unable to remove log file '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @roll_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roll_log(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @FILE_VERSIONS(i32* %22)
  %24 = load i32, i32* @ISC_LOG_ROLLNEVER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %27, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %208

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @FILE_NAME(i32* %29)
  store i8* %30, i8** %10, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @greatest_version(i32* %31, i32* %6)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @ISC_R_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %208

38:                                               ; preds = %28
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @FILE_VERSIONS(i32* %39)
  %41 = load i32, i32* @ISC_LOG_ROLLINFINITE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @FILE_VERSIONS(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %88

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @FILE_VERSIONS(i32* %53)
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = trunc i64 %15 to i32
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = trunc i64 %15 to i32
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %56
  %68 = load i64, i64* @ISC_R_NOSPACE, align 8
  store i64 %68, i64* %11, align 8
  br label %71

69:                                               ; preds = %64
  %70 = call i64 @isc_file_remove(i8* %17)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @ISC_R_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @ISC_R_FILENOTFOUND, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @isc_result_totext(i64 %83)
  %85 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %79, %75, %71
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %48
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %151, %88
  %91 = load i32, i32* %4, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %154

93:                                               ; preds = %90
  %94 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %94, i64* %11, align 8
  %95 = trunc i64 %15 to i32
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %96, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = trunc i64 %15 to i32
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103, %93
  %107 = load i64, i64* @ISC_R_NOSPACE, align 8
  store i64 %107, i64* %11, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @ISC_R_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = trunc i64 %20 to i32
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = trunc i64 %20 to i32
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120, %112
  %124 = load i64, i64* @ISC_R_NOSPACE, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %123, %120
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @ISC_R_SUCCESS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i64 @isc_file_rename(i8* %17, i8* %21)
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @ISC_R_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* @ISC_R_FILENOTFOUND, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG_ERR, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sub nsw i32 %143, 1
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %4, align 4
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @isc_result_totext(i64 %147)
  %149 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %141, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %142, i32 %144, i8* %145, i32 %146, i32 %148)
  br label %150

150:                                              ; preds = %140, %136, %132
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %4, align 4
  br label %90

154:                                              ; preds = %90
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @FILE_VERSIONS(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %154
  %159 = trunc i64 %20 to i32
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = trunc i64 %20 to i32
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %5, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165, %158
  %169 = load i64, i64* @ISC_R_NOSPACE, align 8
  store i64 %169, i64* %11, align 8
  br label %173

170:                                              ; preds = %165
  %171 = load i8*, i8** %10, align 8
  %172 = call i64 @isc_file_rename(i8* %171, i8* %21)
  store i64 %172, i64* %11, align 8
  br label %173

173:                                              ; preds = %170, %168
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* @ISC_R_SUCCESS, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @ISC_R_FILENOTFOUND, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i32, i32* @LOG_ERR, align 4
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @isc_result_totext(i64 %185)
  %187 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %182, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %183, i8* %184, i32 %186)
  br label %188

188:                                              ; preds = %181, %177, %173
  br label %206

189:                                              ; preds = %154
  %190 = load i8*, i8** %10, align 8
  %191 = call i64 @isc_file_remove(i8* %190)
  store i64 %191, i64* %11, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @ISC_R_SUCCESS, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* @ISC_R_FILENOTFOUND, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* @LOG_ERR, align 4
  %201 = load i8*, i8** %10, align 8
  %202 = load i64, i64* %11, align 8
  %203 = call i32 @isc_result_totext(i64 %202)
  %204 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %201, i32 %203)
  br label %205

205:                                              ; preds = %199, %195, %189
  br label %206

206:                                              ; preds = %205, %188
  %207 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %207, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %208

208:                                              ; preds = %206, %36, %26
  %209 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i64, i64* %2, align 8
  ret i64 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FILE_VERSIONS(i32*) #2

declare dso_local i8* @FILE_NAME(i32*) #2

declare dso_local i64 @greatest_version(i32*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @isc_file_remove(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #2

declare dso_local i32 @isc_result_totext(i64) #2

declare dso_local i64 @isc_file_rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
