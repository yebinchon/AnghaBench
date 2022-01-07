; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_network.c_inet_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_network.c_inet_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INADDR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_network(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %12, i32** %9, align 8
  br label %13

13:                                               ; preds = %110, %1
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  store i32 1, i32* %11, align 4
  store i32 8, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 88
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  store i32 16, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %74, %57, %34
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %35
  %41 = load i8, i8* %7, align 1
  %42 = call i64 @isdigit(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 56
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 57
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @INADDR_NONE, align 4
  store i32 %56, i32* %2, align 4
  br label %166

57:                                               ; preds = %51, %44
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %58, %59
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = add i32 %60, %63
  store i32 %64, i32* %4, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %35

67:                                               ; preds = %40
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i8, i8* %7, align 1
  %72 = call i64 @isxdigit(i8 zeroext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = shl i32 %75, 4
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, 10
  %80 = load i8, i8* %7, align 1
  %81 = call i64 @islower(i8 zeroext %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 97, i32 65
  %85 = sub nsw i32 %79, %84
  %86 = add i32 %76, %85
  store i32 %86, i32* %4, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %35

89:                                               ; preds = %70, %67
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @INADDR_NONE, align 4
  store i32 %94, i32* %2, align 4
  br label %166

95:                                               ; preds = %90
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = icmp uge i32* %96, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = icmp ugt i32 %101, 255
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %95
  %104 = load i32, i32* @INADDR_NONE, align 4
  store i32 %104, i32* %2, align 4
  br label %166

105:                                              ; preds = %100
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 46
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %4, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %114 = load i8*, i8** %3, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %3, align 8
  br label %13

116:                                              ; preds = %105
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i8*, i8** %3, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = call i32 @isspace(i8 signext %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* @INADDR_NONE, align 4
  store i32 %130, i32* %2, align 4
  br label %166

131:                                              ; preds = %121, %116
  %132 = load i32, i32* %4, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  store i32 %132, i32* %133, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ugt i32 %142, 4
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i32, i32* @INADDR_NONE, align 4
  store i32 %145, i32* %2, align 4
  br label %166

146:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %161, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* %4, align 4
  %153 = shl i32 %152, 8
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 255
  %159 = load i32, i32* %4, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %147

164:                                              ; preds = %147
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %144, %129, %103, %93, %55
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
