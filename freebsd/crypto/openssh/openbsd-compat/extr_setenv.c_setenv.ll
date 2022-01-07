; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_setenv.c_setenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_setenv.c_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@lastenv = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setenv(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %29, %3
  %17 = load i8*, i8** %10, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 61
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  br label %16

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8* @__findenv(i8* %35, i32 %41, i32* %12)
  store i8* %42, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %178

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i8* @__findenv(i8* %52, i32 %58, i32* %13)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %51
  %62 = load i8**, i8*** @environ, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8** %65, i8*** %9, align 8
  br label %66

66:                                               ; preds = %74, %61
  %67 = load i8**, i8*** %9, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %9, align 8
  store i8* %69, i8** %70, align 8
  %71 = icmp ne i8* %69, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load i8**, i8*** %9, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %9, align 8
  br label %66

77:                                               ; preds = %72
  br label %51

78:                                               ; preds = %51
  br label %124

79:                                               ; preds = %32
  %80 = load i8**, i8*** @environ, align 8
  store i8** %80, i8*** %9, align 8
  br label %81

81:                                               ; preds = %86, %79
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  %87 = load i8**, i8*** %9, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %9, align 8
  br label %81

89:                                               ; preds = %81
  %90 = load i8**, i8*** %9, align 8
  %91 = load i8**, i8*** @environ, align 8
  %92 = ptrtoint i8** %90 to i64
  %93 = ptrtoint i8** %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 8
  store i64 %95, i64* %14, align 8
  %96 = load i8**, i8*** @lastenv, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 2
  %99 = mul i64 8, %98
  %100 = trunc i64 %99 to i32
  %101 = call i64 @realloc(i8** %96, i32 %100)
  %102 = inttoptr i64 %101 to i8**
  store i8** %102, i8*** %9, align 8
  %103 = load i8**, i8*** %9, align 8
  %104 = icmp ne i8** %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %89
  store i32 -1, i32* %4, align 4
  br label %178

106:                                              ; preds = %89
  %107 = load i8**, i8*** @lastenv, align 8
  %108 = load i8**, i8*** @environ, align 8
  %109 = icmp ne i8** %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i8**, i8*** %9, align 8
  %112 = load i8**, i8*** @environ, align 8
  %113 = load i64, i64* %14, align 8
  %114 = mul i64 %113, 8
  %115 = call i32 @memcpy(i8** %111, i8** %112, i64 %114)
  br label %116

116:                                              ; preds = %110, %106
  %117 = load i8**, i8*** %9, align 8
  store i8** %117, i8*** @environ, align 8
  store i8** %117, i8*** @lastenv, align 8
  %118 = load i64, i64* %14, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i8**, i8*** @environ, align 8
  %121 = load i64, i64* %14, align 8
  %122 = add i64 %121, 1
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* null, i8** %123, align 8
  br label %124

124:                                              ; preds = %116, %78
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = call i8* @malloc(i64 %134)
  %136 = load i8**, i8*** @environ, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  store i8* %135, i8** %139, align 8
  %140 = icmp ne i8* %135, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %178

142:                                              ; preds = %124
  %143 = load i8**, i8*** @environ, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %8, align 8
  br label %148

148:                                              ; preds = %163, %142
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %5, align 8
  %151 = load i8, i8* %149, align 1
  %152 = load i8*, i8** %8, align 8
  store i8 %151, i8* %152, align 1
  %153 = sext i8 %151 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i8*, i8** %8, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 61
  br label %160

160:                                              ; preds = %155, %148
  %161 = phi i1 [ false, %148 ], [ %159, %155 ]
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  br label %148

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %8, align 8
  store i8 61, i8* %167, align 1
  br label %169

169:                                              ; preds = %176, %166
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %6, align 8
  %172 = load i8, i8* %170, align 1
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %8, align 8
  store i8 %172, i8* %173, align 1
  %175 = icmp ne i8 %172, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %169

177:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %141, %105, %49
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @__findenv(i8*, i32, i32*) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i64) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
