; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_rdver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_warc_rdver.magic = internal constant [6 x i8] c"WARC/\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @_warc_rdver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_rdver(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 12
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @memcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_warc_rdver.magic, i64 0, i64 0), i32 5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %112

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 5
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isdigit(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %110

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %110

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isdigit(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %110

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @isdigit(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  %50 = mul i32 %49, 10000
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = sub nsw i32 %57, 48
  %59 = mul i32 %58, 1000
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = mul i32 %66, 100
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %79

70:                                               ; preds = %44
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = mul i32 %75, 100
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %70, %53
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp uge i32 %85, 1200
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @memcmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %109

93:                                               ; preds = %79
  %94 = load i32, i32* %7, align 4
  %95 = icmp ult i32 %94, 1200
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 32
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 9
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %101, %96
  br label %108

108:                                              ; preds = %107, %93
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %31, %25, %17
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
