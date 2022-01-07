; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_bittok2str_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_bittok2str_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tok = type { i8*, i32 }

@bittok2str_internal.buf = internal global [1025 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tok*, i8*, i32, i8*)* @bittok2str_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bittok2str_internal(%struct.tok* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tok*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.tok* %0, %struct.tok** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %10, align 8
  store i64 1025, i64* %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %16

16:                                               ; preds = %84, %4
  %17 = load %struct.tok*, %struct.tok** %6, align 8
  %18 = icmp ne %struct.tok* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.tok*, %struct.tok** %6, align 8
  %21 = getelementptr inbounds %struct.tok, %struct.tok* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %87

26:                                               ; preds = %24
  %27 = load %struct.tok*, %struct.tok** %6, align 8
  %28 = getelementptr inbounds %struct.tok, %struct.tok* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %81, %26
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load i64, i64* %11, align 8
  %41 = icmp ule i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %5, align 8
  br label %101

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @strlcpy(i8* %44, i8* %45, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %5, align 8
  br label %101

52:                                               ; preds = %43
  %53 = load i64, i64* %12, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ule i64 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %5, align 8
  br label %101

62:                                               ; preds = %52
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.tok*, %struct.tok** %6, align 8
  %65 = getelementptr inbounds %struct.tok, %struct.tok* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @strlcpy(i8* %63, i8* %66, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %5, align 8
  br label %101

73:                                               ; preds = %62
  %74 = load i64, i64* %12, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load i8*, i8** %9, align 8
  store i8* %80, i8** %15, align 8
  br label %84

81:                                               ; preds = %33
  %82 = load i32, i32* %13, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %30

84:                                               ; preds = %73, %30
  %85 = load %struct.tok*, %struct.tok** %6, align 8
  %86 = getelementptr inbounds %struct.tok, %struct.tok* %85, i32 1
  store %struct.tok* %86, %struct.tok** %6, align 8
  br label %16

87:                                               ; preds = %24
  %88 = load i8*, i8** %10, align 8
  %89 = icmp eq i8* %88, getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0)
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %96

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %93 ], [ %95, %94 ]
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @snprintf(i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i32 1025, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %87
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @bittok2str_internal.buf, i64 0, i64 0), i8** %5, align 8
  br label %101

101:                                              ; preds = %100, %72, %61, %51, %42
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
