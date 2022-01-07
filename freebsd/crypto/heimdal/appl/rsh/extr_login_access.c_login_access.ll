; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_login_access.c_login_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_login_access.c_login_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.login_info = type { i8*, %struct.passwd* }

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
define dso_local i32 @login_access(%struct.passwd* %0, i8* %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.login_info, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @NO, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.passwd*, %struct.passwd** %3, align 8
  %22 = getelementptr inbounds %struct.login_info, %struct.login_info* %5, i32 0, i32 1
  store %struct.passwd* %21, %struct.passwd** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds %struct.login_info, %struct.login_info* %5, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @_PATH_LOGACCESS, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %140

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %134, %119, %102, %85, %59, %49, %28
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = trunc i64 %17 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @fgets(i8* %19, i32 %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %137

39:                                               ; preds = %37
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = call i32 @strlen(i8* %19)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %19, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i32, i32* @_PATH_LOGACCESS, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 (i32, i8*, i32, ...) @syslog(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %29

54:                                               ; preds = %39
  %55 = getelementptr inbounds i8, i8* %19, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 35
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %29

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %19, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %64, %61
  %73 = phi i1 [ false, %61 ], [ %71, %64 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  br label %61

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %19, i64 %79
  store i8 0, i8* %80, align 1
  %81 = getelementptr inbounds i8, i8* %19, i64 0
  %82 = load i8, i8* %81, align 16
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %29

86:                                               ; preds = %77
  store i8* null, i8** %15, align 8
  %87 = load i32, i32* @fs, align 4
  %88 = call i8* @strtok_r(i8* %19, i32 %87, i8** %15)
  store i8* %88, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32, i32* @fs, align 4
  %92 = call i8* @strtok_r(i8* null, i32 %91, i8** %15)
  store i8* %92, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* @fs, align 4
  %96 = call i8* @strtok_r(i8* null, i32 %95, i8** %15)
  store i8* %96, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @fs, align 4
  %100 = call i8* @strtok_r(i8* null, i32 %99, i8** %15)
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98, %94, %90, %86
  %103 = load i32, i32* @LOG_ERR, align 4
  %104 = load i32, i32* @_PATH_LOGACCESS, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i32, i8*, i32, ...) @syslog(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  br label %29

107:                                              ; preds = %98
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 43
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 45
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* @LOG_ERR, align 4
  %121 = load i32, i32* @_PATH_LOGACCESS, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i32, i8*, i32, ...) @syslog(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122)
  br label %29

124:                                              ; preds = %113, %107
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* @from_match, align 4
  %127 = call i64 @list_match(i8* %125, %struct.login_info* %5, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* @user_match, align 4
  %132 = call i64 @list_match(i8* %130, %struct.login_info* %5, i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i1 [ false, %124 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %12, align 4
  br label %29

137:                                              ; preds = %37
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @fclose(i32* %138)
  br label %149

140:                                              ; preds = %2
  %141 = load i64, i64* @errno, align 8
  %142 = load i64, i64* @ENOENT, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @LOG_ERR, align 4
  %146 = load i32, i32* @_PATH_LOGACCESS, align 4
  %147 = call i32 (i32, i8*, i32, ...) @syslog(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %137
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds i8, i8* %19, i64 0
  %154 = load i8, i8* %153, align 16
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 43
  br label %157

157:                                              ; preds = %152, %149
  %158 = phi i1 [ true, %149 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %160)
  ret i32 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i32, ...) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i8* @strtok_r(i8*, i32, i8**) #2

declare dso_local i64 @list_match(i8*, %struct.login_info*, i32) #2

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
