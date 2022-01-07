; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i64, i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_INACTIVE = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i32 0, align 4
@DTRACEOPT_CPU = common dso_local global i64 0, align 8
@DTRACEOPT_SPECSIZE = common dso_local global i32 0, align 4
@DTRACEBUF_NOSWITCH = common dso_local global i32 0, align 4
@DTRACEOPT_BUFSIZE = common dso_local global i32 0, align 4
@DTRACEOPT_BUFPOLICY = common dso_local global i64 0, align 8
@DTRACEOPT_BUFPOLICY_RING = common dso_local global i32 0, align 4
@DTRACEBUF_RING = common dso_local global i32 0, align 4
@DTRACEOPT_BUFPOLICY_FILL = common dso_local global i32 0, align 4
@DTRACEBUF_FILL = common dso_local global i32 0, align 4
@DTRACEBUF_INACTIVE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @dtrace_state_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_buffer(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %14, align 4
  %18 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 @MUTEX_HELD(i32* @cpu_lock)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DTRACEOPT_MAX, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dtrace_anon, i32 0, i32 0), align 8
  %35 = icmp eq %struct.TYPE_4__* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ false, %32 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi i1 [ true, %3 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %44
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %44
  store i32 0, i32* %4, align 4
  br label %196

63:                                               ; preds = %55
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* @DTRACEOPT_CPU, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* @DTRACEOPT_CPU, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DTRACEOPT_SPECSIZE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @DTRACEBUF_NOSWITCH, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DTRACEOPT_BUFSIZE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DTRACEOPT_BUFPOLICY_RING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @DTRACEBUF_RING, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DTRACEOPT_BUFPOLICY_FILL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @DTRACEBUF_FILL, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dtrace_anon, i32 0, i32 0), align 8
  %112 = icmp ne %struct.TYPE_4__* %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113, %109
  %120 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %83
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %190, %124
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp uge i64 %132, 4
  br i1 %133, label %134, label %194

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, 3
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = and i64 %141, 3
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %139, %134
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @E2BIG, align 4
  store i32 %154, i32* %4, align 4
  br label %196

155:                                              ; preds = %147
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @dtrace_buffer_alloc(i32* %156, i32 %157, i32 %158, i32 %159, i32* %13)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %155
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %4, align 4
  br label %196

171:                                              ; preds = %155
  %172 = load i32*, i32** %8, align 8
  %173 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DTRACEOPT_BUFRESIZE_MANUAL, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %4, align 4
  br label %196

180:                                              ; preds = %171
  store i32 2, i32* %14, align 4
  br label %181

181:                                              ; preds = %186, %180
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %14, align 4
  %188 = shl i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %181

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sdiv i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %130

194:                                              ; preds = %130
  %195 = load i32, i32* @ENOMEM, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %178, %164, %153, %62
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @dtrace_buffer_alloc(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
