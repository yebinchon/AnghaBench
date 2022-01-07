; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_decode_bitstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_decode_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\\[x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%1x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*)* @decode_bitstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bitstring(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 255
  store i32 %21, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 256, i32* %12, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 3
  %27 = sdiv i32 %26, 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 99
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 9
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 2, i32 1
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i32 [ 3, %30 ], [ %35, %31 ]
  %38 = sext i32 %37 to i64
  %39 = add i64 6, %38
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8*, i8** %7, align 8
  %49 = icmp uge i8* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %165

51:                                               ; preds = %36
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %165

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %6, align 8
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %85, %59
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 7
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 255
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @SPRINTF(i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %165

80:                                               ; preds = %68
  %81 = load i32, i32* %14, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 8
  store i32 %87, i32* %11, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %8, align 8
  br label %65

90:                                               ; preds = %65
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 4
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  %96 = load i8, i8* %94, align 1
  store i8 %96, i8* %10, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %10, align 1
  %99 = sext i8 %98 to i32
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 8, %100
  %102 = shl i32 255, %101
  %103 = and i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @SPRINTF(i8* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %165

110:                                              ; preds = %93
  %111 = load i32, i32* %14, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %6, align 8
  br label %143

115:                                              ; preds = %90
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  %121 = load i8, i8* %119, align 1
  store i8 %121, i8* %10, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %10, align 1
  %124 = sext i8 %123 to i32
  %125 = ashr i32 %124, 4
  %126 = and i32 %125, 15
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 4, %127
  %129 = shl i32 15, %128
  %130 = and i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @SPRINTF(i8* %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %165

137:                                              ; preds = %118
  %138 = load i32, i32* %14, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %6, align 8
  br label %142

142:                                              ; preds = %137, %115
  br label %143

143:                                              ; preds = %142, %110
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @SPRINTF(i8* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %165

152:                                              ; preds = %143
  %153 = load i32, i32* %14, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = load i8**, i8*** %5, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %152, %151, %136, %109, %79, %58, %50
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @SPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
