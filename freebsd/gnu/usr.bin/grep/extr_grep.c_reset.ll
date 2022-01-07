; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pagesize = common dso_local global i32 0, align 4
@INITIAL_BUFSIZE = common dso_local global i64 0, align 8
@bufalloc = common dso_local global i8* null, align 8
@buffer = common dso_local global i64 0, align 8
@BZflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bzbufdesc = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@buflim = common dso_local global i32* null, align 8
@bufbeg = common dso_local global i32* null, align 8
@eolbyte = common dso_local global i32 0, align 4
@bufdesc = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@directories = common dso_local global i64 0, align 8
@SKIP_DIRECTORIES = common dso_local global i64 0, align 8
@devices = common dso_local global i64 0, align 8
@SKIP_DEVICES = common dso_local global i64 0, align 8
@bufoffset = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@Zflag = common dso_local global i64 0, align 8
@bufmapped = common dso_local global i32 0, align 4
@gzbufdesc = common dso_local global i32* null, align 8
@initial_bufoffset = common dso_local global i32 0, align 4
@mmap_option = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.stats*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset(i32 %0, i8* %1, %struct.stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stats*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.stats* %2, %struct.stats** %7, align 8
  %8 = load i32, i32* @pagesize, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = call i32 (...) @getpagesize()
  store i32 %11, i32* @pagesize, align 4
  %12 = load i32, i32* @pagesize, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @pagesize, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @pagesize, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %10
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %14
  %23 = load i64, i64* @INITIAL_BUFSIZE, align 8
  %24 = load i32, i32* @pagesize, align 4
  %25 = call i8* @ALIGN_TO(i64 %23, i32 %24)
  %26 = load i32, i32* @pagesize, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = getelementptr i8, i8* %28, i64 1
  store i8* %29, i8** @bufalloc, align 8
  %30 = load i8*, i8** @bufalloc, align 8
  %31 = call i64 @xmalloc(i8* %30)
  store i64 %31, i64* @buffer, align 8
  br label %32

32:                                               ; preds = %22, %3
  %33 = load i64, i64* @BZflag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @BZ2_bzdopen(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** @bzbufdesc, align 8
  %38 = load i32*, i32** @bzbufdesc, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @error(i32 2, i32 0, i8* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i64, i64* @buffer, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* @pagesize, align 4
  %48 = call i8* @ALIGN_TO(i64 %46, i32 %47)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** @buflim, align 8
  store i32* %49, i32** @bufbeg, align 8
  %50 = load i32, i32* @eolbyte, align 4
  %51 = load i32*, i32** @bufbeg, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* @bufdesc, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.stats*, %struct.stats** %7, align 8
  %56 = getelementptr inbounds %struct.stats, %struct.stats* %55, i32 0, i32 0
  %57 = call i64 @fstat(i32 %54, %struct.TYPE_2__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @error(i32 0, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @STDIN_FILENO, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %62
  %67 = load i64, i64* @directories, align 8
  %68 = load i64, i64* @SKIP_DIRECTORIES, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.stats*, %struct.stats** %7, align 8
  %72 = getelementptr inbounds %struct.stats, %struct.stats* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISDIR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %139

78:                                               ; preds = %70, %66
  %79 = load i64, i64* @devices, align 8
  %80 = load i64, i64* @SKIP_DEVICES, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load %struct.stats*, %struct.stats** %7, align 8
  %84 = getelementptr inbounds %struct.stats, %struct.stats* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @S_ISCHR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %82
  %90 = load %struct.stats*, %struct.stats** %7, align 8
  %91 = getelementptr inbounds %struct.stats, %struct.stats* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @S_ISBLK(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = load %struct.stats*, %struct.stats** %7, align 8
  %98 = getelementptr inbounds %struct.stats, %struct.stats* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @S_ISSOCK(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.stats*, %struct.stats** %7, align 8
  %105 = getelementptr inbounds %struct.stats, %struct.stats* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @S_ISFIFO(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103, %96, %89, %82
  store i32 0, i32* %4, align 4
  br label %139

111:                                              ; preds = %103, %78
  br label %112

112:                                              ; preds = %111, %62
  %113 = load i64, i64* @BZflag, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load %struct.stats*, %struct.stats** %7, align 8
  %117 = getelementptr inbounds %struct.stats, %struct.stats* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @S_ISREG(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %115, %112
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* @bufoffset, align 4
  br label %136

126:                                              ; preds = %122
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @SEEK_CUR, align 4
  %129 = call i32 @lseek(i32 %127, i32 0, i32 %128)
  store i32 %129, i32* @bufoffset, align 4
  %130 = load i32, i32* @bufoffset, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @errno, align 4
  %134 = call i32 @error(i32 0, i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %139

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %125
  br label %138

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137, %136
  store i32 1, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %132, %110, %77, %59
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @getpagesize(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @ALIGN_TO(i64, i32) #1

declare dso_local i64 @xmalloc(i8*) #1

declare dso_local i32* @BZ2_bzdopen(i32, i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @fstat(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
