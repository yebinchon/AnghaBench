; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_do_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_do_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@guest = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@restart_point = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@byte_count = common dso_local global i32 0, align 4
@type = common dso_local global i64 0, align 8
@TYPE_A = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Transfer complete (unique file name:%s).\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Transfer complete.\00", align 1
@data = common dso_local global i32 0, align 4
@pdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_store(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32 (i32*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* @guest, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @filename_check(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %165

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @stat(i8* %26, %struct.stat* %9)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @gunique(i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %165

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 119
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @LOGCMD(i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %36, %22
  %46 = load i64, i64* @restart_point, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32* @fopen(i8* %50, i8* %51)
  store i32* %52, i32** %7, align 8
  store i32 (i32*)* @fclose, i32 (i32*)** %10, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @perror_reply(i32 553, i8* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 119
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @LOGCMD(i8* %63, i8* %64)
  br label %165

66:                                               ; preds = %49
  store i32 -1, i32* @byte_count, align 4
  %67 = load i64, i64* @restart_point, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %66
  %70 = load i64, i64* @type, align 8
  %71 = load i64, i64* @TYPE_A, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = load i64, i64* @restart_point, align 8
  store i64 %74, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %75

75:                                               ; preds = %94, %73
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @getc(i32* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* @EOF, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @perror_reply(i32 550, i8* %86)
  br label %155

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %75

95:                                               ; preds = %75
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @SEEK_CUR, align 4
  %98 = call i64 @fseek(i32* %96, i64 0, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @perror_reply(i32 550, i8* %101)
  br label %155

103:                                              ; preds = %95
  br label %115

104:                                              ; preds = %69
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @fileno(i32* %105)
  %107 = load i64, i64* @restart_point, align 8
  %108 = load i32, i32* @SEEK_SET, align 4
  %109 = call i64 @lseek(i32 %106, i64 %107, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @perror_reply(i32 550, i8* %112)
  br label %155

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %66
  %117 = load i8*, i8** %4, align 8
  %118 = call i32* @dataconn(i8* %117, i64 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %118, i32** %8, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %155

122:                                              ; preds = %116
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @fileno(i32* %123)
  %125 = call i32 @set_buffer_size(i32 %124, i32 1)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @receive_data(i32* %126, i32* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %122
  %131 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 %131(i32* %132)
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @perror_reply(i32 552, i8* %136)
  br label %147

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %142)
  br label %146

144:                                              ; preds = %138
  %145 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %135
  br label %152

148:                                              ; preds = %122
  %149 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 %149(i32* %150)
  br label %152

152:                                              ; preds = %148, %147
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @fclose(i32* %153)
  store i32 -1, i32* @data, align 4
  store i32 -1, i32* @pdata, align 4
  br label %155

155:                                              ; preds = %152, %121, %111, %100, %85
  %156 = load i8*, i8** %5, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 119
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %162 = load i8*, i8** %4, align 8
  %163 = load i32, i32* @byte_count, align 4
  %164 = call i32 @LOGBYTES(i8* %161, i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %155, %55, %33, %21
  ret void
}

declare dso_local i64 @filename_check(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @gunique(i8*) #1

declare dso_local i32 @LOGCMD(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @dataconn(i8*, i64, i8*) #1

declare dso_local i32 @set_buffer_size(i32, i32) #1

declare dso_local i64 @receive_data(i32*, i32*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @LOGBYTES(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
