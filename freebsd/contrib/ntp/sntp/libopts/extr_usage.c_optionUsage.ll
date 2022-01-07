; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionUsage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_optionUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i32, i8*, i32 }

@AO_EXIT_REQ_USAGE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@displayEnum = common dso_local global i32 0, align 4
@option_usage_fp = common dso_local global i32* null, align 8
@print_exit = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@OPTPROC_COMPUTE = common dso_local global i32 0, align 4
@OPTPROC_TRANSLATE = common dso_local global i32 0, align 4
@zwriting = common dso_local global i32 0, align 4
@zstdout_name = common dso_local global i32 0, align 4
@zstderr_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionUsage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AO_EXIT_REQ_USAGE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  store i32 0, i32* @displayEnum, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @set_usage_flags(%struct.TYPE_7__* %16, i32* null)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EXIT_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 122880
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ null, %30 ]
  store i8* %32, i8** %6, align 8
  %33 = load i32*, i32** @option_usage_fp, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64, i64* @print_exit, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** @stderr, align 8
  br label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** @stdout, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32* [ %39, %38 ], [ %41, %40 ]
  store i32* %43, i32** @option_usage_fp, align 8
  br label %44

44:                                               ; preds = %42, %31
  br label %62

45:                                               ; preds = %14
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 122880
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ null, %54 ]
  store i8* %56, i8** %6, align 8
  %57 = load i32*, i32** @option_usage_fp, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32*, i32** @stderr, align 8
  store i32* %60, i32** @option_usage_fp, align 8
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @OPTPROC_COMPUTE, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @OPTPROC_TRANSLATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** %6, align 8
  %81 = load i32*, i32** @option_usage_fp, align 8
  %82 = call i32 @optionPrintParagraphs(i8* %80, i32 1, i32* %81)
  br label %87

83:                                               ; preds = %72
  %84 = load i8*, i8** %6, align 8
  %85 = load i32*, i32** @option_usage_fp, align 8
  %86 = call i32 @fputs(i8* %84, i32* %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %112

88:                                               ; preds = %69, %62
  %89 = load i32*, i32** @option_usage_fp, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @fprintf(i32* %89, i8* %92, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = call i32 @skip_misuse_usage(%struct.TYPE_7__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100, %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @print_usage_details(%struct.TYPE_7__* %105, i32 %106)
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = call i32 @print_offer_usage(%struct.TYPE_7__* %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %87
  %113 = load i32*, i32** @option_usage_fp, align 8
  %114 = call i32 @fflush(i32* %113)
  %115 = load i32*, i32** @option_usage_fp, align 8
  %116 = call i64 @ferror(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @zwriting, align 4
  %123 = load i32*, i32** @option_usage_fp, align 8
  %124 = load i32*, i32** @stdout, align 8
  %125 = icmp eq i32* %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @zstdout_name, align 4
  br label %130

128:                                              ; preds = %118
  %129 = load i32, i32* @zstderr_name, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = call i32 @fserr_exit(i32 %121, i32 %122, i32 %131)
  br label %133

133:                                              ; preds = %130, %112
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @option_exits(i32 %134)
  ret void
}

declare dso_local i32 @set_usage_flags(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @optionPrintParagraphs(i8*, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @skip_misuse_usage(%struct.TYPE_7__*) #1

declare dso_local i32 @print_usage_details(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @print_offer_usage(%struct.TYPE_7__*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fserr_exit(i32, i32, i32) #1

declare dso_local i32 @option_exits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
