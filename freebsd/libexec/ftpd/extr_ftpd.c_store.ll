; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Internal: unique flag to APPE\00", align 1
@guest = common dso_local global i64 0, align 8
@noguestmod = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Appending to existing file denied.\00", align 1
@restart_point = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Modifying existing file denied.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@byte_count = common dso_local global i32 0, align 4
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@L_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Transfer complete (unique file name:%s).\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Transfer complete.\00", align 1
@data = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"put\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 97
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @guest, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* @noguestmod, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %162

32:                                               ; preds = %27, %24
  store i64 0, i64* @restart_point, align 8
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 0, i64* @restart_point, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i64, i64* @guest, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* @noguestmod, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* @restart_point, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %162

48:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %40, %37
  %51 = load i64, i64* @restart_point, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @guniquefd(i8* %58, i8** %4)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %162

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = call i32* @fdopen(i32 %63, i8* %64)
  store i32* %65, i32** %8, align 8
  br label %70

66:                                               ; preds = %54
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32* @fopen(i8* %67, i8* %68)
  store i32* %69, i32** %8, align 8
  br label %70

70:                                               ; preds = %66, %62
  store i32 (i32*)* @fclose, i32 (i32*)** %10, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @perror_reply(i32 553, i8* %74)
  br label %162

76:                                               ; preds = %70
  store i32 -1, i32* @byte_count, align 4
  %77 = load i64, i64* @restart_point, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %76
  %80 = load i64, i64* @type, align 8
  %81 = load i64, i64* @TYPE_A, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load i64, i64* @restart_point, align 8
  store i64 %84, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %85

85:                                               ; preds = %104, %83
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @getc(i32* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* @EOF, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @perror_reply(i32 550, i8* %96)
  br label %149

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* %11, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %85

105:                                              ; preds = %85
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @SEEK_CUR, align 4
  %108 = call i64 @fseeko(i32* %106, i32 0, i32 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @perror_reply(i32 550, i8* %111)
  br label %149

113:                                              ; preds = %105
  br label %125

114:                                              ; preds = %79
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @fileno(i32* %115)
  %117 = load i64, i64* @restart_point, align 8
  %118 = load i32, i32* @L_SET, align 4
  %119 = call i64 @lseek(i32 %116, i64 %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @perror_reply(i32 550, i8* %122)
  br label %149

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %76
  %127 = load i8*, i8** %4, align 8
  %128 = call i32* @dataconn(i8* %127, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %149

132:                                              ; preds = %126
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i64 @receive_data(i32* %133, i32* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %141)
  br label %145

143:                                              ; preds = %137
  %144 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %132
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @fclose(i32* %147)
  store i32 -1, i32* @data, align 4
  store i32 -1, i32* @pdata, align 4
  br label %149

149:                                              ; preds = %146, %131, %121, %110, %95
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 97
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %156 = load i8*, i8** %4, align 8
  %157 = load i32, i32* @byte_count, align 4
  %158 = call i32 @LOGBYTES(i8* %155, i8* %156, i32 %157)
  %159 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 %159(i32* %160)
  br label %171

162:                                              ; preds = %73, %61, %46, %30
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 97
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 @LOGCMD(i8* %168, i8* %169)
  br label %171

171:                                              ; preds = %162, %149
  ret void
}

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @guniquefd(i8*, i8**) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @dataconn(i8*, i32, i8*) #1

declare dso_local i64 @receive_data(i32*, i32*) #1

declare dso_local i32 @LOGBYTES(i8*, i8*, i32) #1

declare dso_local i32 @LOGCMD(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
