; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_parseint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_parseint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@parseint.basefix = internal constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16
@SIGNOK = common dso_local global i32 0, align 4
@NDIGITS = common dso_local global i32 0, align 4
@NZDIGITS = common dso_local global i32 0, align 4
@PFXOK = common dso_local global i32 0, align 4
@HAVESIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32, i32)* @parseint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseint(%struct.TYPE_5__* %0, i8* noalias %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @SIGNOK, align 4
  %15 = load i32, i32* @NDIGITS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NZDIGITS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %11, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %12, align 8
  br label %22

22:                                               ; preds = %169, %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %172

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  switch i32 %30, label %146 [
    i32 48, label %31
    i32 49, label %62
    i32 50, label %62
    i32 51, label %62
    i32 52, label %62
    i32 53, label %62
    i32 54, label %62
    i32 55, label %62
    i32 56, label %76
    i32 57, label %76
    i32 65, label %94
    i32 66, label %94
    i32 67, label %94
    i32 68, label %94
    i32 69, label %94
    i32 70, label %94
    i32 97, label %94
    i32 98, label %94
    i32 99, label %94
    i32 100, label %94
    i32 101, label %94
    i32 102, label %94
    i32 43, label %107
    i32 45, label %107
    i32 120, label %121
    i32 88, label %121
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  store i32 8, i32* %10, align 4
  %35 = load i32, i32* @PFXOK, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @NZDIGITS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* @SIGNOK, align 4
  %45 = load i32, i32* @NZDIGITS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @NDIGITS, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %61

52:                                               ; preds = %38
  %53 = load i32, i32* @SIGNOK, align 4
  %54 = load i32, i32* @PFXOK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NDIGITS, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %52, %43
  br label %147

62:                                               ; preds = %25, %25, %25, %25, %25, %25, %25
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [17 x i16], [17 x i16]* @parseint.basefix, i64 0, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @SIGNOK, align 4
  %69 = load i32, i32* @PFXOK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NDIGITS, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %147

76:                                               ; preds = %25, %25
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [17 x i16], [17 x i16]* @parseint.basefix, i64 0, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sle i32 %82, 8
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %146

85:                                               ; preds = %76
  %86 = load i32, i32* @SIGNOK, align 4
  %87 = load i32, i32* @PFXOK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @NDIGITS, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %147

94:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %95 = load i32, i32* %10, align 4
  %96 = icmp sle i32 %95, 10
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %146

98:                                               ; preds = %94
  %99 = load i32, i32* @SIGNOK, align 4
  %100 = load i32, i32* @PFXOK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @NDIGITS, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %147

107:                                              ; preds = %25, %25
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @SIGNOK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i32, i32* @SIGNOK, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @HAVESIGN, align 4
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %147

120:                                              ; preds = %107
  br label %146

121:                                              ; preds = %25, %25
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @PFXOK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @HAVESIGN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %129, i64 %137
  %139 = icmp eq i8* %127, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %126
  store i32 16, i32* %10, align 4
  %141 = load i32, i32* @PFXOK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %147

145:                                              ; preds = %126, %121
  br label %146

146:                                              ; preds = %25, %145, %120, %97, %84
  br label %172

147:                                              ; preds = %140, %112, %98, %85, %62, %61
  %148 = load i32, i32* %13, align 4
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %12, align 8
  store i8 %149, i8* %150, align 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, -1
  store i64 %155, i64* %153, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %147
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %159, align 8
  br label %168

162:                                              ; preds = %147
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = call i64 @__srefill(%struct.TYPE_5__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %172

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %157
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %9, align 4
  br label %22

172:                                              ; preds = %166, %146, %22
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @NDIGITS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load i8*, i8** %12, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = icmp ugt i8* %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 -1
  store i8* %183, i8** %12, align 8
  %184 = bitcast i8* %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = call i32 @__ungetc(i32 %185, %struct.TYPE_5__* %186)
  br label %188

188:                                              ; preds = %181, %177
  store i32 0, i32* %6, align 4
  br label %212

189:                                              ; preds = %172
  %190 = load i8*, i8** %12, align 8
  %191 = bitcast i8* %190 to i32*
  %192 = getelementptr inbounds i32, i32* %191, i64 -1
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp eq i32 %194, 120
  br i1 %195, label %199, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 88
  br i1 %198, label %199, label %205

199:                                              ; preds = %196, %189
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %204 = call i32 @__ungetc(i32 %202, %struct.TYPE_5__* %203)
  br label %205

205:                                              ; preds = %199, %196
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %205, %188
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i64 @__srefill(%struct.TYPE_5__*) #1

declare dso_local i32 @__ungetc(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
