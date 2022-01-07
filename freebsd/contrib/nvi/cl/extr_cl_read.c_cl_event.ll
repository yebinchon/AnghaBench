; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_read.c_cl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32* }
%struct.timeval = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EC_INTERRUPT = common dso_local global i32 0, align 4
@CL_SIGINT = common dso_local global i32 0, align 4
@E_INTERRUPT = common dso_local global i8* null, align 8
@E_TIMEOUT = common dso_local global i8* null, align 8
@CL_SIGHUP = common dso_local global i32 0, align 4
@CL_SIGTERM = common dso_local global i32 0, align 4
@CL_SIGWINCH = common dso_local global i32 0, align 4
@E_SIGHUP = common dso_local global i8* null, align 8
@E_SIGTERM = common dso_local global i8* null, align 8
@E_WRESIZE = common dso_local global i8* null, align 8
@EC_QUOTED = common dso_local global i32 0, align 4
@EC_RAW = common dso_local global i32 0, align 4
@E_STRING = common dso_local global i8* null, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"323|Invalid input. Truncated.\00", align 1
@E_EOF = common dso_local global i8* null, align 8
@E_ERR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_event(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_8__* @CLP(i32* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  br label %23

23:                                               ; preds = %211, %4
  %24 = load i32, i32* @EC_INTERRUPT, align 4
  %25 = call i64 @LF_ISSET(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = load i32, i32* @CL_SIGINT, align 4
  %30 = call i64 @F_ISSET(%struct.TYPE_8__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27, %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = load i32, i32* @CL_SIGINT, align 4
  %35 = call i64 @F_ISSET(%struct.TYPE_8__* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = load i32, i32* @CL_SIGINT, align 4
  %40 = call i32 @F_CLR(%struct.TYPE_8__* %38, i32 %39)
  %41 = load i8*, i8** @E_INTERRUPT, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %32
  %45 = load i8*, i8** @E_TIMEOUT, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  store i32 0, i32* %5, align 4
  br label %219

49:                                               ; preds = %27
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %51 = load i32, i32* @CL_SIGHUP, align 4
  %52 = load i32, i32* @CL_SIGTERM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CL_SIGWINCH, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @F_ISSET(%struct.TYPE_8__* %50, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %60 = load i32, i32* @CL_SIGHUP, align 4
  %61 = call i64 @F_ISSET(%struct.TYPE_8__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** @E_SIGHUP, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %5, align 4
  br label %219

67:                                               ; preds = %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %69 = load i32, i32* @CL_SIGTERM, align 4
  %70 = call i64 @F_ISSET(%struct.TYPE_8__* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8*, i8** @E_SIGTERM, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  store i32 0, i32* %5, align 4
  br label %219

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = load i32, i32* @CL_SIGWINCH, align 4
  %79 = call i64 @F_ISSET(%struct.TYPE_8__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = load i32, i32* @CL_SIGWINCH, align 4
  %84 = call i32 @F_CLR(%struct.TYPE_8__* %82, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @cl_ssize(i32* %85, i32 1, i64* %13, i64* %14, i32* %15)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 1, i32* %5, align 4
  br label %219

89:                                               ; preds = %81
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @cl_resize(i32* %93, i64 %94, i64 %95)
  %97 = load i8*, i8** @E_WRESIZE, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %5, align 4
  br label %219

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %76
  br label %102

102:                                              ; preds = %101, %49
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store %struct.timeval* null, %struct.timeval** %11, align 8
  br label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = sdiv i32 %107, 1000
  %109 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = srem i32 %110, 1000
  %112 = mul nsw i32 %111, 1000
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  store %struct.timeval* %10, %struct.timeval** %11, align 8
  br label %114

114:                                              ; preds = %106, %105
  br label %115

115:                                              ; preds = %189, %114
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @EC_QUOTED, align 4
  %118 = load i32, i32* @EC_RAW, align 4
  %119 = or i32 %117, %118
  %120 = call i64 @LF_ISSET(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SIZE(i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = load %struct.timeval*, %struct.timeval** %11, align 8
  %137 = call i32 @cl_read(i32* %116, i64 %120, i32 %127, i32 %135, i32* %16, %struct.timeval* %136)
  switch i32 %137, label %216 [
    i32 129, label %138
    i32 132, label %203
    i32 131, label %207
    i32 130, label %211
    i32 128, label %212
  ]

138:                                              ; preds = %115
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = load i32*, i32** %17, align 8
  %152 = load i64, i64* %18, align 8
  %153 = call i32 @INPUT2INT5(i32* %139, i32 %142, i32 %145, i32 %150, i32* %151, i64 %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32*, i32** %17, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  store i32* %154, i32** %156, align 8
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i8*, i8** @E_STRING, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %19, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %138
  %166 = load i32, i32* %19, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %20, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %173, %174
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @memmove(i32 %170, i32 %181, i32 %182)
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %18, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %165
  br label %115

190:                                              ; preds = %165
  br label %202

191:                                              ; preds = %138
  %192 = load i32, i32* %19, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  br label %201

197:                                              ; preds = %191
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* @M_ERR, align 4
  %200 = call i32 @msgq(i32* %198, i32 %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %194
  br label %202

202:                                              ; preds = %201, %190
  br label %218

203:                                              ; preds = %115
  %204 = load i8*, i8** @E_EOF, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %218

207:                                              ; preds = %115
  %208 = load i8*, i8** @E_ERR, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  br label %218

211:                                              ; preds = %115
  br label %23

212:                                              ; preds = %115
  %213 = load i8*, i8** @E_TIMEOUT, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  br label %218

216:                                              ; preds = %115
  %217 = call i32 (...) @abort() #3
  unreachable

218:                                              ; preds = %212, %207, %203, %202
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %218, %92, %88, %72, %63, %48
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_8__* @CLP(i32*) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @cl_ssize(i32*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @cl_resize(i32*, i64, i64) #1

declare dso_local i32 @cl_read(i32*, i64, i32, i32, i32*, %struct.timeval*) #1

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @INPUT2INT5(i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
