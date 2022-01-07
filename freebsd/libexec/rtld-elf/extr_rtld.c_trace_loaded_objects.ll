; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_trace_loaded_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_trace_loaded_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"TRACE_LOADED_OBJECTS_PROGNAME\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TRACE_LOADED_OBJECTS_FMT1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\09%o => %p (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"TRACE_LOADED_OBJECTS_FMT2\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09%o (%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"TRACE_LOADED_OBJECTS_ALL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@obj_main = common dso_local global %struct.TYPE_13__* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@next = common dso_local global i32 0, align 4
@sodp = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @trace_loaded_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_loaded_objects(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @_LD(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = call i8* @getenv(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

17:                                               ; preds = %16, %1
  %18 = call i32 @_LD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i8* @getenv(i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = call i32 @_LD(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i8* @getenv(i32 %23)
  store i8* %24, i8** %4, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = call i32 @_LD(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i8* @getenv(i32 %28)
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %176, %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %180

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %176

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rtld_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %42, %39
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %9, align 8
  br label %56

56:                                               ; preds = %171, %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %175

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %171

75:                                               ; preds = %71, %64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %11, align 8
  br label %86

85:                                               ; preds = %59
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i8*, i8** %3, align 8
  br label %105

103:                                              ; preds = %86
  %104 = load i8*, i8** %4, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i8* [ %102, %101 ], [ %104, %103 ]
  store i8* %106, i8** %5, align 8
  br label %107

107:                                              ; preds = %167, %132, %122, %115, %105
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %170

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  switch i32 %114, label %115 [
    i32 92, label %118
    i32 37, label %128
  ]

115:                                              ; preds = %113
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @rtld_putchar(i32 %116)
  br label %107

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  store i32 %121, i32* %8, align 4
  switch i32 %121, label %127 [
    i32 0, label %122
    i32 110, label %123
    i32 116, label %125
  ]

122:                                              ; preds = %118
  br label %107

123:                                              ; preds = %118
  %124 = call i32 @rtld_putchar(i32 10)
  br label %127

125:                                              ; preds = %118
  %126 = call i32 @rtld_putchar(i32 9)
  br label %127

127:                                              ; preds = %118, %125, %123
  br label %167

128:                                              ; preds = %113
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  store i32 %131, i32* %8, align 4
  switch i32 %131, label %134 [
    i32 0, label %132
    i32 37, label %133
    i32 65, label %137
    i32 97, label %140
    i32 111, label %145
    i32 112, label %148
    i32 120, label %151
  ]

132:                                              ; preds = %128
  br label %107

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %128, %133
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @rtld_putchar(i32 %135)
  br label %166

137:                                              ; preds = %128
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @rtld_putstr(i8* %138)
  br label %166

140:                                              ; preds = %128
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @obj_main, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @rtld_putstr(i8* %143)
  br label %166

145:                                              ; preds = %128
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @rtld_putstr(i8* %146)
  br label %166

148:                                              ; preds = %128
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @rtld_putstr(i8* %149)
  br label %166

151:                                              ; preds = %128
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = icmp ne %struct.TYPE_9__* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  br label %163

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %156
  %164 = phi i32 [ %161, %156 ], [ 0, %162 ]
  %165 = call i32 @rtld_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %148, %145, %140, %137, %134
  br label %167

167:                                              ; preds = %166, %127
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %5, align 8
  br label %107

170:                                              ; preds = %107
  br label %171

171:                                              ; preds = %170, %74
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  store %struct.TYPE_11__* %174, %struct.TYPE_11__** %9, align 8
  br label %56

175:                                              ; preds = %56
  br label %176

176:                                              ; preds = %175, %38
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %178 = load i32, i32* @next, align 4
  %179 = call %struct.TYPE_10__* @TAILQ_NEXT(%struct.TYPE_10__* %177, i32 %178)
  store %struct.TYPE_10__* %179, %struct.TYPE_10__** %2, align 8
  br label %30

180:                                              ; preds = %30
  ret void
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @_LD(i8*) #1

declare dso_local i32 @rtld_printf(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @rtld_putchar(i32) #1

declare dso_local i32 @rtld_putstr(i8*) #1

declare dso_local %struct.TYPE_10__* @TAILQ_NEXT(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
