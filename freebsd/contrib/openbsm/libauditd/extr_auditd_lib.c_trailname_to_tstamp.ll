; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_trailname_to_tstamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_trailname_to_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@TIMESTAMP_LEN = common dso_local global i32 0, align 4
@POSTFIX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @trailname_to_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trailname_to_tstamp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @TIMESTAMP_LEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 46)
  store i8* %18, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  %24 = trunc i64 %13 to i32
  %25 = call i32 @strlcpy(i8* %15, i8* %23, i32 %24)
  %26 = call i64 @strlen(i8* %15)
  %27 = load i64, i64* @POSTFIX_LEN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

30:                                               ; preds = %21
  %31 = call i32 @bzero(%struct.tm* %6, i32 32)
  %32 = load i64, i64* @POSTFIX_LEN, align 8
  %33 = getelementptr inbounds i8, i8* %15, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -2
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @atol(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 60
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %30
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -2
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @atol(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 59
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %47
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

63:                                               ; preds = %58
  %64 = load i8*, i8** %9, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -2
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @atol(i8* %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 23
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %63
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -2
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i8* @atol(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %94, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 31
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %79
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

95:                                               ; preds = %90
  %96 = load i8*, i8** %9, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -2
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i8* @atol(i8* %99)
  %101 = getelementptr i8, i8* %100, i64 -1
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 11
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %95
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 -4
  store i8* %115, i8** %9, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @atol(i8* %116)
  %118 = getelementptr i8, i8* %117, i64 -1900
  %119 = ptrtoint i8* %118 to i64
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

125:                                              ; preds = %112
  %126 = call i32 @timegm(%struct.tm* %6)
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %128

128:                                              ; preds = %125, %124, %111, %94, %78, %62, %46, %29, %20
  %129 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @bzero(%struct.tm*, i32) #2

declare dso_local i8* @atol(i8*) #2

declare dso_local i32 @timegm(%struct.tm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
