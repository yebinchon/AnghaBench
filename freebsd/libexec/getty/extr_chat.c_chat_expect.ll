; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_chat_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_chat_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chat_debug = common dso_local global i32 0, align 4
@CHATDEBUG_EXPECT = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"chat_expect '%s'\00", align 1
@chat_alarm = common dso_local global i32 0, align 4
@alarmed = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@CHATDEBUG_RECEIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"chat_recv '%s' m=%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"chat_expect %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @chat_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chat_expect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @chat_debug, align 4
  %10 = load i32, i32* @CHATDEBUG_EXPECT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @LOG_DEBUG, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @cleanstr(i8* %15, i32 %17)
  %19 = call i32 (i32, i8*, i32, ...) @syslog(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %139

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %138

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @memset(i8* %31, i32 0, i32 %33)
  %35 = load i32, i32* @chat_alarm, align 4
  %36 = call i32 @alarm(i32 %35)
  store i64 0, i64* @alarmed, align 8
  br label %37

37:                                               ; preds = %132, %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %133

46:                                               ; preds = %44
  %47 = load i64, i64* @alarmed, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 3, i32* %4, align 4
  br label %132

50:                                               ; preds = %46
  %51 = load i32, i32* @STDIN_FILENO, align 4
  %52 = call i32 @read(i32 %51, i8* %7, i32 1)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %126

54:                                               ; preds = %50
  %55 = load i32, i32* @chat_debug, align 4
  %56 = load i32, i32* @CHATDEBUG_RECEIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_DEBUG, align 4
  %61 = load i8, i8* %7, align 1
  %62 = call i32 @cleanchr(i32* null, i8 zeroext %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, i32, ...) @syslog(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8*, i8** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %67, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i8, i8* %7, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %125

82:                                               ; preds = %65
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %82
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %2, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i64 @memcmp(i8* %94, i8* %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %90, %86
  %102 = phi i1 [ false, %86 ], [ %100, %90 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %86

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i32 @memcpy(i8* %111, i8* %115, i32 %118)
  br label %120

120:                                              ; preds = %110, %106
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %82
  br label %125

125:                                              ; preds = %124, %75
  br label %131

126:                                              ; preds = %50
  %127 = load i64, i64* @alarmed, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 3, i32 2
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %125
  br label %132

132:                                              ; preds = %131, %49
  br label %37

133:                                              ; preds = %44
  %134 = call i32 @alarm(i32 0)
  %135 = call i32 (...) @chat_unalarm()
  store i64 0, i64* @alarmed, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %133, %29
  br label %139

139:                                              ; preds = %138, %20
  %140 = load i32, i32* @chat_debug, align 4
  %141 = load i32, i32* @CHATDEBUG_EXPECT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* @LOG_DEBUG, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @result(i32 %146)
  %148 = call i32 (i32, i8*, i32, ...) @syslog(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @cleanstr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @cleanchr(i32*, i8 zeroext) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @chat_unalarm(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
