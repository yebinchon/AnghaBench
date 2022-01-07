; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_quote_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c_quote_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char_map = common dso_local global i32* null, align 8
@Q_RFC2253_QUOTE_FIRST = common dso_local global i8 0, align 1
@Q_RFC2253_QUOTE_LAST = common dso_local global i8 0, align 1
@Q_RFC2253_QUOTE = common dso_local global i8 0, align 1
@Q_RFC2253_HEX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"#%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i64*)* @quote_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quote_string(i8* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %18, 3
  %20 = add i64 %19, 1
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %162

26:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %147, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %27
  %32 = load i32*, i32** @char_map, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %15, align 1
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %31
  %46 = load i8, i8* %15, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @Q_RFC2253_QUOTE_FIRST, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 92, i8* %56, align 1
  %57 = load i8*, i8** %13, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %64, align 1
  br label %146

65:                                               ; preds = %45, %31
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i8, i8* %15, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @Q_RFC2253_QUOTE_LAST, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 92, i8* %81, align 1
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %89, align 1
  br label %145

90:                                               ; preds = %70, %65
  %91 = load i8, i8* %15, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @Q_RFC2253_QUOTE, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load i8*, i8** %14, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  %101 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 92, i8* %101, align 1
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %14, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %11, align 8
  %109 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 %105, i8* %109, align 1
  br label %144

110:                                              ; preds = %90
  %111 = load i8, i8* %15, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @Q_RFC2253_HEX, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %121, %122
  %124 = sub i64 %123, 1
  %125 = load i8*, i8** %13, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @snprintf(i8* %120, i64 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 zeroext %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %11, align 8
  br label %143

134:                                              ; preds = %110
  %135 = load i8*, i8** %13, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %14, align 8
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  %142 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 %138, i8* %142, align 1
  br label %143

143:                                              ; preds = %134, %117
  br label %144

144:                                              ; preds = %143, %97
  br label %145

145:                                              ; preds = %144, %77
  br label %146

146:                                              ; preds = %145, %52
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %10, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %10, align 8
  br label %27

150:                                              ; preds = %27
  %151 = load i8*, i8** %14, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = icmp ult i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i64, i64* %11, align 8
  %160 = load i64*, i64** %9, align 8
  store i64 %159, i64* %160, align 8
  %161 = load i8*, i8** %14, align 8
  store i8* %161, i8** %5, align 8
  br label %162

162:                                              ; preds = %150, %25
  %163 = load i8*, i8** %5, align 8
  ret i8* %163
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 zeroext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
