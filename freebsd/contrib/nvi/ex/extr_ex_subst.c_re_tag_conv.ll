; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_re_tag_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_re_tag_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"^.[]$*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i32*)* @re_tag_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_tag_conv(i32* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = mul i64 %21, 2
  %23 = call i32 @GET_SPACE_RETW(i32* %18, i8* %19, i64 %20, i64 %22)
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %12, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %4
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %45, %37, %4
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 36
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %63

62:                                               ; preds = %51, %48
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %10, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 63
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %66
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %13, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %78, %72, %63
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 94
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %13, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %14, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %89, %83
  br label %98

98:                                               ; preds = %141, %97
  %99 = load i64, i64* %10, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 63
  br i1 %118, label %119, label %124

119:                                              ; preds = %113, %107
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %10, align 8
  br label %135

124:                                              ; preds = %113, %101
  %125 = call i32 @L(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %126 = load i8*, i8** %13, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = call i64 @STRCHR(i32 %125, i8 signext %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i8*, i8** %14, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %14, align 8
  store i8 92, i8* %132, align 1
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %13, align 8
  %138 = load i8, i8* %136, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %14, align 8
  store i8 %138, i8* %139, align 1
  br label %141

141:                                              ; preds = %135
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %10, align 8
  br label %98

144:                                              ; preds = %98
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %14, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %14, align 8
  store i8 36, i8* %148, align 1
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i8*, i8** %12, align 8
  %152 = load i8**, i8*** %6, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i8*, i8** %14, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  ret i32 0
}

declare dso_local i32 @GET_SPACE_RETW(i32*, i8*, i64, i64) #1

declare dso_local i64 @STRCHR(i32, i8 signext) #1

declare dso_local i32 @L(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
