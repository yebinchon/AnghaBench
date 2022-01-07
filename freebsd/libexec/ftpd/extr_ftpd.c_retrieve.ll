; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@byte_count = common dso_local global i32 0, align 4
@guest = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: not a plain file.\00", align 1
@restart_point = common dso_local global i64 0, align 8
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@L_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stats = common dso_local global i64 0, align 8
@data = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retrieve(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32 (i32*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %5, align 8
  store i32 (i32*)* @fclose, i32 (i32*)** %8, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %35

26:                                               ; preds = %2
  %27 = trunc i64 %17 to i32
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @snprintf(i8* %19, i32 %27, i8* %28, i8* %29)
  store i8* %19, i8** %4, align 8
  %31 = call i32* @ftpd_popen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  store i32 (i32*)* @ftpd_pclose, i32 (i32*)** %8, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load i32, i32* @BUFSIZ, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i64, i64* @errno, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @perror_reply(i32 550, i8* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @LOGCMD(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %38
  store i32 1, i32* %12, align 4
  br label %183

51:                                               ; preds = %35
  store i32 -1, i32* @byte_count, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @fileno(i32* %55)
  %57 = call i64 @fstat(i32 %56, %struct.stat* %7)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @perror_reply(i32 550, i8* %60)
  br label %172

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @S_ISREG(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @S_ISDIR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* @guest, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %67
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @reply(i32 550, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %172

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %62
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i64, i64* @restart_point, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %81
  %85 = load i64, i64* @type, align 8
  %86 = load i64, i64* @TYPE_A, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  %89 = load i64, i64* @restart_point, align 8
  store i64 %89, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %90

90:                                               ; preds = %109, %88
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @getc(i32* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @EOF, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @perror_reply(i32 550, i8* %101)
  br label %172

103:                                              ; preds = %95
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 10
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %106, %103
  br label %90

110:                                              ; preds = %90
  br label %122

111:                                              ; preds = %84
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @fileno(i32* %112)
  %114 = load i64, i64* @restart_point, align 8
  %115 = load i32, i32* @L_SET, align 4
  %116 = call i64 @lseek(i32 %113, i64 %114, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @perror_reply(i32 550, i8* %119)
  br label %172

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %81
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32* @dataconn(i8* %124, i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %127, i32** %6, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %172

131:                                              ; preds = %123
  %132 = call i32 @time(i32* %9)
  %133 = load i32*, i32** %5, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @restart_point, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %131
  %142 = load i8*, i8** %3, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @S_ISREG(i32 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %144, %141, %131
  %150 = phi i1 [ false, %141 ], [ false, %131 ], [ %148, %144 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @send_data(i32* %133, i32* %134, i32 %136, i32 %138, i32 %151)
  %153 = load i8*, i8** %3, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %149
  %156 = load i64, i64* @guest, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load i64, i64* @stats, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* @byte_count, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i8*, i8** %4, align 8
  %166 = load i32, i32* @byte_count, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @logxfer(i8* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %161, %158, %155, %149
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @fclose(i32* %170)
  store i32 -1, i32* @data, align 4
  store i32 -1, i32* @pdata, align 4
  br label %172

172:                                              ; preds = %169, %130, %118, %100, %75, %59
  %173 = load i8*, i8** %3, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* @byte_count, align 4
  %178 = call i32 @LOGBYTES(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 %180(i32* %181)
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %179, %50
  %184 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %12, align 4
  switch i32 %185, label %187 [
    i32 0, label %186
    i32 1, label %186
  ]

186:                                              ; preds = %183, %183
  ret void

187:                                              ; preds = %183
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @ftpd_popen(i8*, i8*) #2

declare dso_local i32 @ftpd_pclose(i32*) #2

declare dso_local i32 @perror_reply(i32, i8*) #2

declare dso_local i32 @LOGCMD(i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @reply(i32, i8*, i8*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32* @dataconn(i8*, i32, i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @send_data(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @logxfer(i8*, i32, i32) #2

declare dso_local i32 @LOGBYTES(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
