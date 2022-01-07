; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___xvprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf.c___xvprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@__SNBF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SRW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xvprintf(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %33, %3
  %12 = load i8*, i8** %9, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 37
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %33

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29, %21
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @__SNBF, align 4
  %41 = load i32, i32* @__SWR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__SRW, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = load i32, i32* @__SNBF, align 4
  %47 = load i32, i32* @__SWR, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @__v3printf(%struct.TYPE_5__* %56, i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %50, %36
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @__v2printf(%struct.TYPE_5__* %62, i8* %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @__v3printf(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @__v2printf(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
