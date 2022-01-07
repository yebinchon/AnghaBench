; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_findDiff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_findDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"=> No difference detected within %u bytes \0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error at position %u / %u \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" %02X %02X %02X \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" :%02X:  %02X %02X %02X %02X %02X \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @findDiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @findDiff(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = zext i32 %40 to i64
  %42 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %4, align 8
  br label %152

44:                                               ; preds = %34
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i32
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = icmp uge i64 %51, 3
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %55, 3
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, 2
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %63, i64 %68)
  br label %70

70:                                               ; preds = %53, %44
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 2
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 3
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 4
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 5
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %74, i64 %79, i64 %84, i64 %89, i64 %94, i64 %99)
  %101 = load i64, i64* %10, align 8
  %102 = icmp uge i64 %101, 3
  br i1 %102, label %103, label %120

103:                                              ; preds = %70
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %105, 3
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub i64 %110, 2
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, 1
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %108, i64 %113, i64 %118)
  br label %120

120:                                              ; preds = %103, %70
  %121 = load i64*, i64** %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 2
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 3
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %9, align 8
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 4
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %146, 5
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, i64, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %124, i64 %129, i64 %134, i64 %139, i64 %144, i64 %149)
  %151 = load i64, i64* %10, align 8
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %120, %38
  %153 = load i64, i64* %4, align 8
  ret i64 %153
}

declare dso_local i32 @DISPLAY(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
