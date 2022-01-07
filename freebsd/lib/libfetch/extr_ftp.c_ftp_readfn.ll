; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_readfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_readfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftpio = type { i64, i64, i32, i32*, i32* }

@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @ftp_readfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_readfn(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftpio*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ftpio*
  store %struct.ftpio* %11, %struct.ftpio** %8, align 8
  %12 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %13 = icmp eq %struct.ftpio* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @EBADF, align 8
  store i64 %15, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %18 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %23 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %28 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @O_WRONLY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %21, %16
  %33 = load i64, i64* @EBADF, align 8
  store i64 %33, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %75

34:                                               ; preds = %26
  %35 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %36 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %41 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %75

43:                                               ; preds = %34
  %44 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %45 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %75

49:                                               ; preds = %43
  %50 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %51 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @fetch_read(i32* %52, i8* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %75

60:                                               ; preds = %49
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %65 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %75

66:                                               ; preds = %60
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* @errno, align 8
  %72 = load %struct.ftpio*, %struct.ftpio** %8, align 8
  %73 = getelementptr inbounds %struct.ftpio, %struct.ftpio* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  store i32 -1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %63, %58, %48, %39, %32, %14
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @fetch_read(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
