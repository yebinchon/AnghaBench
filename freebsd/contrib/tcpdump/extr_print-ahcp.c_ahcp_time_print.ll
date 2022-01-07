; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_time_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_time_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c": gmtime() error\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c": strftime() error\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c": %s UTC\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ahcp_time_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahcp_time_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %47

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ND_TCHECK2(i32 %24, i32 4)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @EXTRACT_32BITS(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = call %struct.tm* @gmtime(i32* %8)
  store %struct.tm* %28, %struct.tm** %9, align 8
  %29 = icmp eq %struct.tm* null, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str to i32*))
  br label %46

33:                                               ; preds = %22
  %34 = trunc i64 %14 to i32
  %35 = load %struct.tm*, %struct.tm** %9, align 8
  %36 = call i64 @strftime(i8* %16, i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %35)
  %37 = icmp eq i64 0, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.2 to i32*))
  br label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = bitcast i8* %16 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

47:                                               ; preds = %21
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @istr, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ND_TCHECK2(i32 %54, i32 %61)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

63:                                               ; No predecessors!
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @tstr, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %63, %47, %46
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #2

declare dso_local i32 @EXTRACT_32BITS(i32*) #2

declare dso_local %struct.tm* @gmtime(i32*) #2

declare dso_local i32 @ND_PRINT(i32*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
