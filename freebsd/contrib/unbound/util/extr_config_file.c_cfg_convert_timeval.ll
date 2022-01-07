; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_convert_timeval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_convert_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%4d%2d%2d%2d%2d%2d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_convert_timeval(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 @memset(%struct.tm* %5, i32 0, i32 24)
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp slt i32 %8, 14
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %19 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  %20 = icmp ne i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %81

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1900
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 70
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %81

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 11
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 0, i32* %2, align 4
  br label %81

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 31
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  store i32 0, i32* %2, align 4
  br label %81

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 23
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 0, i32* %2, align 4
  br label %81

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 59
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  store i32 0, i32* %2, align 4
  br label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 59
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  store i32 0, i32* %2, align 4
  br label %81

78:                                               ; preds = %73
  %79 = call i32 @sldns_mktime_from_utc(%struct.tm* %5)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %77, %68, %59, %50, %41, %32, %21, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sldns_mktime_from_utc(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
