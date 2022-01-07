; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_format_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_format_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s, %02d %s %d %02d:%02d:%02d GMT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_date(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %6, align 4
  %8 = call %struct.tm* @gmtime(i32* %6)
  store %struct.tm* %8, %struct.tm** %5, align 8
  %9 = load %struct.tm*, %struct.tm** %5, align 8
  %10 = icmp eq %struct.tm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %14, i64 %19
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.tm*, %struct.tm** %5, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = load %struct.tm*, %struct.tm** %5, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1900
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tm*, %struct.tm** %5, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wpabuf_printf(%struct.wpabuf* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %23, i8* %30, i64 %34, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
