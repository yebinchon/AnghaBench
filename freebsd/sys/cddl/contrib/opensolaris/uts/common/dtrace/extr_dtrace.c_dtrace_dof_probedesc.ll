; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_probedesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_probedesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32 }

@DOF_SECT_PROBEDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid probe section\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bad alignment in probe description\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"truncated probe description\00", align 1
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"corrupt probe provider\00", align 1
@DTRACE_PROVNAMELEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"corrupt probe module\00", align 1
@DTRACE_MODNAMELEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"corrupt probe function\00", align 1
@DTRACE_FUNCNAMELEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"corrupt probe name\00", align 1
@DTRACE_NAMELEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*)* @dtrace_dof_probedesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @dtrace_dof_probedesc(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = ptrtoint %struct.TYPE_15__* %13 to i64
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DOF_SECT_PROBEDESC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 40
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

44:                                               ; preds = %32
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = inttoptr i64 %49 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_13__* @dtrace_dof_sect(%struct.TYPE_15__* %51, i32 %52, i32 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = icmp eq %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

60:                                               ; preds = %44
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

79:                                               ; preds = %60
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = inttoptr i64 %87 to i8*
  %89 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %90 = sub nsw i64 %89, 1
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %91, %94
  %96 = call i32 @MIN(i64 %90, i64 %95)
  %97 = call i32 @strncpy(i32 %82, i8* %88, i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp uge i64 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %79
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

108:                                              ; preds = %79
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  %117 = inttoptr i64 %116 to i8*
  %118 = load i64, i64* @DTRACE_MODNAMELEN, align 8
  %119 = sub nsw i64 %118, 1
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub i64 %120, %123
  %125 = call i32 @MIN(i64 %119, i64 %124)
  %126 = call i32 @strncpy(i32 %111, i8* %117, i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp uge i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %108
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

137:                                              ; preds = %108
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %11, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %141, %144
  %146 = inttoptr i64 %145 to i8*
  %147 = load i64, i64* @DTRACE_FUNCNAMELEN, align 8
  %148 = sub nsw i64 %147, 1
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %149, %152
  %154 = call i32 @MIN(i64 %148, i64 %153)
  %155 = call i32 @strncpy(i32 %140, i8* %146, i32 %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp uge i64 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %137
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = call i32 @dtrace_dof_error(%struct.TYPE_15__* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %186

166:                                              ; preds = %137
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %11, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %170, %173
  %175 = inttoptr i64 %174 to i8*
  %176 = load i64, i64* @DTRACE_NAMELEN, align 8
  %177 = sub nsw i64 %176, 1
  %178 = load i64, i64* %12, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %178, %181
  %183 = call i32 @MIN(i64 %177, i64 %182)
  %184 = call i32 @strncpy(i32 %169, i8* %175, i32 %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %4, align 8
  br label %186

186:                                              ; preds = %166, %163, %134, %105, %76, %59, %41, %29, %20
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %187
}

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_13__* @dtrace_dof_sect(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
