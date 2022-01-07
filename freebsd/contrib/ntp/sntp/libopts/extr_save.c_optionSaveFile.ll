; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_optionSaveFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_save.c_optionSaveFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@OPTST_DO_NOT_SAVE_MASK = common dso_local global i32 0, align 4
@NO_EQUIVALENT = common dso_local global i64 0, align 8
@OPTST_EQUIVALENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionSaveFile(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = call i32* @open_sv_file(%struct.TYPE_17__* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %128

12:                                               ; preds = %1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %3, align 8
  br label %19

19:                                               ; preds = %119, %12
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = call i64 @UNUSED_OPT(%struct.TYPE_18__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %119

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OPTST_DO_NOT_SAVE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %119

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NO_EQUIVALENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %119

47:                                               ; preds = %38, %32
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @OPTST_EQUIVALENCE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 %61
  br label %65

63:                                               ; preds = %47
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  br label %65

65:                                               ; preds = %63, %54
  %66 = phi %struct.TYPE_18__* [ %62, %54 ], [ %64, %63 ]
  store %struct.TYPE_18__* %66, %struct.TYPE_18__** %6, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @OPTST_GET_ARGTYPE(i32 %69)
  switch i32 %70, label %117 [
    i32 130, label %71
    i32 129, label %76
    i32 128, label %85
    i32 134, label %89
    i32 131, label %93
    i32 135, label %97
    i32 132, label %108
    i32 133, label %112
  ]

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = call i32 @prt_no_arg_opt(i32* %72, %struct.TYPE_18__* %73, %struct.TYPE_18__* %74)
  br label %118

76:                                               ; preds = %65
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @VOIDP(i32 %82)
  %84 = call i32 @prt_entry(i32* %77, %struct.TYPE_18__* %78, i8* %83)
  br label %118

85:                                               ; preds = %65
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = call i32 @prt_str_arg(i32* %86, %struct.TYPE_18__* %87)
  br label %118

89:                                               ; preds = %65
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = call i32 @prt_enum_arg(i32* %90, %struct.TYPE_18__* %91)
  br label %118

93:                                               ; preds = %65
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = call i32 @prt_set_arg(i32* %94, %struct.TYPE_18__* %95)
  br label %118

97:                                               ; preds = %65
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %107 = call i32 @prt_entry(i32* %98, %struct.TYPE_18__* %99, i8* %106)
  br label %118

108:                                              ; preds = %65
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = call i32 @prt_nested(i32* %109, %struct.TYPE_18__* %110)
  br label %118

112:                                              ; preds = %65
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = call i32 @prt_file_arg(i32* %113, %struct.TYPE_18__* %114, %struct.TYPE_17__* %115)
  br label %118

117:                                              ; preds = %65
  br label %118

118:                                              ; preds = %117, %112, %108, %97, %93, %89, %85, %76, %71
  br label %119

119:                                              ; preds = %118, %46, %31, %23
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 1
  store %struct.TYPE_18__* %121, %struct.TYPE_18__** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %4, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %19, label %125

125:                                              ; preds = %119
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @fclose(i32* %126)
  br label %128

128:                                              ; preds = %125, %11
  ret void
}

declare dso_local i32* @open_sv_file(%struct.TYPE_17__*) #1

declare dso_local i64 @UNUSED_OPT(%struct.TYPE_18__*) #1

declare dso_local i32 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i32 @prt_no_arg_opt(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @prt_entry(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i8* @VOIDP(i32) #1

declare dso_local i32 @prt_str_arg(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @prt_enum_arg(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @prt_set_arg(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @prt_nested(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @prt_file_arg(i32*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
