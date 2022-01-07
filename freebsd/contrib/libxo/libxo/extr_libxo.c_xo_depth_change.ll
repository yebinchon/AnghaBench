; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_depth_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_depth_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i32 }

@XO_STYLE_HTML = common dso_local global i64 0, align 8
@XO_STYLE_TEXT = common dso_local global i64 0, align 8
@XOF_DTRT = common dso_local global i32 0, align 4
@XSF_DTRT = common dso_local global i32 0, align 4
@XO_FAILURE_NAME = common dso_local global i8* null, align 8
@XOF_IGNORE_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"close with empty stack: '%s'\00", align 1
@XOF_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"incorrect close: '%s' .vs. '%s'\00", align 1
@XSF_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"list close on list confict: '%s'\00", align 1
@XSF_INSTANCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"list close on instance confict: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i32, i32, i32, i32)* @xo_depth_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_depth_change(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = call i64 @xo_style(%struct.TYPE_10__* %16)
  %18 = load i64, i64* @XO_STYLE_HTML, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %6
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = call i64 @xo_style(%struct.TYPE_10__* %21)
  %23 = load i64, i64* @XO_STYLE_TEXT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %6
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = load i32, i32* @XOF_DTRT, align 4
  %29 = call i64 @XOF_ISSET(%struct.TYPE_10__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @XSF_DTRT, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i64 @xo_depth_check(%struct.TYPE_10__* %39, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %188

48:                                               ; preds = %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %57
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = call i32 @xo_stack_set_flags(%struct.TYPE_10__* %65)
  %67 = load i8*, i8** %8, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %48
  %70 = load i8*, i8** @XO_FAILURE_NAME, align 8
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %69, %48
  %72 = load i8*, i8** %8, align 8
  %73 = call i8* @xo_strndup(i8* %72, i32 -1)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  br label %177

76:                                               ; preds = %35
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = load i32, i32* @XOF_IGNORE_CLOSE, align 4
  %84 = call i64 @XOF_ISSET(%struct.TYPE_10__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @xo_failure(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %81
  br label %188

91:                                               ; preds = %76
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %98
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %14, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = load i32, i32* @XOF_WARN, align 4
  %102 = call i64 @XOF_ISSET(%struct.TYPE_10__* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %91
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %15, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @xo_streq(i8* %114, i8* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @xo_failure(%struct.TYPE_10__* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %120, i8* %121)
  br label %188

123:                                              ; preds = %113, %110, %104
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @XSF_LIST, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @XSF_LIST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @xo_failure(%struct.TYPE_10__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %188

137:                                              ; preds = %123
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @XSF_INSTANCE, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @XSF_INSTANCE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %137
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 (%struct.TYPE_10__*, i8*, i8*, ...) @xo_failure(%struct.TYPE_10__* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  br label %188

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %91
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @xo_free(i8* %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  store i8* null, i8** %163, align 8
  br label %164

164:                                              ; preds = %157, %152
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @xo_free(i8* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i8* null, i8** %175, align 8
  br label %176

176:                                              ; preds = %169, %164
  br label %177

177:                                              ; preds = %176, %71
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %177, %147, %133, %118, %90, %47
  ret void
}

declare dso_local i64 @xo_style(%struct.TYPE_10__*) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @xo_depth_check(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xo_stack_set_flags(%struct.TYPE_10__*) #1

declare dso_local i8* @xo_strndup(i8*, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_10__*, i8*, i8*, ...) #1

declare dso_local i32 @xo_streq(i8*, i8*) #1

declare dso_local i32 @xo_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
