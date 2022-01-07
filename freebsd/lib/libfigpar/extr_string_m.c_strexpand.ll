; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_string_m.c_strexpand.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_string_m.c_strexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strexpand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %212, %18, %1
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %217

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 92
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %5, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %8

26:                                               ; preds = %13
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %188 [
    i32 97, label %31
    i32 98, label %33
    i32 102, label %35
    i32 110, label %37
    i32 114, label %39
    i32 116, label %41
    i32 118, label %43
    i32 120, label %45
    i32 48, label %106
  ]

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  store i8 7, i8* %32, align 1
  br label %212

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  store i8 8, i8* %34, align 1
  br label %212

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  store i8 12, i8* %36, align 1
  br label %212

37:                                               ; preds = %26
  %38 = load i8*, i8** %5, align 8
  store i8 10, i8* %38, align 1
  br label %212

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  store i8 13, i8* %40, align 1
  br label %212

41:                                               ; preds = %26
  %42 = load i8*, i8** %5, align 8
  store i8 9, i8* %42, align 1
  br label %212

43:                                               ; preds = %26
  %44 = load i8*, i8** %5, align 8
  store i8 11, i8* %44, align 1
  br label %212

45:                                               ; preds = %26
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @isxdigit(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %52
  %59 = phi i32 [ %56, %52 ], [ 0, %57 ]
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @isxdigit(i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  br label %78

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32 [ %76, %72 ], [ 0, %77 ]
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %80, i8* %81, align 1
  br label %82

82:                                               ; preds = %78, %58
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %84 = call i32 @strtoul(i8* %83, i32 0, i32 16)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %3, align 1
  %86 = load i8, i8* %3, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 48
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %82
  %95 = load i8, i8* %3, align 1
  %96 = sext i8 %95 to i32
  br label %102

97:                                               ; preds = %89
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi i32 [ %96, %94 ], [ %101, %97 ]
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %5, align 8
  store i8 %104, i8* %105, align 1
  br label %212

106:                                              ; preds = %26
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = call i32 @isdigit(i8 signext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp slt i32 %117, 56
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  br label %125

124:                                              ; preds = %113, %106
  br label %125

125:                                              ; preds = %124, %119
  %126 = phi i32 [ %123, %119 ], [ 0, %124 ]
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %127, i8* %128, align 1
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %125
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @isdigit(i8 signext %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp slt i32 %143, 56
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  br label %151

150:                                              ; preds = %139, %133
  br label %151

151:                                              ; preds = %150, %145
  %152 = phi i32 [ %149, %145 ], [ 0, %150 ]
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %153, i8* %154, align 1
  br label %155

155:                                              ; preds = %151, %125
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %155
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @isdigit(i8 signext %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp slt i32 %170, 56
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %4, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  br label %178

177:                                              ; preds = %166, %160
  br label %178

178:                                              ; preds = %177, %172
  %179 = phi i32 [ %176, %172 ], [ 0, %177 ]
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %180, i8* %181, align 1
  br label %182

182:                                              ; preds = %178, %155
  %183 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %184 = call i32 @strtoul(i8* %183, i32 0, i32 8)
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %3, align 1
  %186 = load i8, i8* %3, align 1
  %187 = load i8*, i8** %5, align 8
  store i8 %186, i8* %187, align 1
  br label %212

188:                                              ; preds = %26
  %189 = load i8*, i8** %4, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call i32 @isdigit(i8 signext %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %188
  %194 = load i8*, i8** %4, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp slt i32 %196, 56
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load i8*, i8** %4, align 8
  %200 = load i8, i8* %199, align 1
  %201 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %200, i8* %201, align 1
  %202 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %202, align 1
  %203 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %204 = call i32 @strtoul(i8* %203, i32 0, i32 8)
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %5, align 8
  store i8 %205, i8* %206, align 1
  br label %211

207:                                              ; preds = %193, %188
  %208 = load i8*, i8** %4, align 8
  %209 = load i8, i8* %208, align 1
  %210 = load i8*, i8** %5, align 8
  store i8 %209, i8* %210, align 1
  br label %211

211:                                              ; preds = %207, %198
  br label %212

212:                                              ; preds = %211, %182, %102, %43, %41, %39, %37, %35, %33, %31
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %5, align 8
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %4, align 8
  br label %8

217:                                              ; preds = %8
  ret void
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
