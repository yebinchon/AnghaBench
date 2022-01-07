; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8* }
%struct.manoutput = type { i32, i32, i64, i64 }

@TERMFONT_NONE = common dso_local global i32 0, align 4
@ascii_begin = common dso_local global i32 0, align 4
@ascii_end = common dso_local global i32 0, align 4
@ascii_hspan = common dso_local global i32 0, align 4
@TERMTYPE_CHAR = common dso_local global i32 0, align 4
@TERMENC_ASCII = common dso_local global i32 0, align 4
@ascii_advance = common dso_local global i32 0, align 4
@ascii_endline = common dso_local global i32 0, align 4
@ascii_letter = common dso_local global i32 0, align 4
@ascii_setwidth = common dso_local global i32 0, align 4
@ascii_width = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@TERMENC_LOCALE = common dso_local global i32 0, align 4
@TERMENC_UTF8 = common dso_local global i32 0, align 4
@UTF8_LOCALE = common dso_local global i8* null, align 8
@locale_advance = common dso_local global i32 0, align 4
@locale_endline = common dso_local global i32 0, align 4
@locale_letter = common dso_local global i32 0, align 4
@locale_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.termp* (i32, %struct.manoutput*)* @ascii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.termp* @ascii_init(i32 %0, %struct.manoutput* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.manoutput*, align 8
  %5 = alloca %struct.termp*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.manoutput* %1, %struct.manoutput** %4, align 8
  %6 = call i8* @mandoc_calloc(i32 1, i32 104)
  %7 = bitcast i8* %6 to %struct.termp*
  store %struct.termp* %7, %struct.termp** %5, align 8
  %8 = call i8* @mandoc_calloc(i32 1, i32 1)
  %9 = load %struct.termp*, %struct.termp** %5, align 8
  %10 = getelementptr inbounds %struct.termp, %struct.termp* %9, i32 0, i32 20
  store i8* %8, i8** %10, align 8
  %11 = load %struct.termp*, %struct.termp** %5, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 21
  store i8* %8, i8** %12, align 8
  %13 = load %struct.termp*, %struct.termp** %5, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.termp*, %struct.termp** %5, align 8
  %16 = getelementptr inbounds %struct.termp, %struct.termp* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.termp*, %struct.termp** %5, align 8
  %18 = getelementptr inbounds %struct.termp, %struct.termp* %17, i32 0, i32 3
  store i32 78, i32* %18, align 4
  %19 = load %struct.termp*, %struct.termp** %5, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 2
  store i32 78, i32* %20, align 8
  %21 = load %struct.termp*, %struct.termp** %5, align 8
  %22 = getelementptr inbounds %struct.termp, %struct.termp* %21, i32 0, i32 4
  store i32 8, i32* %22, align 8
  %23 = call i32* @mandoc_reallocarray(i32* null, i32 8, i32 4)
  %24 = load %struct.termp*, %struct.termp** %5, align 8
  %25 = getelementptr inbounds %struct.termp, %struct.termp* %24, i32 0, i32 19
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @TERMFONT_NONE, align 4
  %27 = load %struct.termp*, %struct.termp** %5, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 8
  %29 = load %struct.termp*, %struct.termp** %5, align 8
  %30 = getelementptr inbounds %struct.termp, %struct.termp* %29, i32 0, i32 19
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %26, i32* %32, align 4
  %33 = load i32, i32* @ascii_begin, align 4
  %34 = load %struct.termp*, %struct.termp** %5, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 17
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ascii_end, align 4
  %37 = load %struct.termp*, %struct.termp** %5, align 8
  %38 = getelementptr inbounds %struct.termp, %struct.termp* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @ascii_hspan, align 4
  %40 = load %struct.termp*, %struct.termp** %5, align 8
  %41 = getelementptr inbounds %struct.termp, %struct.termp* %40, i32 0, i32 15
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TERMTYPE_CHAR, align 4
  %43 = load %struct.termp*, %struct.termp** %5, align 8
  %44 = getelementptr inbounds %struct.termp, %struct.termp* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @TERMENC_ASCII, align 4
  %46 = load %struct.termp*, %struct.termp** %5, align 8
  %47 = getelementptr inbounds %struct.termp, %struct.termp* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ascii_advance, align 4
  %49 = load %struct.termp*, %struct.termp** %5, align 8
  %50 = getelementptr inbounds %struct.termp, %struct.termp* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ascii_endline, align 4
  %52 = load %struct.termp*, %struct.termp** %5, align 8
  %53 = getelementptr inbounds %struct.termp, %struct.termp* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ascii_letter, align 4
  %55 = load %struct.termp*, %struct.termp** %5, align 8
  %56 = getelementptr inbounds %struct.termp, %struct.termp* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ascii_setwidth, align 4
  %58 = load %struct.termp*, %struct.termp** %5, align 8
  %59 = getelementptr inbounds %struct.termp, %struct.termp* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ascii_width, align 4
  %61 = load %struct.termp*, %struct.termp** %5, align 8
  %62 = getelementptr inbounds %struct.termp, %struct.termp* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %64 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %2
  %68 = load %struct.termp*, %struct.termp** %5, align 8
  %69 = getelementptr inbounds %struct.termp, %struct.termp* %68, i32 0, i32 6
  store i32 1, i32* %69, align 8
  %70 = load %struct.termp*, %struct.termp** %5, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 7
  store i32 5, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %2
  %73 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %74 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %79 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.termp*, %struct.termp** %5, align 8
  %82 = getelementptr inbounds %struct.termp, %struct.termp* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %85 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %90 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.termp*, %struct.termp** %5, align 8
  %93 = getelementptr inbounds %struct.termp, %struct.termp* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.manoutput*, %struct.manoutput** %4, align 8
  %96 = getelementptr inbounds %struct.manoutput, %struct.manoutput* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.termp*, %struct.termp** %5, align 8
  %101 = getelementptr inbounds %struct.termp, %struct.termp* %100, i32 0, i32 8
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.termp*, %struct.termp** %5, align 8
  %104 = getelementptr inbounds %struct.termp, %struct.termp* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UINT16_MAX, align 4
  %107 = icmp slt i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.termp*, %struct.termp** %5, align 8
  %111 = getelementptr inbounds %struct.termp, %struct.termp* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UINT16_MAX, align 4
  %114 = icmp slt i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.termp*, %struct.termp** %5, align 8
  ret %struct.termp* %117
}

declare dso_local i8* @mandoc_calloc(i32, i32) #1

declare dso_local i32* @mandoc_reallocarray(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
