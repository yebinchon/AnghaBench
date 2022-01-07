; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_setvbuf.c_setvbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_setvbuf.c_setvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i64, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@_IONBF = common dso_local global i32 0, align 4
@_IOFBF = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__SMBF = common dso_local global i32 0, align 4
@__SLBF = common dso_local global i32 0, align 4
@__SNBF = common dso_local global i32 0, align 4
@__SOPT = common dso_local global i32 0, align 4
@__SOFF = common dso_local global i32 0, align 4
@__SNPT = common dso_local global i32 0, align 4
@__SEOF = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@_cleanup = common dso_local global i32 0, align 4
@__cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setvbuf(%struct.TYPE_10__* noalias %0, i8* noalias %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @_IONBF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @_IOFBF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @_IOLBF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @EOF, align 4
  store i32 %30, i32* %5, align 4
  br label %199

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__* %33)
  store i32 0, i32* %10, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @__sflush(%struct.TYPE_10__* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = call i64 @HASUB(%struct.TYPE_10__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = call i32 @FREEUB(%struct.TYPE_10__* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @__SMBF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %55, %43
  %62 = load i32, i32* @__SLBF, align 4
  %63 = load i32, i32* @__SNBF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @__SMBF, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @__SOPT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @__SOFF, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @__SNPT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @__SEOF, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @_IONBF, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %112

82:                                               ; preds = %61
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = call i32 @__swhatbuf(%struct.TYPE_10__* %83, i64* %12, i32* %13)
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i64, i64* %9, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  store i8* null, i8** %7, align 8
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i8*, i8** %7, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %135

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = call i8* @malloc(i64 %95)
  store i8* %96, i8** %7, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* @EOF, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i8* @malloc(i64 %105)
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i8*, i8** %7, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %81
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @__SNBF, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i8* %122, i8** %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 8
  br label %196

131:                                              ; preds = %108
  %132 = load i32, i32* @__SMBF, align 4
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %131, %91
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %12, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* @__SNPT, align 4
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @_IOLBF, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @__SLBF, align 4
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i8* %155, i8** %160, align 8
  %161 = load i64, i64* %9, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @__SWR, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %151
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @__SLBF, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 0, %181
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %190

186:                                              ; preds = %170
  %187 = load i64, i64* %9, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 3
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %175
  br label %194

191:                                              ; preds = %151
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  br label %194

194:                                              ; preds = %191, %190
  %195 = load i32, i32* @_cleanup, align 4
  store i32 %195, i32* @__cleanup, align 4
  br label %196

196:                                              ; preds = %194, %112
  %197 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %196, %29
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__*) #1

declare dso_local i32 @__sflush(%struct.TYPE_10__*) #1

declare dso_local i64 @HASUB(%struct.TYPE_10__*) #1

declare dso_local i32 @FREEUB(%struct.TYPE_10__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__swhatbuf(%struct.TYPE_10__*, i64*, i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
