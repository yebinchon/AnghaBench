; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_parseint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_parseint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parseint.basefix = internal constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16
@SIGNOK = common dso_local global i32 0, align 4
@NDIGITS = common dso_local global i32 0, align 4
@NZDIGITS = common dso_local global i32 0, align 4
@PFXOK = common dso_local global i32 0, align 4
@HAVESIGN = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32)* @parseint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseint(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @SIGNOK, align 4
  %17 = load i32, i32* @NDIGITS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NZDIGITS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %14, align 8
  br label %24

24:                                               ; preds = %161, %6
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %164

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @__fgetwc(i32* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  switch i32 %31, label %147 [
    i32 48, label %32
    i32 49, label %63
    i32 50, label %63
    i32 51, label %63
    i32 52, label %63
    i32 53, label %63
    i32 54, label %63
    i32 55, label %63
    i32 56, label %77
    i32 57, label %77
    i32 65, label %95
    i32 66, label %95
    i32 67, label %95
    i32 68, label %95
    i32 69, label %95
    i32 70, label %95
    i32 97, label %95
    i32 98, label %95
    i32 99, label %95
    i32 100, label %95
    i32 101, label %95
    i32 102, label %95
    i32 43, label %108
    i32 45, label %108
    i32 120, label %122
    i32 88, label %122
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  store i32 8, i32* %11, align 4
  %36 = load i32, i32* @PFXOK, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @NZDIGITS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* @SIGNOK, align 4
  %46 = load i32, i32* @NZDIGITS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NDIGITS, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %62

53:                                               ; preds = %39
  %54 = load i32, i32* @SIGNOK, align 4
  %55 = load i32, i32* @PFXOK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NDIGITS, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %53, %44
  br label %157

63:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i16], [17 x i16]* @parseint.basefix, i64 0, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @SIGNOK, align 4
  %70 = load i32, i32* @PFXOK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NDIGITS, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %157

77:                                               ; preds = %27, %27
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [17 x i16], [17 x i16]* @parseint.basefix, i64 0, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %147

86:                                               ; preds = %77
  %87 = load i32, i32* @SIGNOK, align 4
  %88 = load i32, i32* @PFXOK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @NDIGITS, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %157

95:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %96 = load i32, i32* %11, align 4
  %97 = icmp sle i32 %96, 10
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %147

99:                                               ; preds = %95
  %100 = load i32, i32* @SIGNOK, align 4
  %101 = load i32, i32* @PFXOK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NDIGITS, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %157

108:                                              ; preds = %27, %27
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @SIGNOK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* @SIGNOK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* @HAVESIGN, align 4
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %157

121:                                              ; preds = %108
  br label %147

122:                                              ; preds = %27, %27
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @PFXOK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %122
  %128 = load i32*, i32** %14, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @HAVESIGN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %130, i64 %138
  %140 = icmp eq i32* %128, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  store i32 16, i32* %11, align 4
  %142 = load i32, i32* @PFXOK, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %12, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %157

146:                                              ; preds = %127, %122
  br label %147

147:                                              ; preds = %27, %146, %121, %98, %85
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @WEOF, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @__ungetwc(i32 %152, i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  br label %164

157:                                              ; preds = %141, %113, %99, %86, %63, %62
  %158 = load i32, i32* %15, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %14, align 8
  store i32 %158, i32* %159, align 4
  br label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %10, align 4
  br label %24

164:                                              ; preds = %156, %24
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @NDIGITS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load i32*, i32** %14, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = icmp ugt i32* %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 -1
  store i32* %175, i32** %14, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @__ungetwc(i32 %176, i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %169
  store i32 0, i32* %7, align 4
  br label %205

181:                                              ; preds = %164
  %182 = load i32*, i32** %14, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 -1
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp eq i32 %185, 120
  br i1 %186, label %190, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %15, align 4
  %189 = icmp eq i32 %188, 88
  br i1 %189, label %190, label %197

190:                                              ; preds = %187, %181
  %191 = load i32*, i32** %14, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 -1
  store i32* %192, i32** %14, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @__ungetwc(i32 %193, i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %187
  %198 = load i32*, i32** %14, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = ptrtoint i32* %198 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %197, %180
  %206 = load i32, i32* %7, align 4
  ret i32 %206
}

declare dso_local i32 @__fgetwc(i32*, i32) #1

declare dso_local i32 @__ungetwc(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
