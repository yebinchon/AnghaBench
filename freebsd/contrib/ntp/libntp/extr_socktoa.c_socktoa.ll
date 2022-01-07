; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_socktoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_socktoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%%%lu\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"(socktoa unknown family %d)\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socktoa(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 (...) @socket_errno()
  store i32 %7, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @LIB_GETBUF(i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* null, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @LIB_BUFLENGTH, align 4
  %15 = call i32 @strlcpy(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %61

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @AF(i32* %17)
  switch i32 %18, label %54 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %25
  ]

19:                                               ; preds = %16, %16
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @PSOCK_ADDR4(i32* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @LIB_BUFLENGTH, align 4
  %24 = call i32 @inet_ntop(i32 130, i32 %21, i8* %22, i32 %23)
  br label %60

25:                                               ; preds = %16
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @PSOCK_ADDR6(i32* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @LIB_BUFLENGTH, align 4
  %30 = call i32 @inet_ntop(i32 129, i32 %27, i8* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @SCOPE_VAR(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 0, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %25
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strchr(i8* %36, i8 signext 37)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @LIB_GETBUF(i8* %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @LIB_BUFLENGTH, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @LIB_BUFLENGTH, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %39, %35, %25
  br label %60

54:                                               ; preds = %16
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @LIB_BUFLENGTH, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @AF(i32* %57)
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %53, %19
  br label %61

61:                                               ; preds = %60, %12
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* @errno, align 4
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i32 @socket_errno(...) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @AF(i32*) #1

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @PSOCK_ADDR4(i32*) #1

declare dso_local i32 @PSOCK_ADDR6(i32*) #1

declare dso_local i32 @SCOPE_VAR(i32*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
