; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_touint64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_touint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@digits = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_string_touint64(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 36
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16, %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  store i32 0, i32* %4, align 4
  br label %177

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = call i64 @isascii(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %39, %31, %26
  %48 = phi i1 [ false, %31 ], [ false, %26 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  br label %26

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 43
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 48
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 88
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 120
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %68
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %10, align 8
  store i32 16, i32* %7, align 4
  br label %91

83:                                               ; preds = %74, %63
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 48
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 8, i32* %7, align 4
  br label %90

89:                                               ; preds = %83
  store i32 10, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %5, align 8
  %99 = load i8**, i8*** %6, align 8
  store i8* %98, i8** %99, align 8
  store i32 0, i32* %4, align 4
  br label %177

100:                                              ; preds = %92
  store i32 -1, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %102, %101
  store i32 %103, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %161, %100
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %12, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %173

109:                                              ; preds = %104
  %110 = load i8, i8* %12, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = call signext i8 @tolower(i8 signext %113)
  store i8 %114, i8* %12, align 1
  %115 = load i8*, i8** @digits, align 8
  %116 = load i8, i8* %12, align 1
  %117 = call i8* @strchr(i8* %115, i8 signext %116)
  store i8* %117, i8** %11, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load i8*, i8** %10, align 8
  %121 = load i8**, i8*** %6, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %177

123:                                              ; preds = %109
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** @digits, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp sge i64 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load i8*, i8** %10, align 8
  %134 = load i8**, i8*** %6, align 8
  store i8* %133, i8** %134, align 8
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %177

136:                                              ; preds = %123
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i8*, i8** %5, align 8
  %142 = load i8**, i8*** %6, align 8
  store i8* %141, i8** %142, align 8
  store i32 0, i32* %4, align 4
  br label %177

143:                                              ; preds = %136
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = mul nsw i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** @digits, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = add nsw i64 %148, %153
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load i8*, i8** %5, align 8
  %160 = load i8**, i8*** %6, align 8
  store i8* %159, i8** %160, align 8
  store i32 0, i32* %4, align 4
  br label %177

161:                                              ; preds = %143
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** @digits, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %8, align 4
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %10, align 8
  br label %104

173:                                              ; preds = %104
  %174 = load i8*, i8** %10, align 8
  %175 = load i8**, i8*** %6, align 8
  store i8* %174, i8** %175, align 8
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %158, %140, %132, %119, %97, %22
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
