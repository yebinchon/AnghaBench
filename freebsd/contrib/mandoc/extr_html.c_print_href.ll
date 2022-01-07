; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_href.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_href.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i8*, i8*, i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.html*, i8*, i8*, i32)* @print_href to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_href(%struct.html* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.html*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.html* %0, %struct.html** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load %struct.html*, %struct.html** %5, align 8
  %17 = getelementptr inbounds %struct.html, %struct.html* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load %struct.html*, %struct.html** %5, align 8
  %20 = getelementptr inbounds %struct.html, %struct.html* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @mandoc_asprintf(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @stat(i8* %27, %struct.stat* %9)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.html*, %struct.html** %5, align 8
  %32 = getelementptr inbounds %struct.html, %struct.html* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %34, %15
  br label %42

38:                                               ; preds = %4
  %39 = load %struct.html*, %struct.html** %5, align 8
  %40 = getelementptr inbounds %struct.html, %struct.html* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %100, %42
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 37)
  store i8* %45, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %103

47:                                               ; preds = %43
  %48 = load %struct.html*, %struct.html** %5, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @print_encode(%struct.html* %48, i8* %49, i8* %50, i32 1)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 83
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.html*, %struct.html** %5, align 8
  %65 = call i32 @print_byte(%struct.html* %64, i8 signext 49)
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.html*, %struct.html** %5, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @print_encode(%struct.html* %67, i8* %68, i8* null, i32 1)
  br label %70

70:                                               ; preds = %66, %63
  br label %100

71:                                               ; preds = %54, %47
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 78
  br i1 %79, label %89, label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 73
  br i1 %88, label %89, label %93

89:                                               ; preds = %83, %74
  %90 = load %struct.html*, %struct.html** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @print_encode(%struct.html* %90, i8* %91, i8* null, i32 1)
  br label %99

93:                                               ; preds = %83, %80
  %94 = load %struct.html*, %struct.html** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = call i32 @print_encode(%struct.html* %94, i8* %95, i8* %97, i32 1)
  br label %99

99:                                               ; preds = %93, %89
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %102, i8** %11, align 8
  br label %43

103:                                              ; preds = %43
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.html*, %struct.html** %5, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @print_encode(%struct.html* %109, i8* %110, i8* null, i32 1)
  br label %112

112:                                              ; preds = %108, %103
  ret void
}

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @print_encode(%struct.html*, i8*, i8*, i32) #1

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
