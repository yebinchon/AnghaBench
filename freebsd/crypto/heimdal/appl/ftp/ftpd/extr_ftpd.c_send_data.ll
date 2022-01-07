; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_send_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@send_data.buf = internal global i8* null, align 8
@send_data.bufsize = internal global i64 0, align 8
@transflag = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@urgflag = common dso_local global i64 0, align 8
@byte_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Transfer complete.\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Local resource failure: malloc\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unimplemented TYPE %d in send_data\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Data connection\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error on input file\00", align 1
@MAP_FAILED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@restart_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* @transflag, align 4
  %10 = load i32, i32* @type, align 4
  switch i32 %10, label %111 [
    i32 130, label %11
    i32 129, label %50
    i32 128, label %50
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @getc(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i64, i64* @urgflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 (...) @handleoobcmd()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %118

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @byte_count, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @byte_count, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sec_putc(i32 13, i32* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @sec_putc(i32 %33, i32* %34)
  br label %12

36:                                               ; preds = %12
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @sec_fflush(i32* %37)
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @ferror(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %116

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ferror(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %114

48:                                               ; preds = %43
  %49 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

50:                                               ; preds = %2, %2
  %51 = load i32, i32* @transflag, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fileno(i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fileno(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** @send_data.buf, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @fstat(i32 %59, %struct.stat* %9)
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi %struct.stat* [ %9, %62 ], [ null, %63 ]
  %66 = call i8* @alloc_buffer(i8* %58, i64* @send_data.bufsize, %struct.stat* %65)
  store i8* %66, i8** @send_data.buf, align 8
  %67 = load i8*, i8** @send_data.buf, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %70 = call i32 @perror_reply(i32 451, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %118

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %97, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i8*, i8** @send_data.buf, align 8
  %75 = load i64, i64* @send_data.bufsize, align 8
  %76 = call i32 @read(i32 %73, i8* %74, i64 %75)
  store i32 %76, i32* %6, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** @send_data.buf, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @sec_write(i32 %79, i8* %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %78, %72
  %86 = phi i1 [ false, %72 ], [ %84, %78 ]
  br i1 %86, label %87, label %98

87:                                               ; preds = %85
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @byte_count, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* @byte_count, align 4
  %91 = load i64, i64* @urgflag, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = call i32 (...) @handleoobcmd()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %118

97:                                               ; preds = %93, %87
  br label %72

98:                                               ; preds = %85
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @sec_fflush(i32* %99)
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %116

107:                                              ; preds = %103
  br label %114

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %50
  %110 = call i32 (i32, i8*, ...) @reply(i32 226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

111:                                              ; preds = %2
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %112 = load i32, i32* @type, align 4
  %113 = call i32 (i32, i8*, ...) @reply(i32 550, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %118

114:                                              ; preds = %107, %47
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %115 = call i32 @perror_reply(i32 426, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %118

116:                                              ; preds = %106, %42
  store i32 0, i32* @transflag, align 4
  store i64 0, i64* @urgflag, align 8
  %117 = call i32 @perror_reply(i32 551, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %114, %111, %109, %96, %69, %48, %23
  ret void
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @handleoobcmd(...) #1

declare dso_local i32 @sec_putc(i32, i32*) #1

declare dso_local i32 @sec_fflush(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @reply(i32, i8*, ...) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i8* @alloc_buffer(i8*, i64*, %struct.stat*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror_reply(i32, i8*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @sec_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
