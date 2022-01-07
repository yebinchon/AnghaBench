; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_linux_if_drops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_linux_if_drops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/net/dev\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @linux_if_drops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @linux_if_drops(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 3, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %136

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %131, %34, %16
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @fgets(i8* %21, i32 512, i32* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %132

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 4, i32* %7, align 4
  br label %17

35:                                               ; preds = %30, %27
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strstr(i8* %36, i8* %37)
  store i8* %38, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %131

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %131

50:                                               ; preds = %44, %40
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 58
  br i1 %57, label %58, label %131

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %105, %58
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ false, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %106

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 32
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i1 [ false, %76 ], [ %86, %81 ]
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %76

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 32
  br label %102

102:                                              ; preds = %96, %91
  %103 = phi i1 [ false, %91 ], [ %101, %96 ]
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %91

105:                                              ; preds = %102
  br label %64

106:                                              ; preds = %73
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 32
  br label %117

117:                                              ; preds = %112, %107
  %118 = phi i1 [ false, %107 ], [ %116, %112 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %5, align 8
  br label %107

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = call i64 @strtol(i8* %128, i32* null, i32 10)
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %127, %122
  br label %132

131:                                              ; preds = %50, %44, %35
  br label %17

132:                                              ; preds = %130, %25
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %2, align 8
  br label %136

136:                                              ; preds = %132, %15
  %137 = load i64, i64* %2, align 8
  ret i64 %137
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
