; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_state = type { i32 (%struct.snprintf_state*, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snprintf_state*, i8*, i32, i32, i32)* @append_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @append_string(%struct.snprintf_state* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snprintf_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snprintf_state* %0, %struct.snprintf_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %29

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %22, %18
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @minus_flag, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @pad(%struct.snprintf_state* %35, i32 %36, i8 signext 32)
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  %52 = icmp ne i32 %50, 0
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ false, %44 ], [ %52, %49 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %57 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %56, i32 0, i32 0
  %58 = load i32 (%struct.snprintf_state*, i32)*, i32 (%struct.snprintf_state*, i32)** %57, align 8
  %59 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = call i32 %58(%struct.snprintf_state* %59, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %44

67:                                               ; preds = %53
  br label %86

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %75 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %74, i32 0, i32 0
  %76 = load i32 (%struct.snprintf_state*, i32)*, i32 (%struct.snprintf_state*, i32)** %75, align 8
  %77 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 %76(%struct.snprintf_state* %77, i32 %81)
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %69

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @minus_flag, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.snprintf_state*, %struct.snprintf_state** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @pad(%struct.snprintf_state* %92, i32 %93, i8 signext 32)
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i64, i64* %11, align 8
  ret i64 %98
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @pad(%struct.snprintf_state*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
