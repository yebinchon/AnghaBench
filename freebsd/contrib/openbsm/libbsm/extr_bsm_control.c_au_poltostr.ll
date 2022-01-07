; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_poltostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_au_poltostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@au_polstr = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_poltostr(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %51, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @au_polstr, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %17, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @strlcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %63

36:                                               ; preds = %29, %26
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @au_polstr, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @strlcat(i8* %37, i8* %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %63

49:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @au_polstr, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* null, %58
  br i1 %59, label %16, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %48, %35, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
