; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_openfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_auth_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Could not open %s '%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"User %s %s %s is not a regular file\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Authentication refused: %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Ignored %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.passwd*, i32, i32, i8*)* @auth_openfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @auth_openfile(i8* %0, %struct.passwd* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.passwd* %1, %struct.passwd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_NONBLOCK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %16, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ENOENT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %22
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* @errno, align 8
  %33 = call i32 @strerror(i64 %32)
  %34 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  store i32* null, i32** %6, align 8
  br label %89

36:                                               ; preds = %5
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @fstat(i32 %37, %struct.stat* %13)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @close(i32 %41)
  store i32* null, i32** %6, align 8
  br label %89

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.passwd*, %struct.passwd** %8, align 8
  %50 = getelementptr inbounds %struct.passwd, %struct.passwd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, i8*, ...) @logit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i8* %55)
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @close(i32 %57)
  store i32* null, i32** %6, align 8
  br label %89

59:                                               ; preds = %43
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @unset_nonblock(i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i32* @fdopen(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %63, i32** %15, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @close(i32 %66)
  store i32* null, i32** %6, align 8
  br label %89

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @fileno(i32* %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.passwd*, %struct.passwd** %8, align 8
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %77 = call i64 @safe_path_fd(i32 %73, i8* %74, %struct.passwd* %75, i8* %76, i32 1024)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @fclose(i32* %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %83 = call i32 (i8*, i8*, ...) @logit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %86 = call i32 @auth_debug_add(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %85)
  store i32* null, i32** %6, align 8
  br label %89

87:                                               ; preds = %71, %68
  %88 = load i32*, i32** %15, align 8
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %87, %79, %65, %48, %40, %35
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @logit(i8*, i8*, ...) #1

declare dso_local i32 @unset_nonblock(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @safe_path_fd(i32, i8*, %struct.passwd*, i8*, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @auth_debug_add(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
