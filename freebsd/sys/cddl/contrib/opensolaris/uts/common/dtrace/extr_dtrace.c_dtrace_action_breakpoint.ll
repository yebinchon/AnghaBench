; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_action_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_action_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@DTRACE_FULLNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dtrace: breakpoint action at probe \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" (ecb \00", align 1
@NBBY = common dso_local global i32 0, align 4
@dtrace_destructive_disallow = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@KDB_WHY_DTRACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"breakpoint action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @dtrace_action_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_action_breakpoint(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @DTRACE_FULLNAMELEN, align 4
  %22 = add nsw i32 %21, 80
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %26 = load i32, i32* @NBBY, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = shl i32 15, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = ptrtoint %struct.TYPE_7__* %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* @NBBY, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %40 = load i64, i64* @dtrace_destructive_disallow, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  br label %202

43:                                               ; preds = %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  br label %48

48:                                               ; preds = %53, %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %25, i64 %59
  store i8 %56, i8* %60, align 1
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %77, %61
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %25, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %25, i64 %83
  store i8 58, i8* %84, align 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %100, %80
  %89 = load i8*, i8** %7, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %25, i64 %98
  store i8 %95, i8* %99, align 1
  br label %100

100:                                              ; preds = %93
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  br label %88

103:                                              ; preds = %88
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %25, i64 %106
  store i8 58, i8* %107, align 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %7, align 8
  br label %111

111:                                              ; preds = %123, %103
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %25, i64 %121
  store i8 %118, i8* %122, align 1
  br label %123

123:                                              ; preds = %116
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  br label %111

126:                                              ; preds = %111
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %25, i64 %129
  store i8 58, i8* %130, align 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %7, align 8
  br label %134

134:                                              ; preds = %146, %126
  %135 = load i8*, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i8*, i8** %7, align 8
  %141 = load i8, i8* %140, align 1
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %25, i64 %144
  store i8 %141, i8* %145, align 1
  br label %146

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  br label %134

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %155, %149
  %151 = load i8*, i8** %9, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  %158 = load i8, i8* %156, align 1
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %25, i64 %161
  store i8 %158, i8* %162, align 1
  br label %150

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %189, %163
  %165 = load i32, i32* %12, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = shl i64 15, %169
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = shl i64 1, %173
  %175 = icmp uge i64 %171, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %167
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* %10, align 8
  %179 = and i64 %177, %178
  %180 = load i32, i32* %12, align 4
  %181 = zext i32 %180 to i64
  %182 = lshr i64 %179, %181
  %183 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.2, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %25, i64 %187
  store i8 %184, i8* %188, align 1
  br label %189

189:                                              ; preds = %176, %167
  %190 = load i32, i32* %12, align 4
  %191 = sub nsw i32 %190, 4
  store i32 %191, i32* %12, align 4
  br label %164

192:                                              ; preds = %164
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %25, i64 %195
  store i8 41, i8* %196, align 1
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %25, i64 %198
  store i8 0, i8* %199, align 1
  %200 = load i32, i32* @KDB_WHY_DTRACE, align 4
  %201 = call i32 @kdb_enter(i32 %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %192, %42
  %203 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %14, align 4
  switch i32 %204, label %206 [
    i32 0, label %205
    i32 1, label %205
  ]

205:                                              ; preds = %202, %202
  ret void

206:                                              ; preds = %202
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @kdb_enter(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
