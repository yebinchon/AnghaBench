; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_option_as_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_option_as_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@option_as_string.optbuf = internal global [32768 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"option_as_string: bad code %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dhcp option too large\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<error>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @option_as_string(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @option_as_string.optbuf, i64 0, i64 0), i8** %8, align 8
  store i32 32768, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 255
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  br label %18

18:                                               ; preds = %102, %17
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = icmp ult i8* %19, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @isascii(i8 zeroext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isprint(i8 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %30, %25
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = icmp ne i8* %37, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43, %35
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %52)
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %48, %43
  br label %101

59:                                               ; preds = %30
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %84, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 39
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 36
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 96
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 92
  br i1 %83, label %84, label %93

84:                                               ; preds = %79, %74, %69, %64, %59
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  store i8 92, i8* %85, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %9, align 4
  br label %100

93:                                               ; preds = %79
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %93, %84
  br label %101

101:                                              ; preds = %100, %58
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  br label %18

105:                                              ; preds = %18
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %111

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  store i8 0, i8* %110, align 1
  store i8* getelementptr inbounds ([32768 x i8], [32768 x i8]* @option_as_string.optbuf, i64 0, i64 0), i8** %4, align 8
  br label %113

111:                                              ; preds = %108
  %112 = call i32 @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
