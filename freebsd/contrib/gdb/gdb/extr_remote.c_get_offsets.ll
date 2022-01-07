; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_get_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_get_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.remote_state = type { i32 }
%struct.section_offsets = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"qOffsets\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Remote failure reply: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Text=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c";Data=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c";Bss=\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Malformed response to offset query, %s\00", align 1
@symfile_objfile = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_offsets() #0 {
  %1 = alloca %struct.remote_state*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.section_offsets*, align 8
  %9 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %9, %struct.remote_state** %1, align 8
  %10 = load %struct.remote_state*, %struct.remote_state** %1, align 8
  %11 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @alloca(i32 %12)
  store i8* %13, i8** %2, align 8
  %14 = call i32 @putpkt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = load %struct.remote_state*, %struct.remote_state** %1, align 8
  %17 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @getpkt(i8* %15, i32 %18, i32 0)
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %182

26:                                               ; preds = %0
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 69
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %182

35:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %36 = load i8*, i8** %2, align 8
  store i8* %36, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %55, %40
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 59
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 4
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 @fromhex(i32 %61)
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %53
  br label %66

65:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 6
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %88, %73
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 59
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %97

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 4
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %3, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 @fromhex(i32 %94)
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %6, align 4
  br label %76

97:                                               ; preds = %86
  br label %99

98:                                               ; preds = %69, %66
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %3, align 8
  %104 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 5
  store i8* %108, i8** %3, align 8
  br label %109

109:                                              ; preds = %121, %106
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 59
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ false, %109 ], [ %118, %114 ]
  br i1 %120, label %121, label %130

121:                                              ; preds = %119
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 4
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %3, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 @fromhex(i32 %127)
  %129 = add nsw i32 %123, %128
  store i32 %129, i32* %7, align 4
  br label %109

130:                                              ; preds = %119
  br label %132

131:                                              ; preds = %102, %99
  store i32 1, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** %2, align 8
  %137 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %140 = icmp eq %struct.TYPE_6__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %182

142:                                              ; preds = %138
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %145)
  %147 = call i8* @alloca(i32 %146)
  %148 = bitcast i8* %147 to %struct.section_offsets*
  store %struct.section_offsets* %148, %struct.section_offsets** %8, align 8
  %149 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %155)
  %157 = call i32 @memcpy(%struct.section_offsets* %149, i32 %152, i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %160 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %163 = call i64 @SECT_OFF_TEXT(%struct.TYPE_6__* %162)
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %167 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %170 = call i64 @SECT_OFF_DATA(%struct.TYPE_6__* %169)
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %174 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %177 = call i64 @SECT_OFF_BSS(%struct.TYPE_6__* %176)
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @symfile_objfile, align 8
  %180 = load %struct.section_offsets*, %struct.section_offsets** %8, align 8
  %181 = call i32 @objfile_relocate(%struct.TYPE_6__* %179, %struct.section_offsets* %180)
  br label %182

182:                                              ; preds = %142, %141, %32, %25
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fromhex(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

declare dso_local i32 @memcpy(%struct.section_offsets*, i32, i32) #1

declare dso_local i64 @SECT_OFF_TEXT(%struct.TYPE_6__*) #1

declare dso_local i64 @SECT_OFF_DATA(%struct.TYPE_6__*) #1

declare dso_local i64 @SECT_OFF_BSS(%struct.TYPE_6__*) #1

declare dso_local i32 @objfile_relocate(%struct.TYPE_6__*, %struct.section_offsets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
