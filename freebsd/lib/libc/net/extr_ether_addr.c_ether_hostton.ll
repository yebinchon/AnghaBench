; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_hostton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_ether_addr.c_ether_hostton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@_PATH_ETHERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_hostton(i8* %0, %struct.ether_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ether_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ether_addr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = add nsw i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i32, i32* @_PATH_ETHERS, align 4
  %21 = call i32* @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %57, %35, %24
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @fgets(i8* %16, i32 %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %16, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %25

36:                                               ; preds = %30
  %37 = call i32 @ether_line(i8* %16, %struct.ether_addr* %9, i8* %19)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcmp(i8* %40, i8* %19)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %9, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %49 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @bcopy(i8* %47, i8* %52, i32 6)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @fclose(i32* %54)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %36
  br label %25

58:                                               ; preds = %25
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @fclose(i32* %59)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %43, %23
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @ether_line(i8*, %struct.ether_addr*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
