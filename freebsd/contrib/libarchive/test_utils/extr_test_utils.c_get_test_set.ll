; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_utils.c_get_test_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_utils.c_get_test_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_list_t = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_test_set(i32* %0, i32 %1, i8* %2, %struct.test_list_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.test_list_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.test_list_t* %3, %struct.test_list_t** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %5, align 4
  br label %180

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %144

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %144

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  store i8* %44, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %57, %43
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8*, i8** %13, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 57
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 10
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %13, align 8
  br label %45

68:                                               ; preds = %55
  %69 = load i8*, i8** %13, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %11, align 4
  br label %118

75:                                               ; preds = %68
  %76 = load i8*, i8** %13, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %80, label %116

80:                                               ; preds = %75
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %115

90:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i8*, i8** %13, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sge i32 %94, 48
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** %13, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i1 [ false, %91 ], [ %100, %96 ]
  br i1 %102, label %103, label %114

103:                                              ; preds = %101
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 10
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %13, align 8
  br label %91

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %87
  br label %117

116:                                              ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %180

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %73
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %121, %118
  store i32 -1, i32* %5, align 4
  br label %180

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %135, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %136, i32* %142, align 4
  br label %131

143:                                              ; preds = %131
  br label %172

144:                                              ; preds = %38, %33
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %168, %144
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = load %struct.test_list_t*, %struct.test_list_t** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.test_list_t, %struct.test_list_t* %150, i64 %152
  %154 = getelementptr inbounds %struct.test_list_t, %struct.test_list_t* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %14, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %14, align 8
  %158 = call i64 @test_filter(i8* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %149
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %160, %149
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %145

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171, %143
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %178

176:                                              ; preds = %172
  %177 = load i32, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i32 [ -1, %175 ], [ %177, %176 ]
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %129, %116, %31
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @test_filter(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
