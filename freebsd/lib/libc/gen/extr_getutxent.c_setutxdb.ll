; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_setutxdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_setutxdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@_PATH_UTX_ACTIVE = common dso_local global i8* null, align 8
@_PATH_UTX_LASTLOGIN = common dso_local global i8* null, align 8
@_PATH_UTX_LOG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@uf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@_IOFBF = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@udb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setutxdb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %26 [
    i32 130, label %8
    i32 129, label %14
    i32 128, label %20
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** @_PATH_UTX_ACTIVE, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %11, %8
  br label %28

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** @_PATH_UTX_LASTLOGIN, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %17, %14
  br label %28

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** @_PATH_UTX_LOG, align 8
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %23, %20
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %66

28:                                               ; preds = %25, %19, %13
  %29 = load i32*, i32** @uf, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** @uf, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** @uf, align 8
  %37 = load i32*, i32** @uf, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %66

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32*, i32** @uf, align 8
  %45 = call i32 @fileno(i32* %44)
  %46 = call i32 @_fstat(i32 %45, %struct.stat* %6)
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = urem i64 %51, 4
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32*, i32** @uf, align 8
  %56 = call i32 @fclose(i32* %55)
  store i32* null, i32** @uf, align 8
  %57 = load i32, i32* @EFTYPE, align 4
  store i32 %57, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %66

58:                                               ; preds = %48, %43
  %59 = load i32*, i32** @uf, align 8
  %60 = load i32, i32* @_IOFBF, align 4
  %61 = load i32, i32* @BUFSIZ, align 4
  %62 = call i32 @rounddown(i32 %61, i32 4)
  %63 = call i32 @setvbuf(i32* %59, i32* null, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %40
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* @udb, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %54, %39, %26
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @rounddown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
