; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_upnp_xml.c_xml_data_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_upnp_xml.c_xml_data_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_data_encode(%struct.wpabuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %57, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 60
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = call i32 @wpabuf_put_str(%struct.wpabuf* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %57

25:                                               ; preds = %13
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 62
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = call i32 @wpabuf_put_str(%struct.wpabuf* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %57

32:                                               ; preds = %25
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 38
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = call i32 @wpabuf_put_str(%struct.wpabuf* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %57

39:                                               ; preds = %32
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 39
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %45 = call i32 @wpabuf_put_str(%struct.wpabuf* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %57

46:                                               ; preds = %39
  %47 = load i8, i8* %8, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 34
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %52 = call i32 @wpabuf_put_str(%struct.wpabuf* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %55 = load i8, i8* %8, align 1
  %56 = call i32 @wpabuf_put_u8(%struct.wpabuf* %54, i8 signext %55)
  br label %57

57:                                               ; preds = %53, %50, %43, %36, %29, %22
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %9

60:                                               ; preds = %9
  ret void
}

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
