; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_cwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@FTP_WORKING_DIRECTORY = common dso_local global i32 0, align 4
@FTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CDUP\00", align 1
@FTP_FILE_ACTION_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"CWD %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ftp_cwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_cwd(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %187

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i8*, ...) @ftp_cmd(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @FTP_WORKING_DIRECTORY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = trunc i64 %15 to i32
  %30 = call i32 @ftp_pwd(i32* %28, i8* %17, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @FTP_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ftp_seterr(i32 %34)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %187

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %116, %36
  %38 = call i32 @strlen(i8* %17)
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %69, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp sle i64 %45, %50
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i1 [ false, %39 ], [ %51, %43 ]
  br i1 %53, label %54, label %72

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %17, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %59, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %39

72:                                               ; preds = %67, %52
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %17, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 47
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %79
  br label %117

97:                                               ; preds = %88, %72
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 (i32*, i8*, ...) @ftp_cmd(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* @FTP_FILE_ACTION_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 (i32*, i8*, ...) @ftp_cmd(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* @FTP_WORKING_DIRECTORY, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %4, align 8
  %109 = trunc i64 %15 to i32
  %110 = call i32 @ftp_pwd(i32* %108, i8* %17, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @FTP_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %102, %97
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ftp_seterr(i32 %114)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %187

116:                                              ; preds = %107
  br label %37

117:                                              ; preds = %96
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %180, %117
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %186

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %132, %126
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 47
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %127

137:                                              ; preds = %127
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %158, %137
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8*, i8** %7, align 8
  %146 = icmp ult i8* %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 47
  br label %155

155:                                              ; preds = %147, %140
  %156 = phi i1 [ false, %140 ], [ %154, %147 ]
  br i1 %156, label %157, label %161

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %140

161:                                              ; preds = %155
  %162 = load i32*, i32** %4, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8*, i8** %6, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 (i32*, i8*, ...) @ftp_cmd(i32* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %170, i8* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @FTP_FILE_ACTION_OK, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @ftp_seterr(i32 %177)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %187

179:                                              ; preds = %161
  br label %180

180:                                              ; preds = %179
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %6, align 8
  br label %122

186:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %187

187:                                              ; preds = %186, %176, %113, %33, %21
  %188 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @ftp_cmd(i32*, i8*, ...) #2

declare dso_local i32 @ftp_pwd(i32*, i8*, i32) #2

declare dso_local i32 @ftp_seterr(i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
