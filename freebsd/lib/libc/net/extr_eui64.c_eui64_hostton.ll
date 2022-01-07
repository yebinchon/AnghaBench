; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_hostton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_hostton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eui64 = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@_PATH_EUI64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eui64_hostton(i8* %0, %struct.eui64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eui64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eui64, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.eui64* %1, %struct.eui64** %5, align 8
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
  %20 = load i32, i32* @_PATH_EUI64, align 4
  %21 = call i32* @fopen(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %50, %35, %24
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @fgets(i8* %16, i32 %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %16, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %25

36:                                               ; preds = %30
  %37 = trunc i64 %18 to i32
  %38 = call i64 @eui64_line(i8* %16, %struct.eui64* %9, i8* %19, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* %19)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.eui64*, %struct.eui64** %5, align 8
  %46 = call i32 @bcopy(%struct.eui64* %9, %struct.eui64* %45, i32 4)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %36
  br label %25

51:                                               ; preds = %25
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fclose(i32* %52)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %44, %23
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @eui64_line(i8*, %struct.eui64*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @bcopy(%struct.eui64*, %struct.eui64*, i32) #2

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
