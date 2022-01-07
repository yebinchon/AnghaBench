; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_refill.c___srefill.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_refill.c___srefill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_10__, i32*, i32*, i64, i64 }
%struct.TYPE_10__ = type { i32, i32* }

@__sdidinit = common dso_local global i32 0, align 4
@__SEOF = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@__SRD = common dso_local global i32 0, align 4
@__SRW = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@__SWR = common dso_local global i32 0, align 4
@__SLBF = common dso_local global i32 0, align 4
@__SNBF = common dso_local global i32 0, align 4
@__SIGN = common dso_local global i32 0, align 4
@lflush = common dso_local global i32 0, align 4
@__SMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__srefill(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load i32, i32* @__sdidinit, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @__sinit()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i32 @ORIENT(%struct.TYPE_11__* %9, i32 -1)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @__SEOF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = load i32, i32* @EOF, align 4
  store i32 %20, i32* %2, align 4
  br label %192

21:                                               ; preds = %8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @__SRD, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @__SRW, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @EBADF, align 4
  store i32 %36, i32* @errno, align 4
  %37 = load i32, i32* @__SERR, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @EOF, align 4
  store i32 %42, i32* %2, align 4
  br label %192

43:                                               ; preds = %28
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @__SWR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i64 @__sflush(%struct.TYPE_11__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EOF, align 4
  store i32 %55, i32* %2, align 4
  br label %192

56:                                               ; preds = %50
  %57 = load i32, i32* @__SWR, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %56, %43
  %68 = load i32, i32* @__SRD, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %94

73:                                               ; preds = %21
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call i64 @HASUB(%struct.TYPE_11__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = call i32 @FREEUB(%struct.TYPE_11__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = icmp ne i64 %82, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  store i32 0, i32* %2, align 4
  br label %192

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = call i32 @__smakebuf(%struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @__SLBF, align 4
  %108 = load i32, i32* @__SNBF, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %141

112:                                              ; preds = %103
  %113 = load i32, i32* @__SIGN, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* @lflush, align 4
  %119 = call i32 @_fwalk(i32 %118)
  %120 = load i32, i32* @__SIGN, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @__SLBF, align 4
  %130 = load i32, i32* @__SWR, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = load i32, i32* @__SLBF, align 4
  %134 = load i32, i32* @__SWR, align 4
  %135 = or i32 %133, %134
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %112
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = call i64 @__sflush(%struct.TYPE_11__* %138)
  br label %140

140:                                              ; preds = %137, %112
  br label %141

141:                                              ; preds = %140, %103
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = bitcast i32* %151 to i8*
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @_sread(%struct.TYPE_11__* %148, i8* %152, i32 %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* @__SMOD, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %141
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @__SEOF, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %189

181:                                              ; preds = %170
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @__SERR, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %181, %175
  %190 = load i32, i32* @EOF, align 4
  store i32 %190, i32* %2, align 4
  br label %192

191:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %189, %86, %54, %35, %19
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @__sinit(...) #1

declare dso_local i32 @ORIENT(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @__sflush(%struct.TYPE_11__*) #1

declare dso_local i64 @HASUB(%struct.TYPE_11__*) #1

declare dso_local i32 @FREEUB(%struct.TYPE_11__*) #1

declare dso_local i32 @__smakebuf(%struct.TYPE_11__*) #1

declare dso_local i32 @_fwalk(i32) #1

declare dso_local i64 @_sread(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
