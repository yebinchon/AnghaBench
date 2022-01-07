; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_misc.c_str2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_misc.c_str2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str2bin(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strncasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13, i32 2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %189

27:                                               ; preds = %16
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 @c2b(i32 %36)
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %32, %27
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @c2b(i32 %50)
  %52 = shl i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %7, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @c2b(i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = or i32 %63, %59
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %60, align 1
  br label %42

66:                                               ; preds = %42
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %185

73:                                               ; preds = %2
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strncasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 2)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %163

77:                                               ; preds = %73
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sdiv i32 %81, 4
  %83 = mul nsw i32 %82, 3
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i8* @malloc(i32 %84)
  store i8* %85, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %189

88:                                               ; preds = %77
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %153, %88
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = call zeroext i8 @c64tobin(i32 %99)
  store i8 %100, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 64
  br label %103

103:                                              ; preds = %95, %90
  %104 = phi i1 [ false, %90 ], [ %102, %95 ]
  br i1 %104, label %105, label %156

105:                                              ; preds = %103
  %106 = load i32, i32* %9, align 4
  %107 = srem i32 %106, 4
  switch i32 %107, label %153 [
    i32 0, label %108
    i32 1, label %114
    i32 2, label %129
    i32 3, label %144
  ]

108:                                              ; preds = %105
  %109 = load i8, i8* %11, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 2
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %7, align 8
  store i8 %112, i8* %113, align 1
  br label %153

114:                                              ; preds = %105
  %115 = load i8, i8* %11, align 1
  %116 = zext i8 %115 to i32
  %117 = ashr i32 %116, 4
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  %122 = or i32 %121, %117
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %118, align 1
  %124 = load i8, i8* %11, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %7, align 8
  store i8 %127, i8* %128, align 1
  br label %153

129:                                              ; preds = %105
  %130 = load i8, i8* %11, align 1
  %131 = zext i8 %130 to i32
  %132 = ashr i32 %131, 2
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  %137 = or i32 %136, %132
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %133, align 1
  %139 = load i8, i8* %11, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 6
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %7, align 8
  store i8 %142, i8* %143, align 1
  br label %153

144:                                              ; preds = %105
  %145 = load i8, i8* %11, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  %151 = or i32 %150, %146
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %147, align 1
  br label %153

153:                                              ; preds = %105, %144, %129, %114, %108
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %90

156:                                              ; preds = %103
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %10, align 4
  br label %184

163:                                              ; preds = %73
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 @strlen(i8* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i8* @malloc(i32 %166)
  store i8* %167, i8** %8, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %189

170:                                              ; preds = %163
  %171 = load i8*, i8** %8, align 8
  store i8* %171, i8** %7, align 8
  %172 = load i8*, i8** %4, align 8
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %177, %170
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %6, align 8
  %180 = load i8, i8* %178, align 1
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %7, align 8
  store i8 %180, i8* %181, align 1
  br label %173

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %156
  br label %185

185:                                              ; preds = %184, %66
  %186 = load i8*, i8** %8, align 8
  %187 = load i8**, i8*** %5, align 8
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %169, %87, %26
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @c2b(i32) #1

declare dso_local zeroext i8 @c64tobin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
