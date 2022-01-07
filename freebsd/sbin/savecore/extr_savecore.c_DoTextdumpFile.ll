; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_DoTextdumpFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_DoTextdumpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"textdump uneven multiple of 512 on %s\00", align 1
@nerr = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WARNING: EOF on dump device\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"read error on %s: %m\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"write error on %s file: %m\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"WARNING: textdump may be incomplete\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%llu\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i8*, i8*, i32*)* @DoTextdumpFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoTextdumpFile(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 512, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %18, align 4
  %24 = srem i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 (i32, i8*, ...) @logmsg(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @nerr, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nerr, align 4
  store i32 -1, i32* %8, align 4
  br label %97

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %92, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %40, %43
  %45 = load i32, i32* %18, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @pread(i32 %37, i8* %38, i32 %39, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %36
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = call i32 (i32, i8*, ...) @logmsg(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i32, i8*, ...) @logmsg(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* @nerr, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @nerr, align 4
  store i32 -1, i32* %8, align 4
  br label %97

64:                                               ; preds = %36
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @fwrite(i8* %65, i32 1, i32 %66, i32* %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i32, i32* @LOG_ERR, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 (i32, i8*, ...) @logmsg(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load i32, i32* @LOG_WARNING, align 4
  %77 = call i32 (i32, i8*, ...) @logmsg(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @nerr, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @nerr, align 4
  store i32 -1, i32* %8, align 4
  br label %97

80:                                               ; preds = %64
  %81 = load i64, i64* @verbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 @fflush(i32 %90)
  br label %92

92:                                               ; preds = %83, %80
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %33

96:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %72, %61, %26
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
