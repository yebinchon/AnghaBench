; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_txtproto_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_txtproto_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MAX_TOKEN = common dso_local global i32 0, align 4
@RESP_CODE_SECOND_TOKEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", length: %u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txtproto_print(%struct.TYPE_6__* %0, i8* %1, i64 %2, i8* %3, i8** %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load i32, i32* @MAX_TOKEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %86

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %22 to i32
  %32 = call i64 @fetch_token(%struct.TYPE_6__* %28, i8* %29, i64 0, i64 %30, i8* %24, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i8**, i8*** %11, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %11, align 8
  %39 = load i8*, i8** %37, align 8
  store i8* %39, i8** %17, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8*, i8** %17, align 8
  %43 = call i64 @ascii_strcasecmp(i8* %24, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %18, align 4
  br label %47

46:                                               ; preds = %41
  br label %36

47:                                               ; preds = %45, %36
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @RESP_CODE_SECOND_TOKEN, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %22 to i32
  %58 = call i64 @fetch_token(%struct.TYPE_6__* %53, i8* %54, i64 %55, i64 %56, i8* %24, i32 %57)
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %24, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = call i64 @isdigit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, i8* %24, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, i8* %24, i64 2
  %74 = load i8, i8* %73, align 2
  %75 = call i64 @isdigit(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, i8* %24, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %18, align 4
  br label %83

83:                                               ; preds = %82, %77, %72, %67, %62
  br label %84

84:                                               ; preds = %83, %59
  br label %85

85:                                               ; preds = %84, %27
  br label %87

86:                                               ; preds = %6
  store i32 1, i32* %18, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i8*, i8** %10, align 8
  store i8* %88, i8** %19, align 8
  br label %89

89:                                               ; preds = %102, %87
  %90 = load i8*, i8** %19, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @toupper(i8 signext %97)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.TYPE_6__*
  %101 = call i32 @ND_PRINT(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %19, align 8
  br label %89

105:                                              ; preds = %89
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %105
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_6__*
  %117 = call i32 @ND_PRINT(%struct.TYPE_6__* %116)
  store i64 0, i64* %13, align 8
  br label %118

118:                                              ; preds = %133, %113
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i64 @print_txt_line(%struct.TYPE_6__* %123, i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %125, i64 %126, i64 %127)
  store i64 %128, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %122, %118
  %131 = phi i1 [ false, %118 ], [ %129, %122 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %14, align 8
  store i64 %134, i64* %13, align 8
  br label %118

135:                                              ; preds = %130
  br label %142

136:                                              ; preds = %108
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i64 @print_txt_line(%struct.TYPE_6__* %137, i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %139, i64 0, i64 %140)
  br label %142

142:                                              ; preds = %136, %135
  br label %143

143:                                              ; preds = %142, %105
  %144 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fetch_token(%struct.TYPE_6__*, i8*, i64, i64, i8*, i32) #2

declare dso_local i64 @ascii_strcasecmp(i8*, i8*) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #2

declare dso_local i32 @toupper(i8 signext) #2

declare dso_local i64 @print_txt_line(%struct.TYPE_6__*, i8*, i8*, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
