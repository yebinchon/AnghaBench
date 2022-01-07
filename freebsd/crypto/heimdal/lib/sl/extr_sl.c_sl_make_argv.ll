; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_sl_make_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_sl.c_sl_make_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sl_make_argv(i8* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 10, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i8** @malloc(i32 %18)
  store i8** %19, i8*** %12, align 8
  %20 = load i8**, i8*** %12, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %164

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %31, %24
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isspace(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %34, %47, %73, %93, %149
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %102

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 34
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = call i32 @memmove(i8* %53, i8* %55, i64 %59)
  br label %36

61:                                               ; preds = %42
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 92
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %160

73:                                               ; preds = %66
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 1
  %82 = call i32 @memmove(i8* %75, i8* %77, i64 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %8, align 8
  br label %36

85:                                               ; preds = %61
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isspace(i8 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %85
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %36

96:                                               ; preds = %88
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  store i8 0, i8* %97, align 1
  br label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %41
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %160

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %11, align 4
  %114 = load i8**, i8*** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = call i8** @realloc(i8** %114, i32 %118)
  store i8** %119, i8*** %14, align 8
  %120 = load i8**, i8*** %14, align 8
  %121 = icmp eq i8** %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load i8**, i8*** %12, align 8
  %124 = call i32 @free(i8** %123)
  %125 = load i32, i32* @ENOMEM, align 4
  store i32 %125, i32* %4, align 4
  br label %164

126:                                              ; preds = %111
  %127 = load i8**, i8*** %14, align 8
  store i8** %127, i8*** %12, align 8
  br label %128

128:                                              ; preds = %126, %106
  %129 = load i8*, i8** %9, align 8
  %130 = load i8**, i8*** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  store i8* %129, i8** %134, align 8
  br label %135

135:                                              ; preds = %140, %128
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @isspace(i8 zeroext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  br label %135

143:                                              ; preds = %135
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %151

149:                                              ; preds = %143
  %150 = load i8*, i8** %8, align 8
  store i8* %150, i8** %9, align 8
  br label %36

151:                                              ; preds = %148
  %152 = load i8**, i8*** %12, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* null, i8** %155, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i8**, i8*** %12, align 8
  %159 = load i8***, i8**** %7, align 8
  store i8** %158, i8*** %159, align 8
  store i32 0, i32* %4, align 4
  br label %164

160:                                              ; preds = %105, %72
  %161 = load i8**, i8*** %12, align 8
  %162 = call i32 @free(i8** %161)
  %163 = load i32, i32* @ERANGE, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %151, %122, %22
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
