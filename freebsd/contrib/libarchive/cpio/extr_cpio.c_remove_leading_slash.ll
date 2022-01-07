; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_remove_leading_slash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_remove_leading_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @remove_leading_slash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @remove_leading_slash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 47
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 92
  br i1 %14, label %15, label %112

15:                                               ; preds = %9, %1
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %112

27:                                               ; preds = %21, %15
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 63
  br i1 %38, label %39, label %112

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %112

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 63
  br i1 %56, label %57, label %108

57:                                               ; preds = %51
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 85
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 117
  br i1 %68, label %69, label %108

69:                                               ; preds = %63, %57
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 78
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 110
  br i1 %80, label %81, label %108

81:                                               ; preds = %75, %69
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 6
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 67
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 6
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 99
  br i1 %92, label %93, label %108

93:                                               ; preds = %87, %81
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %2, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 7
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 92
  br i1 %104, label %105, label %108

105:                                              ; preds = %99, %93
  %106 = load i8*, i8** %2, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %2, align 8
  br label %111

108:                                              ; preds = %99, %87, %75, %63, %51
  %109 = load i8*, i8** %2, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %110, i8** %2, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %45, %33, %21, %9
  br label %113

113:                                              ; preds = %194, %112
  %114 = load i8*, i8** %2, align 8
  store i8* %114, i8** %3, align 8
  %115 = load i8*, i8** %2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 97
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i8*, i8** %2, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 122
  br i1 %125, label %138, label %126

126:                                              ; preds = %120, %113
  %127 = load i8*, i8** %2, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sge i32 %130, 65
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load i8*, i8** %2, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 90
  br i1 %137, label %138, label %147

138:                                              ; preds = %132, %120
  %139 = load i8*, i8** %2, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 58
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i8*, i8** %2, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %146, i8** %2, align 8
  br label %147

147:                                              ; preds = %144, %138, %132, %126
  br label %148

148:                                              ; preds = %192, %147
  %149 = load i8*, i8** %2, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 47
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load i8*, i8** %2, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 92
  br label %160

160:                                              ; preds = %154, %148
  %161 = phi i1 [ true, %148 ], [ %159, %154 ]
  br i1 %161, label %162, label %193

162:                                              ; preds = %160
  %163 = load i8*, i8** %2, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 46
  br i1 %167, label %168, label %189

168:                                              ; preds = %162
  %169 = load i8*, i8** %2, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 46
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = load i8*, i8** %2, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 3
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 47
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load i8*, i8** %2, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 3
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 92
  br i1 %185, label %186, label %189

186:                                              ; preds = %180, %174
  %187 = load i8*, i8** %2, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  store i8* %188, i8** %2, align 8
  br label %192

189:                                              ; preds = %180, %168, %162
  %190 = load i8*, i8** %2, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %2, align 8
  br label %192

192:                                              ; preds = %189, %186
  br label %148

193:                                              ; preds = %160
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %3, align 8
  %196 = load i8*, i8** %2, align 8
  %197 = icmp ne i8* %195, %196
  br i1 %197, label %113, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %2, align 8
  ret i8* %199
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
