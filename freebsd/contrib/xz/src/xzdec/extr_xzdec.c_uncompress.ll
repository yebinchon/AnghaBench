; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xzdec/extr_xzdec.c_uncompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xzdec/extr_xzdec.c_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32*, i32* }

@UINT64_MAX = common dso_local global i32 0, align 4
@LZMA_CONCATENATED = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Internal error (bug)\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@LZMA_RUN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Error reading input file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@LZMA_FINISH = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot write to standard output: %s\00", align 1
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"File format not recognized\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported compression options\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"File is corrupt\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Unexpected end of input\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8*)* @uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompress(%struct.TYPE_6__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i32, i32* @UINT64_MAX, align 4
  %16 = load i32, i32* @LZMA_CONCATENATED, align 4
  %17 = call i32 @lzma_stream_decoder(%struct.TYPE_6__* %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @LZMA_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i8* @strerror(i32 %25)
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i8* [ %26, %24 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = call i32 (i8*, i8*, ...) @my_errorf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @exit(i32 %31) #4
  unreachable

33:                                               ; preds = %3
  %34 = load i32, i32* @BUFSIZ, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load i32, i32* @BUFSIZ, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32* %40, i32** %44, align 8
  %45 = load i32, i32* @BUFSIZ, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* @LZMA_RUN, align 8
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %156, %33
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32* %37, i32** %57, align 8
  %58 = load i32, i32* @BUFSIZ, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @fread(i32* %37, i32 1, i32 %58, i32* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @ferror(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* @errno, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 (i8*, i8*, ...) @my_errorf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %69)
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  %72 = call i32 @exit(i32 %71) #4
  unreachable

73:                                               ; preds = %55
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @feof(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* @LZMA_FINISH, align 8
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %77, %73
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @lzma_code(%struct.TYPE_6__* %81, i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @LZMA_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88, %80
  %93 = load i32, i32* @BUFSIZ, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* @stdout, align 4
  %101 = call i64 @fwrite(i32* %40, i32 1, i64 %99, i32 %100)
  %102 = load i64, i64* %12, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load i32, i32* @errno, align 4
  %106 = call i8* @strerror(i32 %105)
  %107 = call i32 (i8*, i8*, ...) @my_errorf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @EXIT_FAILURE, align 4
  %109 = call i32 @exit(i32 %108) #4
  unreachable

110:                                              ; preds = %92
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32* %40, i32** %112, align 8
  %113 = load i32, i32* @BUFSIZ, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %110, %88
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @LZMA_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @LZMA_STREAM_END, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* @LZMA_FINISH, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @feof(i32* %136)
  %138 = call i32 @assert(i32 %137)
  %139 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void

140:                                              ; preds = %120
  %141 = load i32, i32* %7, align 4
  switch i32 %141, label %149 [
    i32 129, label %142
    i32 130, label %145
    i32 128, label %146
    i32 131, label %147
    i32 132, label %148
  ]

142:                                              ; preds = %140
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = call i8* @strerror(i32 %143)
  store i8* %144, i8** %13, align 8
  br label %150

145:                                              ; preds = %140
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %150

146:                                              ; preds = %140
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %150

147:                                              ; preds = %140
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %150

148:                                              ; preds = %140
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %150

149:                                              ; preds = %140
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %150

150:                                              ; preds = %149, %148, %147, %146, %145, %142
  %151 = load i8*, i8** %6, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 (i8*, i8*, ...) @my_errorf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %151, i8* %152)
  %154 = load i32, i32* @EXIT_FAILURE, align 4
  %155 = call i32 @exit(i32 %154) #4
  unreachable

156:                                              ; preds = %116
  br label %49
}

declare dso_local i32 @lzma_stream_decoder(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @my_errorf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @lzma_code(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
