; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_receive_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@receive_data.buf = internal global i8* null, align 8
@receive_data.bufsize = internal global i64 0, align 8
@transflag = common dso_local global i32 0, align 4
@urgflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Local resource failure: malloc\00", align 1
@type = common dso_local global i32 0, align 4
@byte_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TYPE E not implemented.\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"WARNING! %d bare linefeeds received in ASCII mode\0D\0A    File may not have transferred correctly.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unimplemented TYPE %d in receive_data\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Data Connection\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Error writing file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_data(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @transflag, align 4
  %12 = load i8*, i8** @receive_data.buf, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @fileno(i32* %13)
  %15 = call i64 @fstat(i32 %14, %struct.stat* %8)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi %struct.stat* [ %8, %17 ], [ null, %18 ]
  %21 = call i8* @alloc_buffer(i8* %12, i64* @receive_data.bufsize, %struct.stat* %20)
  store i8* %21, i8** @receive_data.buf, align 8
  %22 = load i8*, i8** @receive_data.buf, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %25 = call i32 @perror_reply(i32 451, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

26:                                               ; preds = %19
  %27 = load i32, i32* @type, align 4
  switch i32 %27, label %184 [
    i32 129, label %28
    i32 128, label %28
    i32 130, label %61
    i32 131, label %63
  ]

28:                                               ; preds = %26, %26
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fileno(i32* %30)
  %32 = load i8*, i8** @receive_data.buf, align 8
  %33 = load i64, i64* @receive_data.bufsize, align 8
  %34 = call i32 @sec_read(i32 %31, i8* %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @fileno(i32* %37)
  %39 = load i8*, i8** @receive_data.buf, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @write(i32 %38, i8* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %189

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @byte_count, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @byte_count, align 4
  %49 = load i64, i64* @urgflag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 (...) @handleoobcmd()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %191

55:                                               ; preds = %51, %45
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %187

60:                                               ; preds = %56
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  store i32 0, i32* %3, align 4
  br label %191

61:                                               ; preds = %26
  %62 = call i32 (i32, i8*, ...) @reply(i32 553, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  store i32 -1, i32* %3, align 4
  br label %191

63:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %158, %63
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fileno(i32* %65)
  %67 = load i8*, i8** @receive_data.buf, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i64, i64* @receive_data.bufsize, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %71, %73
  %75 = call i32 @sec_read(i32 %66, i8* %70, i64 %74)
  store i32 %75, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %159

77:                                               ; preds = %64
  %78 = load i64, i64* @urgflag, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 (...) @handleoobcmd()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %191

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @byte_count, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* @byte_count, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %91 = load i8*, i8** @receive_data.buf, align 8
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** @receive_data.buf, align 8
  store i8* %92, i8** %10, align 8
  br label %93

93:                                               ; preds = %137, %130, %121, %84
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** @receive_data.buf, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = icmp ult i8* %94, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %93
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 13
  br i1 %112, label %113, label %137

113:                                              ; preds = %108
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** @receive_data.buf, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  %120 = icmp eq i8* %114, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %9, align 8
  br label %93

124:                                              ; preds = %113
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %10, align 8
  store i8 10, i8* %131, align 1
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  store i8* %134, i8** %9, align 8
  br label %93

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %108
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %9, align 8
  %140 = load i8, i8* %138, align 1
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %10, align 8
  store i8 %140, i8* %141, align 1
  br label %93

143:                                              ; preds = %93
  %144 = load i8*, i8** @receive_data.buf, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** @receive_data.buf, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @fwrite(i8* %144, i32 %150, i32 1, i32* %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = load i8*, i8** @receive_data.buf, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 13, i8* %157, align 1
  br label %158

158:                                              ; preds = %155, %143
  br label %64

159:                                              ; preds = %64
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @putc(i8 signext 13, i32* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @fflush(i32* %166)
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @ferror(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %187

172:                                              ; preds = %165
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @ferror(i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %189

177:                                              ; preds = %172
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @lreply(i32 226, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %180, %177
  store i32 0, i32* %3, align 4
  br label %191

184:                                              ; preds = %26
  %185 = load i32, i32* @type, align 4
  %186 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  store i32 -1, i32* %3, align 4
  br label %191

187:                                              ; preds = %171, %59
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %188 = call i32 @perror_reply(i32 426, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

189:                                              ; preds = %176, %44
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %190 = call i32 @perror_reply(i32 452, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %187, %184, %183, %83, %61, %60, %54, %24
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @alloc_buffer(i8*, i64*, %struct.stat*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @sec_read(i32, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @handleoobcmd(...) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @lreply(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
