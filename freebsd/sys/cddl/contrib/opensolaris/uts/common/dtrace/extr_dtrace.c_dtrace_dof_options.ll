; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64 }

@DOF_SECT_OPTDESC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad alignment in option description\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"zeroed option entry size\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bad option entry size\00", align 1
@DOF_SECIDX_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"non-zero option string\00", align 1
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"unset option\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"rejected option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @dtrace_dof_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dof_options(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %123, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %126

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = ptrtoint %struct.TYPE_8__* %19 to i64
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = add i64 %24, %30
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %11, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DOF_SECT_OPTDESC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %123

39:                                               ; preds = %18
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %127

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 24
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %127

66:                                               ; preds = %58
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %117, %66
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = ptrtoint %struct.TYPE_8__* %74 to i64
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %75, %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %79, %80
  %82 = inttoptr i64 %81 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %10, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DOF_SECIDX_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %73
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %3, align 4
  br label %127

92:                                               ; preds = %73
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %3, align 4
  br label %127

102:                                              ; preds = %92
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dtrace_state_option(i32* %103, i32 %106, i64 %109)
  store i32 %110, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = call i32 @dtrace_dof_error(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %127

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %9, align 8
  br label %67

122:                                              ; preds = %67
  br label %123

123:                                              ; preds = %122, %38
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %12

126:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %112, %98, %88, %62, %54, %45
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dtrace_state_option(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
