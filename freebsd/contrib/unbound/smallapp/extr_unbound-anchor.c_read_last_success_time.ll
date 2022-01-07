; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_last_success_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_last_success_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c";;last_success: \00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to parse last_success probe time\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"last successful probe: %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"no last_success probe time in anchor file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_last_success_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_last_success_time(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @verb, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %18)
  br label %20

20:                                               ; preds = %15, %12
  store i32 0, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %56, %21
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @fgets(i8* %23, i32 1024, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = call i64 @strtol(i8* %33, i8** %6, i32 10)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 16
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i64, i64* @verb, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  store i32 0, i32* %2, align 4
  br label %65

48:                                               ; preds = %31
  %49 = load i64, i64* @verb, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i8* @ctime(i32* %7)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %27
  br label %22

57:                                               ; preds = %22
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i64, i64* @verb, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %54, %47, %20
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
