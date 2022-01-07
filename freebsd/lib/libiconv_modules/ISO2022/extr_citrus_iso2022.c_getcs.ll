; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_getcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_getcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8, i32 }

@.str = private unnamed_addr constant [4 x i8] c"94$\00", align 1
@CS94MULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"96$\00", align 1
@CS96MULTI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"94\00", align 1
@CS94 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"96\00", align 1
@CS96 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @getcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcs(i8* noalias %0, %struct.TYPE_3__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8 %26, i8* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8 0, i8* %30, align 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8 0, i8* %32, align 2
  %33 = load i32, i32* @CS94MULTI, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %133

36:                                               ; preds = %15, %9, %2
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8 %57, i8* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8 0, i8* %61, align 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i8 0, i8* %63, align 2
  %64 = load i32, i32* @CS96MULTI, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %132

67:                                               ; preds = %46, %40, %36
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strncmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i8 %88, i8* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i8 0, i8* %92, align 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i8 0, i8* %94, align 2
  %95 = load i32, i32* @CS94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %131

98:                                               ; preds = %77, %71, %67
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %102
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 255
  %119 = trunc i32 %118 to i8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i8 %119, i8* %121, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i8 0, i8* %123, align 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i8 0, i8* %125, align 2
  %126 = load i32, i32* @CS96, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %130

129:                                              ; preds = %108, %102, %98
  store i32 1, i32* %3, align 4
  br label %134

130:                                              ; preds = %113
  br label %131

131:                                              ; preds = %130, %82
  br label %132

132:                                              ; preds = %131, %51
  br label %133

133:                                              ; preds = %132, %20
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %129
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
