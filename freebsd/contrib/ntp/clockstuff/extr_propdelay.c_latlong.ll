; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_latlong.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_latlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"latitude/longitude %s = %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i32)* @latlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @latlong(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 78
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 110
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  store i32 0, i32* %9, align 4
  br label %38

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 83
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 115
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  store i32 1, i32* %9, align 4
  br label %37

36:                                               ; preds = %30
  store i32 -1, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %24
  br label %64

39:                                               ; preds = %2
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 69
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 101
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 0, i32* %9, align 4
  br label %63

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 87
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 119
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  store i32 1, i32* %9, align 4
  br label %62

61:                                               ; preds = %55
  store i32 -1, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %3, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 58)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %133

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  store i8* %76, i8** %5, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %82, %75
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 %85, i8* %86, align 1
  br label %78

88:                                               ; preds = %78
  %89 = load i8*, i8** %6, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %93 = call double @atof(i8* %92)
  store double %93, double* %7, align 8
  store double 6.000000e+01, double* %8, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 58)
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %88
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %104, %98
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  %107 = load i8, i8* %105, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  store i8 %107, i8* %108, align 1
  br label %100

110:                                              ; preds = %100
  %111 = load i8*, i8** %6, align 8
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %115 = call double @atof(i8* %114)
  %116 = load double, double* %8, align 8
  %117 = fdiv double %115, %116
  %118 = load double, double* %7, align 8
  %119 = fadd double %118, %117
  store double %119, double* %7, align 8
  store double 3.600000e+03, double* %8, align 8
  br label %120

120:                                              ; preds = %110, %88
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = call double @atof(i8* %126)
  %128 = load double, double* %8, align 8
  %129 = fdiv double %127, %128
  %130 = load double, double* %7, align 8
  %131 = fadd double %130, %129
  store double %131, double* %7, align 8
  br label %132

132:                                              ; preds = %125, %120
  br label %136

133:                                              ; preds = %70
  %134 = load i8*, i8** %3, align 8
  %135 = call double @atof(i8* %134)
  store double %135, double* %7, align 8
  br label %136

136:                                              ; preds = %133, %132
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load double, double* %7, align 8
  %141 = fneg double %140
  store double %141, double* %7, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* @debug, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i8*, i8** %3, align 8
  %147 = load double, double* %7, align 8
  %148 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %146, double %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load double, double* %7, align 8
  ret double %150
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
