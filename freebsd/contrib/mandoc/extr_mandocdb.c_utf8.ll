; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utf8(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ule i32 %7, 127
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  store i64 1, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  br label %175

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ule i32 %15, 2047
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  store i64 2, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 6
  %20 = and i32 %19, 31
  %21 = or i32 %20, 192
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 63
  %27 = or i32 %26, 128
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %28, i8* %30, align 1
  br label %174

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = icmp ule i32 %32, 65535
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  store i64 3, i64* %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = lshr i32 %35, 12
  %37 = and i32 %36, 15
  %38 = or i32 %37, 224
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = lshr i32 %42, 6
  %44 = and i32 %43, 63
  %45 = or i32 %44, 128
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 63
  %51 = or i32 %50, 128
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %52, i8* %54, align 1
  br label %173

55:                                               ; preds = %31
  %56 = load i32, i32* %4, align 4
  %57 = icmp ule i32 %56, 2097151
  br i1 %57, label %58, label %86

58:                                               ; preds = %55
  store i64 4, i64* %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = lshr i32 %59, 18
  %61 = and i32 %60, 7
  %62 = or i32 %61, 240
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  %66 = load i32, i32* %4, align 4
  %67 = lshr i32 %66, 12
  %68 = and i32 %67, 63
  %69 = or i32 %68, 128
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %4, align 4
  %74 = lshr i32 %73, 6
  %75 = and i32 %74, 63
  %76 = or i32 %75, 128
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 63
  %82 = or i32 %81, 128
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  store i8 %83, i8* %85, align 1
  br label %172

86:                                               ; preds = %55
  %87 = load i32, i32* %4, align 4
  %88 = icmp ule i32 %87, 67108863
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  store i64 5, i64* %6, align 8
  %90 = load i32, i32* %4, align 4
  %91 = lshr i32 %90, 24
  %92 = and i32 %91, 3
  %93 = or i32 %92, 248
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %4, align 4
  %98 = lshr i32 %97, 18
  %99 = and i32 %98, 63
  %100 = or i32 %99, 128
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %4, align 4
  %105 = lshr i32 %104, 12
  %106 = and i32 %105, 63
  %107 = or i32 %106, 128
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %4, align 4
  %112 = lshr i32 %111, 6
  %113 = and i32 %112, 63
  %114 = or i32 %113, 128
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  store i8 %115, i8* %117, align 1
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, 63
  %120 = or i32 %119, 128
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  store i8 %121, i8* %123, align 1
  br label %171

124:                                              ; preds = %86
  %125 = load i32, i32* %4, align 4
  %126 = icmp ule i32 %125, 2147483647
  br i1 %126, label %127, label %169

127:                                              ; preds = %124
  store i64 6, i64* %6, align 8
  %128 = load i32, i32* %4, align 4
  %129 = lshr i32 %128, 30
  %130 = and i32 %129, 1
  %131 = or i32 %130, 252
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 %132, i8* %134, align 1
  %135 = load i32, i32* %4, align 4
  %136 = lshr i32 %135, 24
  %137 = and i32 %136, 63
  %138 = or i32 %137, 128
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %139, i8* %141, align 1
  %142 = load i32, i32* %4, align 4
  %143 = lshr i32 %142, 18
  %144 = and i32 %143, 63
  %145 = or i32 %144, 128
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  store i8 %146, i8* %148, align 1
  %149 = load i32, i32* %4, align 4
  %150 = lshr i32 %149, 12
  %151 = and i32 %150, 63
  %152 = or i32 %151, 128
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  store i8 %153, i8* %155, align 1
  %156 = load i32, i32* %4, align 4
  %157 = lshr i32 %156, 6
  %158 = and i32 %157, 63
  %159 = or i32 %158, 128
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 4
  store i8 %160, i8* %162, align 1
  %163 = load i32, i32* %4, align 4
  %164 = and i32 %163, 63
  %165 = or i32 %164, 128
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 5
  store i8 %166, i8* %168, align 1
  br label %170

169:                                              ; preds = %124
  store i64 0, i64* %3, align 8
  br label %180

170:                                              ; preds = %127
  br label %171

171:                                              ; preds = %170, %89
  br label %172

172:                                              ; preds = %171, %58
  br label %173

173:                                              ; preds = %172, %34
  br label %174

174:                                              ; preds = %173, %17
  br label %175

175:                                              ; preds = %174, %9
  %176 = load i8*, i8** %5, align 8
  %177 = load i64, i64* %6, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8 0, i8* %178, align 1
  %179 = load i64, i64* %6, align 8
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %175, %169
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
