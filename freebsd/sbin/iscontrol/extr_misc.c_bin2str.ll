; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_misc.c_bin2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_misc.c_bin2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%%02%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@base64 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bin2str(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 3
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcpy(i8* %24, i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %11, align 8
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %33)
  br label %35

35:                                               ; preds = %39, %18
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  %44 = load i8, i8* %42, align 1
  %45 = call i32 @sprintf(i8* %40, i8* %41, i8 signext %44)
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %10, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i8*, i8** %10, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %4, align 8
  br label %177

51:                                               ; preds = %3
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @strncasecmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %176

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 2
  %58 = mul nsw i32 %57, 4
  %59 = sdiv i32 %58, 3
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 3
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcpy(i8* %63, i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %142, %55
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %145

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = srem i32 %74, 3
  switch i32 %75, label %139 [
    i32 0, label %76
    i32 1, label %93
    i32 2, label %113
  ]

76:                                               ; preds = %73
  %77 = load i8**, i8*** @base64, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = ashr i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %77, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %11, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 3
  %92 = shl i32 %91, 4
  store i32 %92, i32* %14, align 4
  br label %139

93:                                               ; preds = %73
  %94 = load i8*, i8** %11, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = ashr i32 %96, 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load i8**, i8*** @base64, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %104 to i8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 15
  %112 = shl i32 %111, 2
  store i32 %112, i32* %14, align 4
  br label %139

113:                                              ; preds = %73
  %114 = load i8*, i8** %11, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = ashr i32 %116, 6
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %14, align 4
  %120 = load i8**, i8*** @base64, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i8**, i8*** @base64, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 63
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %128, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %135 to i8
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  store i8 %136, i8* %137, align 1
  br label %139

139:                                              ; preds = %113, %73, %93, %76
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %11, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %69

145:                                              ; preds = %69
  %146 = load i32, i32* %7, align 4
  %147 = srem i32 %146, 3
  switch i32 %147, label %173 [
    i32 0, label %148
    i32 1, label %149
    i32 2, label %162
  ]

148:                                              ; preds = %145
  br label %173

149:                                              ; preds = %145
  %150 = load i8**, i8*** @base64, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = ptrtoint i8* %154 to i8
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %10, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %10, align 8
  store i8 61, i8* %158, align 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %10, align 8
  store i8 61, i8* %160, align 1
  br label %173

162:                                              ; preds = %145
  %163 = load i8**, i8*** @base64, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %167 to i8
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %10, align 8
  store i8 %168, i8* %169, align 1
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %10, align 8
  store i8 61, i8* %171, align 1
  br label %173

173:                                              ; preds = %145, %162, %149, %148
  %174 = load i8*, i8** %10, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %9, align 8
  store i8* %175, i8** %4, align 8
  br label %177

176:                                              ; preds = %51
  store i8* null, i8** %4, align 8
  br label %177

177:                                              ; preds = %176, %173, %48
  %178 = load i8*, i8** %4, align 8
  ret i8* %178
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
