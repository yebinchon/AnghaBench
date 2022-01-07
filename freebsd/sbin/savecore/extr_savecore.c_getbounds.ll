; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_getbounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_getbounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@checkfor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to open bounds file, using 0\0A\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"bounds file is empty, using 0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bounds file: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid value found in bounds, using 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getbounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getbounds(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @checkfor, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

10:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32* @xfopenat(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i64, i64* @verbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %10
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @fgets(i8* %23, i32 6, i32* %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @feof(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @LOG_WARNING, align 4
  %33 = call i32 (i32, i8*, ...) @logmsg(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @LOG_WARNING, align 4
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 (i32, i8*, ...) @logmsg(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %22
  store i64 0, i64* @errno, align 8
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %45 = call i64 @strtol(i8* %44, i32* null, i32 10)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EINVAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ERANGE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @LOG_WARNING, align 4
  %59 = call i32 (i32, i8*, ...) @logmsg(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53, %43
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %39, %20, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @xfopenat(i32, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
