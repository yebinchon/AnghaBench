; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_servent_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_servent_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i8*, i8*, i8**, i32 }

@.str = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",/\00", align 1
@USHRT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.servent*, i8**, i64, i32*)* @servent_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @servent_unpack(i8* %0, %struct.servent* %1, i8** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.servent*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.servent* %1, %struct.servent** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %153

21:                                               ; preds = %5
  %22 = load %struct.servent*, %struct.servent** %8, align 8
  %23 = call i32 @memset(%struct.servent* %22, i32 0, i32 32)
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strpbrk(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i8*, i8** %12, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.servent*, %struct.servent** %8, align 8
  %33 = getelementptr inbounds %struct.servent, %struct.servent* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @strpbrk(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %153

39:                                               ; preds = %30
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  store i8 0, i8* %40, align 1
  br label %42

42:                                               ; preds = %54, %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  br label %42

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strpbrk(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %153

63:                                               ; preds = %57
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  store i8 0, i8* %64, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strtol(i8* %66, i8** %14, i32 10)
  store i64 %67, i64* %15, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %14, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %15, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* @USHRT_MAX, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %76, %71, %63
  store i32 -1, i32* %6, align 4
  br label %153

84:                                               ; preds = %79
  %85 = load i64, i64* %15, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @htons(i32 %86)
  %88 = load %struct.servent*, %struct.servent** %8, align 8
  %89 = getelementptr inbounds %struct.servent, %struct.servent* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.servent*, %struct.servent** %8, align 8
  %92 = getelementptr inbounds %struct.servent, %struct.servent* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8**, i8*** %9, align 8
  %94 = load %struct.servent*, %struct.servent** %8, align 8
  %95 = getelementptr inbounds %struct.servent, %struct.servent* %94, i32 0, i32 2
  store i8** %93, i8*** %95, align 8
  store i8** %93, i8*** %13, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i8* @strpbrk(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  store i8 0, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %84
  br label %104

104:                                              ; preds = %150, %124, %103
  %105 = load i8*, i8** %12, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %107, %104
  %113 = phi i1 [ false, %104 ], [ %111, %107 ]
  br i1 %113, label %114, label %151

114:                                              ; preds = %112
  %115 = load i8*, i8** %12, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 9
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %114
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %12, align 8
  br label %104

127:                                              ; preds = %119
  %128 = load i8**, i8*** %13, align 8
  %129 = load i8**, i8*** %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = icmp ult i8** %128, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i8*, i8** %12, align 8
  %136 = load i8**, i8*** %13, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %13, align 8
  store i8* %135, i8** %136, align 8
  br label %142

138:                                              ; preds = %127
  %139 = load i8**, i8*** %13, align 8
  store i8* null, i8** %139, align 8
  %140 = load i32, i32* @ERANGE, align 4
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  store i32 -1, i32* %6, align 4
  br label %153

142:                                              ; preds = %134
  %143 = load i8*, i8** %12, align 8
  %144 = call i8* @strpbrk(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %144, i8** %12, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 0, i8* %148, align 1
  br label %150

150:                                              ; preds = %147, %142
  br label %104

151:                                              ; preds = %112
  %152 = load i8**, i8*** %13, align 8
  store i8* null, i8** %152, align 8
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %151, %138, %83, %62, %38, %20
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.servent*, i32, i32) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
