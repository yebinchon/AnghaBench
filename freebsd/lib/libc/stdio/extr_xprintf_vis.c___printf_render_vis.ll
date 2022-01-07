; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_vis.c___printf_render_vis.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_vis.c___printf_render_vis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@VIS_WHITE = common dso_local global i32 0, align 4
@VIS_HTTPSTYLE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_vis(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.__printf_io*, align 8
  %6 = alloca %struct.printf_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %5, align 8
  store %struct.printf_info* %1, %struct.printf_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %21 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %22 = call i32 @__printf_out(%struct.__printf_io* %20, %struct.printf_info* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %22, i32* %4, align 4
  br label %105

23:                                               ; preds = %3
  %24 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %25 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %30 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %36, 4
  %38 = add i32 %37, 1
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %105

43:                                               ; preds = %35
  %44 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %45 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @VIS_WHITE, align 4
  %53 = load i32, i32* @VIS_HTTPSTYLE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @strvisx(i8* %49, i8* %50, i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %92

56:                                               ; preds = %43
  %57 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %58 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 48
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @VIS_WHITE, align 4
  %66 = load i32, i32* @VIS_OCTAL, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @strvisx(i8* %62, i8* %63, i32 %64, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %91

69:                                               ; preds = %56
  %70 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %71 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @VIS_WHITE, align 4
  %79 = call i32 @strvisx(i8* %75, i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %90

80:                                               ; preds = %69
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @VIS_WHITE, align 4
  %85 = load i32, i32* @VIS_CSTYLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @VIS_OCTAL, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @strvisx(i8* %81, i8* %82, i32 %83, i32 %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %80, %74
  br label %91

91:                                               ; preds = %90, %61
  br label %92

92:                                               ; preds = %91, %48
  %93 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %94 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @__printf_out(%struct.__printf_io* %93, %struct.printf_info* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %101 = call i32 @__printf_flush(%struct.__printf_io* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %92, %42, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strvisx(i8*, i8*, i32, i32) #1

declare dso_local i32 @__printf_flush(%struct.__printf_io*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
