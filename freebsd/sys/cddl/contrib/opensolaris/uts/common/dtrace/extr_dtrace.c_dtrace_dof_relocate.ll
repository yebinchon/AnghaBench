; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_relocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid relocation header\00", align 1
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@DOF_SECT_RELTAB = common dso_local global i32 0, align 4
@DOF_SECT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid relocation section\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bad relocation offset\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"misaligned setx relo\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid relocation type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32, i32)* @dtrace_dof_relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dof_relocate(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = ptrtoint i32* %20 to i64
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %12, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 12
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dtrace_dof_error(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_6__* @dtrace_dof_sect(i32* %43, i32 %44, i32 %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %13, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @DOF_SECT_RELTAB, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_6__* @dtrace_dof_sect(i32* %49, i32 %50, i32 %53)
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %14, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @DOF_SECT_NONE, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_6__* @dtrace_dof_sect(i32* %55, i32 %56, i32 %59)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %15, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %62 = ptrtoint %struct.TYPE_6__* %61 to i64
  %63 = add i64 %62, 24
  store i64 %63, i64* %11, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %42
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %68 = icmp eq %struct.TYPE_6__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %71 = icmp eq %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66, %42
  store i32 -1, i32* %5, align 4
  br label %206

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 16
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %73
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @dtrace_dof_error(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

88:                                               ; preds = %79
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = inttoptr i64 %93 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %16, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %97, %100
  store i32 %101, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %202, %88
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %205

106:                                              ; preds = %102
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %111, %114
  store i64 %115, i64* %19, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %190 [
    i32 129, label %119
    i32 128, label %120
    i32 130, label %120
  ]

119:                                              ; preds = %106
  br label %193

120:                                              ; preds = %106, %106
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp uge i64 %123, %127
  br i1 %128, label %139, label %129

129:                                              ; preds = %120
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = icmp ugt i64 %133, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129, %120
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @dtrace_dof_error(i32* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

142:                                              ; preds = %129
  %143 = load i64, i64* %19, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %145 = ptrtoint %struct.TYPE_6__* %144 to i64
  %146 = icmp uge i64 %143, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %11, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @dtrace_dof_error(i32* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

154:                                              ; preds = %147, %142
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @IS_P2ALIGNED(i64 %155, i32 4)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @dtrace_dof_error(i32* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

161:                                              ; preds = %154
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* %8, align 4
  %168 = load i64, i64* %19, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %189

172:                                              ; preds = %161
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %174, %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %178, %181
  %183 = load i64, i64* %19, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, %182
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 4
  br label %189

189:                                              ; preds = %172, %166
  br label %193

190:                                              ; preds = %106
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @dtrace_dof_error(i32* %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %206

193:                                              ; preds = %189, %119
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %195 = ptrtoint %struct.TYPE_8__* %194 to i64
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = add i64 %195, %199
  %201 = inttoptr i64 %200 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %201, %struct.TYPE_8__** %16, align 8
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  br label %102

205:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %190, %158, %151, %139, %85, %72, %39
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @dtrace_dof_error(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @dtrace_dof_sect(i32*, i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
