; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_get_wpa_cli_event2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_get_wpa_cli_event2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Waiting for wpa_cli event %s\0A\00", align 1
@default_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Timeout on waiting for event %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"select: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failure while waiting for event %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_wpa_cli_event2(%struct.wpa_ctrl* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.wpa_ctrl* %0, %struct.wpa_ctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %7, align 8
  %23 = call i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %107

27:                                               ; preds = %5
  %28 = call i32 @time(i64* %17)
  br label %29

29:                                               ; preds = %27, %106
  %30 = call i32 @FD_ZERO(i32* %14)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %14)
  %33 = load i32, i32* @default_timeout, align 4
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @select(i32 %37, i32* %14, i32* null, i32* null, %struct.timeval* %16)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %6, align 4
  br label %107

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @errno, align 4
  %49 = call i8* @strerror(i32 %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 -1, i32* %6, align 4
  br label %107

51:                                               ; preds = %44
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %19, align 8
  %53 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %7, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 @wpa_ctrl_recv(%struct.wpa_ctrl* %53, i8* %54, i64* %19)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %6, align 4
  br label %107

60:                                               ; preds = %51
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* %19, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %19, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %19, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 62)
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %67
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i64 @strncmp(i8* %77, i8* %78, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i64 @strncmp(i8* %88, i8* %89, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86, %75
  store i32 0, i32* %6, align 4
  br label %107

95:                                               ; preds = %86, %83, %67
  %96 = call i32 @time(i64* %18)
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %17, align 8
  %99 = sub nsw i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @default_timeout, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  store i32 -1, i32* %6, align 4
  br label %107

106:                                              ; preds = %95
  br label %29

107:                                              ; preds = %103, %94, %57, %47, %41, %26
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @wpa_ctrl_get_fd(%struct.wpa_ctrl*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @wpa_ctrl_recv(%struct.wpa_ctrl*, i8*, i64*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
