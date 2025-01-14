; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sockutils.c_sock_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"I have been requested to read zero bytes\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't read more than %u bytes with sock_recv\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"recv(): \00", align 1
@SOCK_EOF_IS_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"The other host terminated the connection.\00", align 1
@SOCK_RECEIVEALL_YES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_recv(i32 %0, i8* %1, i64 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 @SOCK_DEBUG_MESSAGE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %98

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @INT_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i64, i64* @INT_MAX, align 8
  %33 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %26
  store i32 -1, i32* %7, align 4
  br label %98

35:                                               ; preds = %22
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %14, align 8
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %97, %35
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @recv(i32 %40, i8* %41, i32 %42, i32 0)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EINTR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -3, i32* %7, align 4
  br label %98

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @sock_geterror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %53)
  store i32 -1, i32* %7, align 4
  br label %98

55:                                               ; preds = %39
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @SOCK_EOF_IS_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %68
  store i32 -1, i32* %7, align 4
  br label %98

76:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %98

77:                                               ; preds = %55
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SOCK_RECEIVEALL_YES, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %7, align 4
  br label %98

84:                                               ; preds = %77
  %85 = load i32, i32* %16, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %98

97:                                               ; preds = %84
  br label %39

98:                                               ; preds = %94, %82, %76, %75, %51, %50, %34, %20
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @SOCK_DEBUG_MESSAGE(i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @sock_geterror(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
