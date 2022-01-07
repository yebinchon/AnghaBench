; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_vis.c_vis.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_vis.c_vis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIS_DQ = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_GLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vis(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i64 @isvisible(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @VIS_DQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @VIS_NOSLASH, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %17
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 92, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %25, %22
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %5, align 8
  br label %198

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @VIS_CSTYLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %101 [
    i32 10, label %47
    i32 13, label %52
    i32 8, label %57
    i32 7, label %62
    i32 11, label %67
    i32 9, label %72
    i32 12, label %77
    i32 32, label %82
    i32 0, label %87
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  store i8 92, i8* %48, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  store i8 110, i8* %50, align 1
  br label %195

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 92, i8* %53, align 1
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 114, i8* %55, align 1
  br label %195

57:                                               ; preds = %45
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  store i8 92, i8* %58, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  store i8 98, i8* %60, align 1
  br label %195

62:                                               ; preds = %45
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 92, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 97, i8* %65, align 1
  br label %195

67:                                               ; preds = %45
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 92, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 118, i8* %70, align 1
  br label %195

72:                                               ; preds = %45
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  store i8 92, i8* %73, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 116, i8* %75, align 1
  br label %195

77:                                               ; preds = %45
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 92, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 102, i8* %80, align 1
  br label %195

82:                                               ; preds = %45
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 92, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 115, i8* %85, align 1
  br label %195

87:                                               ; preds = %45
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 92, i8* %88, align 1
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  store i8 48, i8* %90, align 1
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @isoctal(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  store i8 48, i8* %96, align 1
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 48, i8* %98, align 1
  br label %100

100:                                              ; preds = %95, %87
  br label %195

101:                                              ; preds = %45
  br label %102

102:                                              ; preds = %101, %40
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 127
  %105 = icmp eq i32 %104, 32
  br i1 %105, label %128, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @VIS_OCTAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @VIS_GLOB, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 42
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 63
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 91
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 35
  br i1 %127, label %128, label %151

128:                                              ; preds = %125, %122, %119, %116, %106, %102
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  store i8 92, i8* %129, align 1
  %131 = load i32, i32* %7, align 4
  %132 = ashr i32 %131, 6
  %133 = and i32 %132, 7
  %134 = add nsw i32 %133, 48
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 3
  %140 = and i32 %139, 7
  %141 = add nsw i32 %140, 48
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %6, align 8
  store i8 %142, i8* %143, align 1
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, 7
  %147 = add nsw i32 %146, 48
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %6, align 8
  store i8 %148, i8* %149, align 1
  br label %195

151:                                              ; preds = %125, %111
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @VIS_NOSLASH, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  store i8 92, i8* %157, align 1
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, 128
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, 127
  store i32 %165, i32* %7, align 4
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %6, align 8
  store i8 77, i8* %166, align 1
  br label %168

168:                                              ; preds = %163, %159
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @iscntrl(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %168
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %6, align 8
  store i8 94, i8* %173, align 1
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 127
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %6, align 8
  store i8 63, i8* %178, align 1
  br label %186

180:                                              ; preds = %172
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 64
  %183 = trunc i32 %182 to i8
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %6, align 8
  store i8 %183, i8* %184, align 1
  br label %186

186:                                              ; preds = %180, %177
  br label %194

187:                                              ; preds = %168
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %6, align 8
  store i8 45, i8* %188, align 1
  %190 = load i32, i32* %7, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %6, align 8
  store i8 %191, i8* %192, align 1
  br label %194

194:                                              ; preds = %187, %186
  br label %195

195:                                              ; preds = %194, %128, %100, %82, %77, %72, %67, %62, %57, %52, %47
  %196 = load i8*, i8** %6, align 8
  store i8 0, i8* %196, align 1
  %197 = load i8*, i8** %6, align 8
  store i8* %197, i8** %5, align 8
  br label %198

198:                                              ; preds = %195, %33
  %199 = load i8*, i8** %5, align 8
  ret i8* %199
}

declare dso_local i64 @isvisible(i32, i32) #1

declare dso_local i32 @isoctal(i32) #1

declare dso_local i64 @iscntrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
