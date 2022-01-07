; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_slurp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.proc = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DOF_SECT_PROVIDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"helper\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ustack\00", align 1
@DTRACE_HELPER_ACTION_USTACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"unmatched helpers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.proc*)* @dtrace_helper_slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_slurp(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %22 = ptrtoint %struct.TYPE_31__* %21 to i64
  store i64 %22, i64* %17, align 8
  %23 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %8, align 8
  %28 = icmp eq %struct.TYPE_26__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.proc*, %struct.proc** %7, align 8
  %31 = call %struct.TYPE_26__* @dtrace_helpers_create(%struct.proc* %30)
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %8, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @B_FALSE, align 4
  %44 = call i32 @dtrace_dof_slurp(%struct.TYPE_31__* %35, i32* %36, i32* null, %struct.TYPE_27__** %10, i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %48 = call i32 @dtrace_dof_destroy(%struct.TYPE_31__* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %4, align 4
  br label %202

50:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %90, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = load i64, i64* %17, align 8
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add i64 %62, %68
  %70 = inttoptr i64 %69 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %70, %struct.TYPE_29__** %18, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DOF_SECT_PROVIDER, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %90

77:                                               ; preds = %57
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %80 = call i64 @dtrace_helper_provider_validate(%struct.TYPE_31__* %78, %struct.TYPE_29__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %84 = call i32 @dtrace_enabling_destroy(%struct.TYPE_27__* %83)
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %86 = call i32 @dtrace_dof_destroy(%struct.TYPE_31__* %85)
  store i32 -1, i32* %4, align 4
  br label %202

87:                                               ; preds = %77
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %51

93:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %149, %93
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %94
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %103, i64 %105
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %106, align 8
  store %struct.TYPE_28__* %107, %struct.TYPE_28__** %19, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %20, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @strcmp(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %149

116:                                              ; preds = %100
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @strcmp(i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %149

123:                                              ; preds = %116
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @strcmp(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %149

130:                                              ; preds = %123
  %131 = load i32, i32* @DTRACE_HELPER_ACTION_USTACK, align 4
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %134 = call i32 @dtrace_helper_action_add(i32 %131, %struct.TYPE_28__* %132, %struct.TYPE_26__* %133)
  store i32 %134, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dtrace_helper_destroygen(%struct.TYPE_26__* %137, i32 %140)
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %143 = call i32 @dtrace_enabling_destroy(%struct.TYPE_27__* %142)
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %145 = call i32 @dtrace_dof_destroy(%struct.TYPE_31__* %144)
  store i32 -1, i32* %4, align 4
  br label %202

146:                                              ; preds = %130
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %146, %129, %122, %115
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %94

152:                                              ; preds = %94
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %160 = call i32 @dtrace_dof_error(%struct.TYPE_31__* %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %152
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  store i32 %164, i32* %12, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = call i32 @dtrace_enabling_destroy(%struct.TYPE_27__* %166)
  %168 = load i32, i32* %15, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %161
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %177 = ptrtoint %struct.TYPE_31__* %176 to i64
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i64 @dtrace_helper_provider_add(%struct.TYPE_30__* %181, %struct.TYPE_26__* %182, i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %170
  %187 = call i32 @mutex_exit(i32* @dtrace_lock)
  %188 = load %struct.proc*, %struct.proc** %7, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %191 = call i32 @dtrace_helper_provider_register(%struct.proc* %188, %struct.TYPE_26__* %189, %struct.TYPE_30__* %190)
  %192 = call i32 @mutex_enter(i32* @dtrace_lock)
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %186, %170
  br label %194

194:                                              ; preds = %193, %161
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %199 = call i32 @dtrace_dof_destroy(%struct.TYPE_31__* %198)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %136, %82, %46
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_26__* @dtrace_helpers_create(%struct.proc*) #1

declare dso_local i32 @dtrace_dof_slurp(%struct.TYPE_31__*, i32*, i32*, %struct.TYPE_27__**, i32, i32, i32) #1

declare dso_local i32 @dtrace_dof_destroy(%struct.TYPE_31__*) #1

declare dso_local i64 @dtrace_helper_provider_validate(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_enabling_destroy(%struct.TYPE_27__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dtrace_helper_action_add(i32, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @dtrace_helper_destroygen(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_31__*, i8*) #1

declare dso_local i64 @dtrace_helper_provider_add(%struct.TYPE_30__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dtrace_helper_provider_register(%struct.proc*, %struct.TYPE_26__*, %struct.TYPE_30__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
