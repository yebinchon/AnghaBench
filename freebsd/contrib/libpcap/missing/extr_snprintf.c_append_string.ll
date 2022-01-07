; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/missing/extr_snprintf.c_append_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/missing/extr_snprintf.c_append_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i64 (%struct.state*, i8)* }

@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, i8*, i32, i32, i32)* @append_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_string(%struct.state* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.state* %0, %struct.state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %9, align 4
  br label %25

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %14
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @minus_flag, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.state*, %struct.state** %7, align 8
  %37 = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 0
  %38 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %37, align 8
  %39 = load %struct.state*, %struct.state** %7, align 8
  %40 = call i64 %38(%struct.state* %39, i8 signext 32)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %112

43:                                               ; preds = %35
  br label %31

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  %57 = icmp ne i32 %55, 0
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i1 [ false, %49 ], [ %57, %54 ]
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = load %struct.state*, %struct.state** %7, align 8
  %62 = getelementptr inbounds %struct.state, %struct.state* %61, i32 0, i32 0
  %63 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %62, align 8
  %64 = load %struct.state*, %struct.state** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  %67 = load i8, i8* %65, align 1
  %68 = call i64 %63(%struct.state* %64, i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %112

71:                                               ; preds = %60
  br label %49

72:                                               ; preds = %58
  br label %91

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.state*, %struct.state** %7, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 0
  %81 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %80, align 8
  %82 = load %struct.state*, %struct.state** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  %85 = load i8, i8* %83, align 1
  %86 = call i64 %81(%struct.state* %82, i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %112

89:                                               ; preds = %78
  br label %74

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @minus_flag, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp sgt i32 %98, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load %struct.state*, %struct.state** %7, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 0
  %104 = load i64 (%struct.state*, i8)*, i64 (%struct.state*, i8)** %103, align 8
  %105 = load %struct.state*, %struct.state** %7, align 8
  %106 = call i64 %104(%struct.state* %105, i8 signext 32)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  br label %112

109:                                              ; preds = %101
  br label %97

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %91
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %108, %88, %70, %42
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
