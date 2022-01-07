; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_makeshell.c_emit_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.tm = type { i32 }

@AO_NAME_SIZE = common dso_local global i32 0, align 4
@script_leader = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@TIME_FMT = common dso_local global i32 0, align 4
@SCRIPT = common dso_local global i32 0, align 4
@STDOUT = common dso_local global i8* null, align 8
@shell_prog = common dso_local global i8* null, align 8
@SHELL_MAGIC = common dso_local global i8* null, align 8
@PREAMBLE_FMT = common dso_local global i8* null, align 8
@START_MARK = common dso_local global i32 0, align 4
@END_PRE_FMT = common dso_local global i8* null, align 8
@NUL = common dso_local global i8 0, align 1
@TT_LONGUSAGE = common dso_local global i32 0, align 4
@TT_USAGE = common dso_local global i32 0, align 4
@optionPrintVersion = common dso_local global i64 0, align 8
@TT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @emit_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_usage(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %13 = load i32, i32* @AO_NAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32*, i32** @script_leader, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32*, i32** @script_leader, align 8
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fputs(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = call i32 @time(i32* null)
  store i32 %24, i32* %6, align 4
  %25 = call %struct.tm* @localtime(i32* %6)
  store %struct.tm* %25, %struct.tm** %7, align 8
  %26 = load i32, i32* @AO_NAME_SIZE, align 4
  %27 = load i32, i32* @TIME_FMT, align 4
  %28 = load %struct.tm*, %struct.tm** %7, align 8
  %29 = call i32 @strftime(i8* %16, i32 %26, i32 %27, %struct.tm* %28)
  %30 = load i32, i32* @SCRIPT, align 4
  %31 = call i64 @HAVE_GENSHELL_OPT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @SCRIPT, align 4
  %35 = call i8* @GENSHELL_OPT_ARG(i32 %34)
  store i8* %35, i8** %5, align 8
  br label %38

36:                                               ; preds = %23
  %37 = load i8*, i8** @STDOUT, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32*, i32** @script_leader, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i8*, i8** @shell_prog, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** @SHELL_MAGIC, align 8
  %46 = load i8*, i8** @shell_prog, align 8
  %47 = call i32 (i8*, i8*, ...) @printf(i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %41, %38
  %49 = load i8*, i8** @PREAMBLE_FMT, align 8
  %50 = load i32, i32* @START_MARK, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i8*, ...) @printf(i8* %49, i8* %52, i8* %53, i8* %16)
  %55 = load i8*, i8** @END_PRE_FMT, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* %55, i8* %58)
  store i8* %16, i8** %8, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %76, %48
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  %66 = load i8, i8* %64, align 1
  %67 = call i64 @tolower(i8 zeroext %66)
  %68 = trunc i64 %67 to i8
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  store i8 %68, i8* %69, align 1
  %71 = sext i8 %68 to i32
  %72 = load i8, i8* @NUL, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %77

76:                                               ; preds = %63
  br label %63

77:                                               ; preds = %75
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = call i8** @VOIDP(i32* %79)
  store i8** %80, i8*** %10, align 8
  %81 = load i8**, i8*** %10, align 8
  store i8* %16, i8** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = call i8** @VOIDP(i32* %83)
  store i8** %84, i8*** %10, align 8
  %85 = load i8**, i8*** %10, align 8
  store i8* %16, i8** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = load i32, i32* @TT_LONGUSAGE, align 4
  %88 = call i32 @text_to_var(%struct.TYPE_6__* %86, i32 %87, %struct.TYPE_7__* null)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = load i32, i32* @TT_USAGE, align 4
  %91 = call i32 @text_to_var(%struct.TYPE_6__* %89, i32 %90, %struct.TYPE_7__* null)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %11, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %114, %77
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @optionPrintVersion, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = load i32, i32* @TT_VERSION, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = call i32 @text_to_var(%struct.TYPE_6__* %105, i32 %106, %struct.TYPE_7__* %107)
  br label %117

109:                                              ; preds = %98
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %12, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %117

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 1
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %11, align 8
  br label %98

117:                                              ; preds = %113, %104
  %118 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fputs(i32*, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @strftime(i8*, i32, i32, %struct.tm*) #2

declare dso_local i64 @HAVE_GENSHELL_OPT(i32) #2

declare dso_local i8* @GENSHELL_OPT_ARG(i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i64 @tolower(i8 zeroext) #2

declare dso_local i8** @VOIDP(i32*) #2

declare dso_local i32 @text_to_var(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
