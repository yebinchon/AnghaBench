; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_file_preset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_file_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8* }

@PRESET = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@OPTPROC_ERRSTOP = common dso_local global i32 0, align 4
@DIRECTION_CALLED = common dso_local global i32 0, align 4
@OPTST_DEFINED = common dso_local global i8* null, align 8
@DIRECTION_PROCESS = common dso_local global i32 0, align 4
@OPTPROC_PRESETTING = common dso_local global i32 0, align 4
@OPTST_SET = common dso_local global i8* null, align 8
@NL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i32)* @file_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_preset(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @PRESET, align 4
  %13 = call i8* @OPTSTATE_INITIALIZER(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAP_PRIVATE, align 4
  %27 = call i8* @text_mmap(i8* %22, i32 %25, i32 %26, i32* %7)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @TEXT_MMAP_FAILED_ADDR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %134

32:                                               ; preds = %3
  %33 = load i32, i32* @OPTPROC_ERRSTOP, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @DIRECTION_CALLED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** @OPTST_DEFINED, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* @DIRECTION_PROCESS, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OPTPROC_PRESETTING, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** @OPTST_SET, align 8
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %124, %54
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @SPN_WHITESPACE_CHARS(i8* %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @IS_VAR_FIRST_CHAR(i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i8* @handle_cfg(%struct.TYPE_11__* %65, %struct.TYPE_12__* %8, i8* %66, i32 %67)
  store i8* %68, i8** %11, align 8
  br label %123

69:                                               ; preds = %55
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %121 [
    i32 60, label %73
    i32 91, label %112
    i32 35, label %116
  ]

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @IS_VAR_FIRST_CHAR(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @handle_struct(%struct.TYPE_11__* %80, %struct.TYPE_12__* %8, i8* %81, i32 %82)
  store i8* %83, i8** %11, align 8
  br label %107

84:                                               ; preds = %73
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %105 [
    i32 63, label %89
    i32 33, label %93
    i32 47, label %96
  ]

89:                                               ; preds = %84
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i8* @handle_directive(%struct.TYPE_11__* %90, i8* %91)
  store i8* %92, i8** %11, align 8
  br label %106

93:                                               ; preds = %84
  %94 = load i8*, i8** %11, align 8
  %95 = call i8* @handle_comment(i8* %94)
  store i8* %95, i8** %11, align 8
  br label %106

96:                                               ; preds = %84
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = call i8* @strchr(i8* %98, i8 signext 62)
  store i8* %99, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  %102 = icmp ne i8* %100, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %106

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %84, %104
  store i8* null, i8** %11, align 8
  br label %106

106:                                              ; preds = %105, %103, %93, %89
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i8*, i8** %11, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %128

111:                                              ; preds = %107
  br label %122

112:                                              ; preds = %69
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i8* @handle_section(%struct.TYPE_11__* %113, i8* %114)
  store i8* %115, i8** %11, align 8
  br label %122

116:                                              ; preds = %69
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* @NL, align 1
  %120 = call i8* @strchr(i8* %118, i8 signext %119)
  store i8* %120, i8** %11, align 8
  br label %122

121:                                              ; preds = %69
  br label %128

122:                                              ; preds = %116, %112, %111
  br label %123

123:                                              ; preds = %122, %64
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %11, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %55, label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %127, %121, %110
  %129 = call i32 @text_munmap(i32* %7)
  %130 = load i8*, i8** %10, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %31
  ret void
}

declare dso_local i8* @OPTSTATE_INITIALIZER(i32) #1

declare dso_local i8* @text_mmap(i8*, i32, i32, i32*) #1

declare dso_local i64 @TEXT_MMAP_FAILED_ADDR(i8*) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i64 @IS_VAR_FIRST_CHAR(i8 signext) #1

declare dso_local i8* @handle_cfg(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i8* @handle_struct(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i8* @handle_directive(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @handle_comment(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @handle_section(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @text_munmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
