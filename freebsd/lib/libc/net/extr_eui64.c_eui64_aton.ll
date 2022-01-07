; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eui64 = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"%x-%x-%x-%x-%x-%x-%x-%x\00", align 1
@EUI64_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%x:%x:%x:%x:%x:%x:%x:%x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"0x%2x%2x%2x%2x%2x%2x%2x%2x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%x-%x-%x-%x-%x-%x\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%x:%x:%x:%x:%x:%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eui64_aton(i8* %0, %struct.eui64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eui64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.eui64* %1, %struct.eui64** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EUI64_LEN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EUI64_LEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %48

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EUI64_LEN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %48

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %12, i32* %13, i32* %14)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 255, i32* %10, align 4
  store i32 254, i32* %11, align 4
  br label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %7, i32* %8, i32* %9, i32* %12, i32* %13, i32* %14)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 255, i32* %10, align 4
  store i32 254, i32* %11, align 4
  br label %48

47:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %89

48:                                               ; preds = %46, %40, %34, %27, %20
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.eui64*, %struct.eui64** %5, align 8
  %51 = getelementptr inbounds %struct.eui64, %struct.eui64* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.eui64*, %struct.eui64** %5, align 8
  %56 = getelementptr inbounds %struct.eui64, %struct.eui64* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.eui64*, %struct.eui64** %5, align 8
  %61 = getelementptr inbounds %struct.eui64, %struct.eui64* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.eui64*, %struct.eui64** %5, align 8
  %66 = getelementptr inbounds %struct.eui64, %struct.eui64* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.eui64*, %struct.eui64** %5, align 8
  %71 = getelementptr inbounds %struct.eui64, %struct.eui64* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.eui64*, %struct.eui64** %5, align 8
  %76 = getelementptr inbounds %struct.eui64, %struct.eui64* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.eui64*, %struct.eui64** %5, align 8
  %81 = getelementptr inbounds %struct.eui64, %struct.eui64* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.eui64*, %struct.eui64** %5, align 8
  %86 = getelementptr inbounds %struct.eui64, %struct.eui64* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  store i32 %84, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %48, %47
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
