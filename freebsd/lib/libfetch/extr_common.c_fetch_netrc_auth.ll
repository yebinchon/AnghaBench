; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_netrc_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_netrc_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fdopen(netrcfd): %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"searching netrc for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"using default netrc settings\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"using netrc settings for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"login name in .netrc is too long\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"password in .netrc is too long\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"account\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_netrc_auth(%struct.url* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.url*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.url* %0, %struct.url** %3, align 8
  %7 = load %struct.url*, %struct.url** %3, align 8
  %8 = getelementptr inbounds %struct.url, %struct.url* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 (...) @fetch_netrc_open()
  %13 = load %struct.url*, %struct.url** %3, align 8
  %14 = getelementptr inbounds %struct.url, %struct.url* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.url*, %struct.url** %3, align 8
  %17 = getelementptr inbounds %struct.url, %struct.url* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %156

21:                                               ; preds = %15
  %22 = load %struct.url*, %struct.url** %3, align 8
  %23 = getelementptr inbounds %struct.url, %struct.url* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @fdopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.url*, %struct.url** %3, align 8
  %33 = getelementptr inbounds %struct.url, %struct.url* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @close(i32 %34)
  %36 = load %struct.url*, %struct.url** %3, align 8
  %37 = getelementptr inbounds %struct.url, %struct.url* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %156

39:                                               ; preds = %21
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @rewind(i32* %40)
  %42 = load %struct.url*, %struct.url** %3, align 8
  %43 = getelementptr inbounds %struct.url, %struct.url* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %74, %39
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @fetch_read_word(i32* %47)
  store i8* %48, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %75

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @fetch_read_word(i32* %61)
  store i8* %62, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load %struct.url*, %struct.url** %3, align 8
  %67 = getelementptr inbounds %struct.url, %struct.url* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcasecmp(i8* %65, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i8*, ...) @DEBUGF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  br label %75

74:                                               ; preds = %64, %60, %56
  br label %46

75:                                               ; preds = %71, %54, %46
  %76 = load i8*, i8** %4, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %149

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %143, %79
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @fetch_read_word(i32* %81)
  store i8* %82, i8** %4, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %144

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = call i8* @fetch_read_word(i32* %89)
  store i8* %90, i8** %4, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %149

93:                                               ; preds = %88
  %94 = load %struct.url*, %struct.url** %3, align 8
  %95 = getelementptr inbounds %struct.url, %struct.url* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @snprintf(i8* %96, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  %99 = icmp sgt i32 %98, 8
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = call i32 @fetch_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %102 = load %struct.url*, %struct.url** %3, align 8
  %103 = getelementptr inbounds %struct.url, %struct.url* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %100, %93
  br label %143

107:                                              ; preds = %84
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = call i8* @fetch_read_word(i32* %112)
  store i8* %113, i8** %4, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %149

116:                                              ; preds = %111
  %117 = load %struct.url*, %struct.url** %3, align 8
  %118 = getelementptr inbounds %struct.url, %struct.url* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @snprintf(i8* %119, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  %122 = icmp sgt i32 %121, 8
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = call i32 @fetch_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %125 = load %struct.url*, %struct.url** %3, align 8
  %126 = getelementptr inbounds %struct.url, %struct.url* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %123, %116
  br label %142

130:                                              ; preds = %107
  %131 = load i8*, i8** %4, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32*, i32** %6, align 8
  %136 = call i8* @fetch_read_word(i32* %135)
  store i8* %136, i8** %4, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %149

139:                                              ; preds = %134
  br label %141

140:                                              ; preds = %130
  br label %144

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141, %129
  br label %143

143:                                              ; preds = %142, %106
  br label %80

144:                                              ; preds = %140, %80
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @fclose(i32* %145)
  %147 = load %struct.url*, %struct.url** %3, align 8
  %148 = getelementptr inbounds %struct.url, %struct.url* %147, i32 0, i32 0
  store i32 -1, i32* %148, align 8
  store i32 0, i32* %2, align 4
  br label %156

149:                                              ; preds = %138, %115, %92, %78
  %150 = load i32, i32* @errno, align 4
  store i32 %150, i32* %5, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @fclose(i32* %151)
  %153 = load %struct.url*, %struct.url** %3, align 8
  %154 = getelementptr inbounds %struct.url, %struct.url* %153, i32 0, i32 0
  store i32 -1, i32* %154, align 8
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %156

156:                                              ; preds = %149, %144, %27, %20
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @fetch_netrc_open(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @DEBUGF(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @fetch_read_word(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @fetch_info(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
