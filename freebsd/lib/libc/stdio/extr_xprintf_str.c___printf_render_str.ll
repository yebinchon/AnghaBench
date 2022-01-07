; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_str.c___printf_render_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_str.c___printf_render_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__printf_io = type { i32 }
%struct.printf_info = type { i8, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_render_str(%struct.__printf_io* %0, %struct.printf_info* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.__printf_io*, align 8
  %6 = alloca %struct.printf_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.__printf_io* %0, %struct.__printf_io** %5, align 8
  store %struct.printf_info* %1, %struct.printf_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %13 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %18 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 8
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 83
  br i1 %21, label %22, label %53

22:                                               ; preds = %16, %3
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i32**
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %32 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %33 = call i32 @__printf_out(%struct.__printf_io* %31, %struct.printf_info* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %33, i32* %4, align 4
  br label %88

34:                                               ; preds = %22
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %37 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__wcsconv(i32* %35, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %88

43:                                               ; preds = %34
  %44 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %45 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @__printf_out(%struct.__printf_io* %44, %struct.printf_info* %45, i8* %46, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %88

53:                                               ; preds = %16
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i8**
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %63 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %64 = call i32 @__printf_out(%struct.__printf_io* %62, %struct.printf_info* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %64, i32* %4, align 4
  br label %88

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %69 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %74 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %80 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %72, %65
  %83 = load %struct.__printf_io*, %struct.__printf_io** %5, align 8
  %84 = load %struct.printf_info*, %struct.printf_info** %6, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @__printf_out(%struct.__printf_io* %83, %struct.printf_info* %84, i8* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %61, %43, %42, %30
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @__printf_out(%struct.__printf_io*, %struct.printf_info*, i8*, i32) #1

declare dso_local i8* @__wcsconv(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
