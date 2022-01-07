; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_sdump_addrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getaddrinfo_test.c_sdump_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, i8*, %struct.addrinfo*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdump_addrinfo(%struct.addrinfo* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %169

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %47 ], [ %51, %48 ]
  %54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %169

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %6, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %64
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %74, i64 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i64, i64* %6, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %169

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %141

91:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %137, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %109 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %99, i64 %100, i8* %108, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i64, i64* %6, align 8
  %125 = trunc i64 %124 to i32
  %126 = icmp sgt i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %98
  br label %169

128:                                              ; preds = %98
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %6, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %169

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %92

140:                                              ; preds = %92
  br label %141

141:                                              ; preds = %140, %86
  %142 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %142, i32 0, i32 6
  %144 = load %struct.addrinfo*, %struct.addrinfo** %143, align 8
  %145 = icmp ne %struct.addrinfo* %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %147, i64 %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %5, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i64, i64* %6, align 8
  %156 = trunc i64 %155 to i32
  %157 = icmp sgt i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %169

159:                                              ; preds = %146
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %6, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %6, align 8
  %164 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %164, i32 0, i32 6
  %166 = load %struct.addrinfo*, %struct.addrinfo** %165, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %6, align 8
  call void @sdump_addrinfo(%struct.addrinfo* %166, i8* %167, i64 %168)
  br label %169

169:                                              ; preds = %35, %63, %85, %127, %135, %158, %159, %141
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
