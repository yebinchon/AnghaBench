; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_login_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_login_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@NO = common dso_local global i32 0, align 4
@_PATH_LOGACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: line %d: missing newline or line too long\00", align 1
@fs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: line %d: bad field count\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: line %d: bad first field\00", align 1
@from_match = common dso_local global i32 0, align 4
@user_match = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"cannot open %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @login_access(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @NO, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @_PATH_LOGACCESS, align 4
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %136

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %130, %113, %96, %79, %53, %43, %22
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = trunc i64 %15 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @fgets(i8* %17, i32 %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %133

33:                                               ; preds = %31
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = call i32 @strlen(i8* %17)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %17, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i32, i32* @_PATH_LOGACCESS, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i8*, i32, ...) @syslog(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %23

48:                                               ; preds = %33
  %49 = getelementptr inbounds i8, i8* %17, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %23

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %17, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %58, %55
  %67 = phi i1 [ false, %55 ], [ %65, %58 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  br label %55

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %17, i64 %73
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds i8, i8* %17, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %23

80:                                               ; preds = %71
  %81 = load i32, i32* @fs, align 4
  %82 = call i8* @strtok(i8* %17, i32 %81)
  store i8* %82, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32, i32* @fs, align 4
  %86 = call i8* @strtok(i8* null, i32 %85)
  store i8* %86, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* @fs, align 4
  %90 = call i8* @strtok(i8* null, i32 %89)
  store i8* %90, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @fs, align 4
  %94 = call i8* @strtok(i8* null, i32 %93)
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92, %88, %84, %80
  %97 = load i32, i32* @LOG_ERR, align 4
  %98 = load i32, i32* @_PATH_LOGACCESS, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (i32, i8*, i32, ...) @syslog(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99)
  br label %23

101:                                              ; preds = %92
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 43
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 45
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* @LOG_ERR, align 4
  %115 = load i32, i32* @_PATH_LOGACCESS, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (i32, i8*, i32, ...) @syslog(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116)
  br label %23

118:                                              ; preds = %107, %101
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = load i32, i32* @from_match, align 4
  %122 = call i64 @list_match(i8* %119, i8* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* @user_match, align 4
  %128 = call i64 @list_match(i8* %125, i8* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %124, %118
  %131 = phi i1 [ false, %118 ], [ %129, %124 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %11, align 4
  br label %23

133:                                              ; preds = %31
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @fclose(i32* %134)
  br label %145

136:                                              ; preds = %2
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @ENOENT, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG_ERR, align 4
  %142 = load i32, i32* @_PATH_LOGACCESS, align 4
  %143 = call i32 (i32, i8*, i32, ...) @syslog(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %133
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds i8, i8* %17, i64 0
  %150 = load i8, i8* %149, align 16
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 43
  br label %153

153:                                              ; preds = %148, %145
  %154 = phi i1 [ true, %145 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %156)
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i32, ...) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i8* @strtok(i8*, i32) #2

declare dso_local i64 @list_match(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
