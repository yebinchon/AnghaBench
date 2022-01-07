; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@initialize_color = common dso_local global i32 0, align 4
@can_change = common dso_local global i32 0, align 4
@max_colors = common dso_local global i8* null, align 8
@max_pairs = common dso_local global i8* null, align 8
@set_foreground = common dso_local global i32* null, align 8
@set_background = common dso_local global i32* null, align 8
@set_a_foreground = common dso_local global i32* null, align 8
@set_a_background = common dso_local global i32* null, align 8
@set_color_pair = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@exit_ca_mode = common dso_local global i64 0, align 8
@non_rev_rmcup = common dso_local global i64 0, align 8
@num_labels = common dso_local global i8* null, align 8
@label_width = common dso_local global i8* null, align 8
@label_height = common dso_local global i8* null, align 8
@no_color_video = common dso_local global i8* null, align 8
@init_tabs = common dso_local global i8* null, align 8
@hue_lightness_saturation = common dso_local global i64 0, align 8
@_nc_hls_palette = common dso_local global i32 0, align 4
@_nc_cga_palette = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @drv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = call i32 (...) @AssertTCB()
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = bitcast %struct.TYPE_9__* %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @initialize_color, align 4
  %8 = call i32 @VALID_STRING(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 11
  store i32 %8, i32* %11, align 8
  %12 = load i32, i32* @can_change, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 10
  store i32 %12, i32* %15, align 4
  %16 = load i8*, i8** @max_colors, align 8
  %17 = call i64 @VALID_NUMERIC(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load i8*, i8** @max_pairs, align 8
  %21 = call i64 @VALID_NUMERIC(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32*, i32** @set_foreground, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** @set_background, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** @set_a_foreground, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** @set_a_background, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* @set_color_pair, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32, %26
  %39 = load i32, i32* @TRUE, align 4
  br label %42

40:                                               ; preds = %35, %19, %1
  %41 = load i32, i32* @FALSE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 8
  %47 = load i64, i64* @exit_ca_mode, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i64, i64* @non_rev_rmcup, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i1 [ false, %42 ], [ %51, %49 ]
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i8*, i8** @max_pairs, align 8
  %60 = call i64 @VALID_NUMERIC(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i8*, i8** @max_pairs, align 8
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ null, %64 ]
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 8
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @max_colors, align 8
  %71 = call i64 @VALID_NUMERIC(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i8*, i8** @max_colors, align 8
  br label %76

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ null, %75 ]
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @num_labels, align 8
  %82 = call i64 @VALID_NUMERIC(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i8*, i8** @num_labels, align 8
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i8* [ %85, %84 ], [ null, %86 ]
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @label_width, align 8
  %93 = call i64 @VALID_NUMERIC(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i8*, i8** @label_width, align 8
  br label %98

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i8* [ %96, %95 ], [ null, %97 ]
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** @label_height, align 8
  %104 = call i64 @VALID_NUMERIC(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i8*, i8** @label_height, align 8
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i8* [ %107, %106 ], [ null, %108 ]
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  store i8* %110, i8** %113, align 8
  %114 = load i8*, i8** @no_color_video, align 8
  %115 = call i64 @VALID_NUMERIC(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i8*, i8** @no_color_video, align 8
  br label %120

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i8* [ %118, %117 ], [ null, %119 ]
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @init_tabs, align 8
  %126 = call i64 @VALID_NUMERIC(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i8*, i8** @init_tabs, align 8
  %130 = ptrtoint i8* %129 to i32
  br label %132

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %128
  %133 = phi i32 [ %130, %128 ], [ 8, %131 ]
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i64, i64* @hue_lightness_saturation, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @_nc_hls_palette, align 4
  br label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @_nc_cga_palette, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @isatty(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %157, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %160 = load i32, i32* @TRUE, align 4
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i32 %158(%struct.TYPE_9__* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %153, %143
  ret void
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @VALID_STRING(i32) #1

declare dso_local i64 @VALID_NUMERIC(i8*) #1

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
