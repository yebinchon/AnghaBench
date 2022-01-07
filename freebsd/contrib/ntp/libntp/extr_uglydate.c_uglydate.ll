; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_uglydate.c_uglydate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_uglydate.c_uglydate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32 }

@JAN_1970 = common dso_local global i64 0, align 8
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%17s %02d:%03d:%02d:%02d:%02d.%03ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uglydate(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = call i8* @ulfptoa(%struct.TYPE_4__* %9, i32 6)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @LIB_GETBUF(i8* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @JAN_1970, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 4294967
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = call %struct.tm* @gmtime(i64* %6)
  store %struct.tm* %23, %struct.tm** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %29 = load %struct.tm*, %struct.tm** %5, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.tm*, %struct.tm** %5, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.tm*, %struct.tm** %5, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  br label %48

37:                                               ; preds = %1
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %44, %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 100
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 100
  store i32 %46, i32* %8, align 4
  br label %41

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @LIB_BUFLENGTH, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.tm*, %struct.tm** %5, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tm*, %struct.tm** %5, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tm*, %struct.tm** %5, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tm*, %struct.tm** %5, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i64 %65)
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i8* @ulfptoa(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
