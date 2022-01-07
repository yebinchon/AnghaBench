; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@optionPrintVersion = common dso_local global i32* null, align 8
@ECHO_N_EXIT = common dso_local global i8* null, align 8
@VER_STR = common dso_local global i32 0, align 4
@optionPagedUsage = common dso_local global i32* null, align 8
@PAGE_USAGE_TEXT = common dso_local global i8* null, align 8
@optionLoadOpt = common dso_local global i32* null, align 8
@LVL3_CMD = common dso_local global i8* null, align 8
@NO_LOAD_WARN = common dso_local global i32 0, align 4
@YES_NEED_OPT_ARG = common dso_local global i32 0, align 4
@NO_SAVE_OPTS = common dso_local global i32 0, align 4
@OK_NEED_OPT_ARG = common dso_local global i32 0, align 4
@LONG_USE_STR = common dso_local global i32 0, align 4
@SGL_ARG_FMT = common dso_local global i8* null, align 8
@NOLIMIT = common dso_local global i32 0, align 4
@CHK_MAX_COUNT = common dso_local global i8* null, align 8
@MULTI_ARG_FMT = common dso_local global i8* null, align 8
@OPARG_TYPE_NONE = common dso_local global i64 0, align 8
@SET_MULTI_ARG = common dso_local global i8* null, align 8
@NO_ARG_NEEDED = common dso_local global i32 0, align 4
@OPTST_ARG_OPTIONAL = common dso_local global i32 0, align 4
@zOptionEndSelect = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @emit_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_action(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** @optionPrintVersion, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8*, i8** @ECHO_N_EXIT, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VER_STR, align 4
  %16 = call i32 (i8*, i32, ...) @printf(i8* %11, i32 %14, i32 %15)
  br label %155

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** @optionPagedUsage, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** @PAGE_USAGE_TEXT, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @printf(i8* %24, i32 %27)
  br label %154

29:                                               ; preds = %17
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** @optionLoadOpt, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** @LVL3_CMD, align 8
  %37 = load i32, i32* @NO_LOAD_WARN, align 4
  %38 = call i32 (i8*, i32, ...) @printf(i8* %36, i32 %37)
  %39 = load i8*, i8** @LVL3_CMD, align 8
  %40 = load i32, i32* @YES_NEED_OPT_ARG, align 4
  %41 = call i32 (i8*, i32, ...) @printf(i8* %39, i32 %40)
  br label %153

42:                                               ; preds = %29
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8*, i8** @LVL3_CMD, align 8
  %54 = load i32, i32* @NO_SAVE_OPTS, align 4
  %55 = call i32 (i8*, i32, ...) @printf(i8* %53, i32 %54)
  %56 = load i8*, i8** @LVL3_CMD, align 8
  %57 = load i32, i32* @OK_NEED_OPT_ARG, align 4
  %58 = call i32 (i8*, i32, ...) @printf(i8* %56, i32 %57)
  br label %66

59:                                               ; preds = %47
  %60 = load i8*, i8** @ECHO_N_EXIT, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @LONG_USE_STR, align 4
  %65 = call i32 (i8*, i32, ...) @printf(i8* %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  br label %152

67:                                               ; preds = %42
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i8*, i8** @SGL_ARG_FMT, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 (i8*, i32, ...) @printf(i8* %73, i32 %76, i32* %79)
  br label %108

81:                                               ; preds = %67
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NOLIMIT, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load i8*, i8** @CHK_MAX_COUNT, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i32, ...) @printf(i8* %88, i32 %91, i32* %94, i32 %97)
  br label %99

99:                                               ; preds = %87, %81
  %100 = load i8*, i8** @MULTI_ARG_FMT, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 (i8*, i32, ...) @printf(i8* %100, i32 %103, i32* %106)
  br label %108

108:                                              ; preds = %99, %72
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @OPTST_GET_ARGTYPE(i32 %111)
  %113 = load i64, i64* @OPARG_TYPE_NONE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i8*, i8** @SET_MULTI_ARG, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 (i8*, i32, ...) @printf(i8* %116, i32 %119, i32* %122)
  %124 = load i8*, i8** @LVL3_CMD, align 8
  %125 = load i32, i32* @NO_ARG_NEEDED, align 4
  %126 = call i32 (i8*, i32, ...) @printf(i8* %124, i32 %125)
  br label %151

127:                                              ; preds = %108
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @OPTST_ARG_OPTIONAL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load i8*, i8** @SET_MULTI_ARG, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 (i8*, i32, ...) @printf(i8* %135, i32 %138, i32* %141)
  %143 = load i8*, i8** @LVL3_CMD, align 8
  %144 = load i32, i32* @OK_NEED_OPT_ARG, align 4
  %145 = call i32 (i8*, i32, ...) @printf(i8* %143, i32 %144)
  br label %150

146:                                              ; preds = %127
  %147 = load i8*, i8** @LVL3_CMD, align 8
  %148 = load i32, i32* @YES_NEED_OPT_ARG, align 4
  %149 = call i32 (i8*, i32, ...) @printf(i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %134
  br label %151

151:                                              ; preds = %150, %115
  br label %152

152:                                              ; preds = %151, %66
  br label %153

153:                                              ; preds = %152, %35
  br label %154

154:                                              ; preds = %153, %23
  br label %155

155:                                              ; preds = %154, %10
  %156 = load i32, i32* @zOptionEndSelect, align 4
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fputs(i32 %156, i32 %157)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i32 @fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
