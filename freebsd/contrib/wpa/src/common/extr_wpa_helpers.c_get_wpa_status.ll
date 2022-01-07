; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_get_wpa_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_get_wpa_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"STATUS-NO_EVENTS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_wpa_status(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpa_ctrl*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.wpa_ctrl* @wpa_open_ctrl(i8* %16)
  store %struct.wpa_ctrl* %17, %struct.wpa_ctrl** %10, align 8
  %18 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %10, align 8
  %19 = icmp eq %struct.wpa_ctrl* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %110

21:                                               ; preds = %4
  store i64 4096, i64* %14, align 8
  %22 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %10, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %24 = call i64 @wpa_ctrl_request(%struct.wpa_ctrl* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16, i8* %23, i64* %14, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %10, align 8
  %28 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %27)
  store i32 -1, i32* %5, align 4
  br label %110

29:                                               ; preds = %21
  %30 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %10, align 8
  %31 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %30)
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %15, align 8
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %73, %54, %29
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = icmp ult i8* %40, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %37
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %37

57:                                               ; preds = %49
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @strncmp(i8* %61, i8* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 61
  br i1 %72, label %73, label %76

73:                                               ; preds = %66, %60
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  br label %37

76:                                               ; preds = %66
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %77, 1
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 10)
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %110

86:                                               ; preds = %76
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %13, align 8
  store i8 0, i8* %87, align 1
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %9, align 8
  %95 = trunc i64 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  store i32 -1, i32* %5, align 4
  br label %110

99:                                               ; preds = %86
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(i8* %100, i8* %101, i32 %107)
  store i32 0, i32* %5, align 4
  br label %110

109:                                              ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %99, %98, %85, %26, %20
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.wpa_ctrl* @wpa_open_ctrl(i8*) #1

declare dso_local i64 @wpa_ctrl_request(%struct.wpa_ctrl*, i8*, i32, i8*, i64*, i32*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
