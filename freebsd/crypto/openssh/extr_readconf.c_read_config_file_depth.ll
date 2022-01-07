; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_read_config_file_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_read_config_file_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.stat = type { i64, i32 }

@READCONF_MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Too many recursive configuration includes\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SSHCONF_CHECKPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"fstat %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Bad owner or permissions on %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Reading configuration data %.200s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%s: terminating, %d bad configuration options\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.passwd*, i8*, i8*, i32*, i32, i32*, i32)* @read_config_file_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_file_depth(i8* %0, %struct.passwd* %1, i8* %2, i8* %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.stat, align 8
  store i8* %0, i8** %10, align 8
  store %struct.passwd* %1, %struct.passwd** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* null, i8** %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @READCONF_MAX_DEPTH, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %8
  %31 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i8*, i8** %10, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %18, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %108

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SSHCONF_CHECKPERM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @fileno(i32* %43)
  %45 = call i32 @fstat(i32 %44, %struct.stat* %23)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 (...) @getuid()
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56, %52
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 18
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %95, %70
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @getline(i8** %19, i64* %20, i32* %74)
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = load %struct.passwd*, %struct.passwd** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %21, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i64 @process_config_line_depth(i32* %80, %struct.passwd* %81, i8* %82, i8* %83, i8* %84, i8* %85, i32 %86, i32* %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* %22, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %22, align 4
  br label %95

95:                                               ; preds = %92, %77
  br label %73

96:                                               ; preds = %73
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @fclose(i32* %99)
  %101 = load i32, i32* %22, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %22, align 4
  %106 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %96
  store i32 1, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %36
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @process_config_line_depth(i32*, %struct.passwd*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
