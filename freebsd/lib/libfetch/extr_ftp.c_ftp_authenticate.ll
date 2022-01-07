; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_authenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i8*, i8*, i32, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@MAXLOGNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"FTP_LOGIN\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"FTP_LOGIN=%s\0A\00", align 1
@FTP_ANONYMOUS_USER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"USER %s@%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"USER %s@%s@%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@FTP_NEED_PASSWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"FTP_PASSWORD\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FTP_PASSWORD=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.url*, %struct.url*)* @ftp_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_authenticate(i32* %0, %struct.url* %1, %struct.url* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.url* %1, %struct.url** %5, align 8
  store %struct.url* %2, %struct.url** %6, align 8
  %14 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %15 = load i32, i32* @MAXLOGNAME, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.url*, %struct.url** %5, align 8
  %22 = getelementptr inbounds %struct.url, %struct.url* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.url*, %struct.url** %5, align 8
  %30 = call i32 @fetch_netrc_auth(%struct.url* %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.url*, %struct.url** %5, align 8
  %33 = getelementptr inbounds %struct.url, %struct.url* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @DEBUGF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %46
  %55 = load i8*, i8** @FTP_ANONYMOUS_USER, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.url*, %struct.url** %6, align 8
  %58 = icmp ne %struct.url* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load %struct.url*, %struct.url** %5, align 8
  %61 = getelementptr inbounds %struct.url, %struct.url* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.url*, %struct.url** %5, align 8
  %64 = getelementptr inbounds %struct.url, %struct.url* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fetch_default_port(i32 %65)
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.url*, %struct.url** %5, align 8
  %72 = getelementptr inbounds %struct.url, %struct.url* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32*, i8*, i8*, ...) @ftp_cmd(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %93

75:                                               ; preds = %59, %56
  %76 = load %struct.url*, %struct.url** %6, align 8
  %77 = icmp ne %struct.url* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.url*, %struct.url** %5, align 8
  %82 = getelementptr inbounds %struct.url, %struct.url* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.url*, %struct.url** %5, align 8
  %85 = getelementptr inbounds %struct.url, %struct.url* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32*, i8*, i8*, ...) @ftp_cmd(i32* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %83, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %92

88:                                               ; preds = %75
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 (i32*, i8*, i8*, ...) @ftp_cmd(i32* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %88, %78
  br label %93

93:                                               ; preds = %92, %68
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @FTP_NEED_PASSWORD, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %152

97:                                               ; preds = %93
  %98 = load %struct.url*, %struct.url** %5, align 8
  %99 = getelementptr inbounds %struct.url, %struct.url* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i8* %106, i8** %8, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @DEBUGF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i8*, i8** %8, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %115, %112
  %121 = call i8* (...) @getlogin()
  store i8* %121, i8** %9, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i8*, i8** @FTP_ANONYMOUS_USER, align 8
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32, i32* @MAXLOGNAME, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @snprintf(i8* %20, i32 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  store i32 %129, i32* %13, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  br label %139

132:                                              ; preds = %125
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @MAXLOGNAME, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @MAXLOGNAME, align 4
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %131
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %20, i64 %141
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %18, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @gethostname(i8* %142, i32 %146)
  store i8* %20, i8** %8, align 8
  br label %148

148:                                              ; preds = %139, %115
  %149 = load i32*, i32** %4, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 (i32*, i8*, i8*, ...) @ftp_cmd(i32* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %150)
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %148, %93
  %153 = load i32, i32* %12, align 4
  %154 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %154)
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fetch_netrc_auth(%struct.url*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @DEBUGF(i8*, i8*) #2

declare dso_local i32 @fetch_default_port(i32) #2

declare dso_local i32 @ftp_cmd(i32*, i8*, i8*, ...) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @gethostname(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
