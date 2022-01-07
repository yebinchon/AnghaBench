; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_make_huffman_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_make_huffman_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman = type { i32*, i32, i32, i8*, i32, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman*)* @lzx_make_huffman_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_make_huffman_table(%struct.huffman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.huffman*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [17 x i32], align 16
  %7 = alloca [17 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.huffman* %0, %struct.huffman** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  store i32 32768, i32* %12, align 4
  br label %18

18:                                               ; preds = %52, %1
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 16
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load %struct.huffman*, %struct.huffman** %3, align 8
  %31 = getelementptr inbounds %struct.huffman, %struct.huffman* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.huffman*, %struct.huffman** %3, align 8
  %40 = getelementptr inbounds %struct.huffman, %struct.huffman* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 65535
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.huffman*, %struct.huffman** %3, align 8
  %64 = getelementptr inbounds %struct.huffman, %struct.huffman* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %57
  store i32 0, i32* %2, align 4
  br label %177

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.huffman*, %struct.huffman** %3, align 8
  %71 = getelementptr inbounds %struct.huffman, %struct.huffman* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 16, %75
  store i32 %76, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %94, %74
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.huffman*, %struct.huffman** %3, align 8
  %100 = getelementptr inbounds %struct.huffman, %struct.huffman* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 1, %101
  store i32 %102, i32* %11, align 4
  %103 = load %struct.huffman*, %struct.huffman** %3, align 8
  %104 = getelementptr inbounds %struct.huffman, %struct.huffman* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  store i64* %105, i64** %4, align 8
  %106 = load %struct.huffman*, %struct.huffman** %3, align 8
  %107 = getelementptr inbounds %struct.huffman, %struct.huffman* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %5, align 8
  %109 = load %struct.huffman*, %struct.huffman** %3, align 8
  %110 = getelementptr inbounds %struct.huffman, %struct.huffman* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %13, align 4
  %112 = load %struct.huffman*, %struct.huffman** %3, align 8
  %113 = getelementptr inbounds %struct.huffman, %struct.huffman* %112, i32 0, i32 5
  store i64 0, i64* %113, align 8
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %173, %98
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %176

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %173

127:                                              ; preds = %118
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %177

138:                                              ; preds = %127
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %177

156:                                              ; preds = %138
  %157 = load i64*, i64** %4, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64* %160, i64** %15, align 8
  br label %161

161:                                              ; preds = %165, %156
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %17, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64*, i64** %15, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 %167, i64* %171, align 8
  br label %161

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %126
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %114

176:                                              ; preds = %114
  store i32 1, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %155, %137, %67
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
