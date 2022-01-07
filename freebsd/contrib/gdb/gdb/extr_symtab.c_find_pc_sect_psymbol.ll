; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_pc_sect_psymbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_find_pc_sect_psymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symbol = type { i32 }
%struct.partial_symtab = type { i64, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.partial_symbol** }
%struct.TYPE_4__ = type { %struct.partial_symbol** }

@VAR_DOMAIN = common dso_local global i64 0, align 8
@LOC_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.partial_symbol* @find_pc_sect_psymbol(%struct.partial_symtab* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.partial_symbol*, align 8
  %5 = alloca %struct.partial_symtab*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.partial_symbol*, align 8
  %9 = alloca %struct.partial_symbol*, align 8
  %10 = alloca %struct.partial_symbol**, align 8
  %11 = alloca i64, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.partial_symbol* null, %struct.partial_symbol** %8, align 8
  %12 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %13 = icmp ne %struct.partial_symtab* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.partial_symtab* @find_pc_sect_psymtab(i64 %15, i32* %16)
  store %struct.partial_symtab* %17, %struct.partial_symtab** %5, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %20 = icmp ne %struct.partial_symtab* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store %struct.partial_symbol* null, %struct.partial_symbol** %4, align 8
  br label %218

22:                                               ; preds = %18
  %23 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %24 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %29 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i64 [ %31, %27 ], [ 0, %32 ]
  store i64 %34, i64* %11, align 8
  %35 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %36 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.partial_symbol**, %struct.partial_symbol*** %39, align 8
  %41 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %42 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %40, i64 %44
  store %struct.partial_symbol** %45, %struct.partial_symbol*** %10, align 8
  br label %46

46:                                               ; preds = %122, %33
  %47 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %49 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.partial_symbol**, %struct.partial_symbol*** %52, align 8
  %54 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %55 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %53, i64 %57
  %59 = ptrtoint %struct.partial_symbol** %47 to i64
  %60 = ptrtoint %struct.partial_symbol** %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 8
  %63 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %64 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %46
  %69 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %70 = load %struct.partial_symbol*, %struct.partial_symbol** %69, align 8
  store %struct.partial_symbol* %70, %struct.partial_symbol** %9, align 8
  %71 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %72 = call i64 @SYMBOL_DOMAIN(%struct.partial_symbol* %71)
  %73 = load i64, i64* @VAR_DOMAIN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %68
  %76 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %77 = call i64 @SYMBOL_CLASS(%struct.partial_symbol* %76)
  %78 = load i64, i64* @LOC_BLOCK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %75
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %83 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %82)
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %85, label %121

85:                                               ; preds = %80
  %86 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %87 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %92 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load i64, i64* %11, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %100 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %98, %85
  %103 = load i32*, i32** %7, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %107 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %108 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %107, i32 0, i32 5
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @fixup_psymbol_section(%struct.partial_symbol* %106, %struct.TYPE_6__* %109)
  %111 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %112 = call i32* @SYMBOL_BFD_SECTION(%struct.partial_symbol* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %122

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %102
  %118 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %119 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %118)
  store i64 %119, i64* %11, align 8
  %120 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  store %struct.partial_symbol* %120, %struct.partial_symbol** %8, align 8
  br label %121

121:                                              ; preds = %117, %98, %95, %90, %80, %75, %68
  br label %122

122:                                              ; preds = %121, %115
  %123 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %124 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %123, i32 1
  store %struct.partial_symbol** %124, %struct.partial_symbol*** %10, align 8
  br label %46

125:                                              ; preds = %46
  %126 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %127 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %126, i32 0, i32 5
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.partial_symbol**, %struct.partial_symbol*** %130, align 8
  %132 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %133 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %131, i64 %135
  store %struct.partial_symbol** %136, %struct.partial_symbol*** %10, align 8
  br label %137

137:                                              ; preds = %213, %125
  %138 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %139 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %140 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %139, i32 0, i32 5
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.partial_symbol**, %struct.partial_symbol*** %143, align 8
  %145 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %146 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %144, i64 %148
  %150 = ptrtoint %struct.partial_symbol** %138 to i64
  %151 = ptrtoint %struct.partial_symbol** %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 8
  %154 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %155 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %153, %157
  br i1 %158, label %159, label %216

159:                                              ; preds = %137
  %160 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %161 = load %struct.partial_symbol*, %struct.partial_symbol** %160, align 8
  store %struct.partial_symbol* %161, %struct.partial_symbol** %9, align 8
  %162 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %163 = call i64 @SYMBOL_DOMAIN(%struct.partial_symbol* %162)
  %164 = load i64, i64* @VAR_DOMAIN, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %212

166:                                              ; preds = %159
  %167 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %168 = call i64 @SYMBOL_CLASS(%struct.partial_symbol* %167)
  %169 = load i64, i64* @LOC_BLOCK, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %212

171:                                              ; preds = %166
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %174 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %173)
  %175 = icmp sge i64 %172, %174
  br i1 %175, label %176, label %212

176:                                              ; preds = %171
  %177 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %178 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %177)
  %179 = load i64, i64* %11, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %176
  %182 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %183 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %181
  %187 = load i64, i64* %11, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %212

189:                                              ; preds = %186
  %190 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %191 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %189, %176
  %194 = load i32*, i32** %7, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %198 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %199 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %198, i32 0, i32 5
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = call i32 @fixup_psymbol_section(%struct.partial_symbol* %197, %struct.TYPE_6__* %200)
  %202 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %203 = call i32* @SYMBOL_BFD_SECTION(%struct.partial_symbol* %202)
  %204 = load i32*, i32** %7, align 8
  %205 = icmp ne i32* %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %213

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %207, %193
  %209 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  %210 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol* %209)
  store i64 %210, i64* %11, align 8
  %211 = load %struct.partial_symbol*, %struct.partial_symbol** %9, align 8
  store %struct.partial_symbol* %211, %struct.partial_symbol** %8, align 8
  br label %212

212:                                              ; preds = %208, %189, %186, %181, %171, %166, %159
  br label %213

213:                                              ; preds = %212, %206
  %214 = load %struct.partial_symbol**, %struct.partial_symbol*** %10, align 8
  %215 = getelementptr inbounds %struct.partial_symbol*, %struct.partial_symbol** %214, i32 1
  store %struct.partial_symbol** %215, %struct.partial_symbol*** %10, align 8
  br label %137

216:                                              ; preds = %137
  %217 = load %struct.partial_symbol*, %struct.partial_symbol** %8, align 8
  store %struct.partial_symbol* %217, %struct.partial_symbol** %4, align 8
  br label %218

218:                                              ; preds = %216, %21
  %219 = load %struct.partial_symbol*, %struct.partial_symbol** %4, align 8
  ret %struct.partial_symbol* %219
}

declare dso_local %struct.partial_symtab* @find_pc_sect_psymtab(i64, i32*) #1

declare dso_local i64 @SYMBOL_DOMAIN(%struct.partial_symbol*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.partial_symbol*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.partial_symbol*) #1

declare dso_local i32 @fixup_psymbol_section(%struct.partial_symbol*, %struct.TYPE_6__*) #1

declare dso_local i32* @SYMBOL_BFD_SECTION(%struct.partial_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
