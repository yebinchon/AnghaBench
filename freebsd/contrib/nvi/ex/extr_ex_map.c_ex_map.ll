; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_map.c_ex_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_map.c_ex_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i8*, i32 }

@E_C_FORCE = common dso_local global i32 0, align 4
@SEQ_INPUT = common dso_local global i64 0, align 8
@SEQ_COMMAND = common dso_local global i64 0, align 8
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"132|No input map entries\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"133|No command map entries\00", align 1
@SEQ_FUNCMAP = common dso_local global i32 0, align 4
@SEQ_USERDEF = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"134|The %s character may not be remapped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_map(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @E_C_FORCE, align 4
  %13 = call i64 @FL_ISSET(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @SEQ_INPUT, align 8
  br label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @SEQ_COMMAND, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %47 [
    i32 0, label %24
    i32 2, label %39
  ]

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @seq_dump(%struct.TYPE_15__* %25, i64 %26, i32 1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = load i32, i32* @M_INFO, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @SEQ_INPUT, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)
  %37 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @msgq(%struct.TYPE_15__* %30, i32 %31, i8* %36)
  br label %38

38:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %206

39:                                               ; preds = %19
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %42, i64 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %7, align 8
  br label %49

47:                                               ; preds = %19
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %39
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %152

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isdigit(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %152

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %70, %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isdigit(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  br label %64

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %153

80:                                               ; preds = %73
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %92, i64 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %99, i64 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* @SEQ_FUNCMAP, align 4
  %106 = load i32, i32* @SEQ_USERDEF, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @seq_set(%struct.TYPE_15__* %81, i32* null, i32 0, i8* %82, i32 %89, i8* %96, i32 %103, i64 %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %80
  store i32 1, i32* %3, align 4
  br label %206

111:                                              ; preds = %80
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)** %115, align 8
  %117 = icmp eq i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %150

119:                                              ; preds = %111
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_15__*, i64, i8*, i32, i8*, i32)** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %130, i64 0
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %137, i64 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %144, i64 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 %124(%struct.TYPE_15__* %125, i64 %126, i8* %127, i32 %134, i8* %141, i32 %148)
  br label %150

150:                                              ; preds = %119, %118
  %151 = phi i32 [ 0, %118 ], [ %149, %119 ]
  store i32 %151, i32* %3, align 4
  br label %206

152:                                              ; preds = %55, %49
  br label %153

153:                                              ; preds = %152, %79
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @SEQ_COMMAND, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %157
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = call i32 @KEY_VAL(%struct.TYPE_15__* %164, i8 signext %167)
  switch i32 %168, label %178 [
    i32 130, label %169
    i32 129, label %169
    i32 128, label %169
  ]

169:                                              ; preds = %163, %163, %163
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = load i32, i32* @M_ERR, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @KEY_NAME(%struct.TYPE_15__* %172, i8 signext %175)
  %177 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @msgq(%struct.TYPE_15__* %170, i32 %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  store i32 1, i32* %3, align 4
  br label %206

178:                                              ; preds = %163
  br label %179

179:                                              ; preds = %178, %157, %153
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %184, i64 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %191, i64 1
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %198, i64 1
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i64, i64* %6, align 8
  %204 = load i32, i32* @SEQ_USERDEF, align 4
  %205 = call i32 @seq_set(%struct.TYPE_15__* %180, i32* null, i32 0, i8* %181, i32 %188, i8* %195, i32 %202, i64 %203, i32 %204)
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %179, %169, %150, %110, %38
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32 @seq_dump(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_15__*, i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @seq_set(%struct.TYPE_15__*, i32*, i32, i8*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @KEY_VAL(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @KEY_NAME(%struct.TYPE_15__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
