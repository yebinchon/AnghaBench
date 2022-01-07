; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_init_import_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_init_import_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i8**, i32, i32, i32 }
%struct.SomImportEntry = type { i32, i16, i8, i8 }

@.str = private unnamed_addr constant [13 x i8] c"$SHLIB_INFO$\00", align 1
@SOM_READ_IMPORTS_CHUNK_SIZE = common dso_local global i32 0, align 4
@SOM_READ_IMPORTS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objfile*)* @init_import_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_import_symbols(%struct.objfile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [12 x i32], align 16
  %14 = alloca [100 x %struct.SomImportEntry], align 16
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  %15 = load %struct.objfile*, %struct.objfile** %3, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  store i8** null, i8*** %16, align 8
  %17 = load %struct.objfile*, %struct.objfile** %3, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.objfile*, %struct.objfile** %3, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @bfd_get_section_by_name(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %250

26:                                               ; preds = %1
  %27 = load %struct.objfile*, %struct.objfile** %3, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %32 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %29, i32* %30, i32* %31, i32 0, i64 48)
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ne i32 %34, 93092112
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %250

37:                                               ; preds = %26
  %38 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 4
  %39 = load i32, i32* %38, align 16
  store i32 %39, i32* %4, align 4
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %250

45:                                               ; preds = %37
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 10
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 11
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %250

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @xmalloc(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %8, align 8
  %57 = load %struct.objfile*, %struct.objfile** %3, align 8
  %58 = getelementptr inbounds %struct.objfile, %struct.objfile* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %59, i32* %60, i8* %61, i32 %62, i32 %63)
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = getelementptr inbounds %struct.objfile, %struct.objfile* %65, i32 0, i32 2
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @obstack_alloc(i32* %66, i32 %70)
  %72 = inttoptr i64 %71 to i8**
  %73 = load %struct.objfile*, %struct.objfile** %3, align 8
  %74 = getelementptr inbounds %struct.objfile, %struct.objfile* %73, i32 0, i32 0
  store i8** %72, i8*** %74, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %155, %53
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = udiv i32 %77, 100
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %158

80:                                               ; preds = %75
  %81 = load %struct.objfile*, %struct.objfile** %3, align 8
  %82 = getelementptr inbounds %struct.objfile, %struct.objfile* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 0
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 800
  %91 = add i64 %87, %90
  %92 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %83, i32* %84, %struct.SomImportEntry* %85, i64 %91, i64 800)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %149, %80
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 100
  br i1 %95, label %96, label %154

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 2
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %141

104:                                              ; preds = %96
  %105 = load %struct.objfile*, %struct.objfile** %3, align 8
  %106 = getelementptr inbounds %struct.objfile, %struct.objfile* %105, i32 0, i32 2
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  %115 = call i32 @strlen(i8* %114)
  %116 = add nsw i32 %115, 1
  %117 = call i64 @obstack_alloc(i32* %106, i32 %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.objfile*, %struct.objfile** %3, align 8
  %120 = getelementptr inbounds %struct.objfile, %struct.objfile* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  %125 = load %struct.objfile*, %struct.objfile** %3, align 8
  %126 = getelementptr inbounds %struct.objfile, %struct.objfile* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  %140 = call i32 @strcpy(i8* %131, i8* %139)
  br label %148

141:                                              ; preds = %96
  %142 = load %struct.objfile*, %struct.objfile** %3, align 8
  %143 = getelementptr inbounds %struct.objfile, %struct.objfile* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* null, i8** %147, align 8
  br label %148

148:                                              ; preds = %141, %104
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %93

154:                                              ; preds = %93
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %75

158:                                              ; preds = %75
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load %struct.objfile*, %struct.objfile** %3, align 8
  %164 = getelementptr inbounds %struct.objfile, %struct.objfile* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 0
  %168 = load i32, i32* %4, align 4
  %169 = zext i32 %168 to i64
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 8
  %173 = add i64 %169, %172
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sub i32 %174, %175
  %177 = zext i32 %176 to i64
  %178 = mul i64 %177, 8
  %179 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %165, i32* %166, %struct.SomImportEntry* %167, i64 %173, i64 %178)
  br label %180

180:                                              ; preds = %162, %158
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %238, %180
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %243

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %188, i32 0, i32 2
  %190 = load i8, i8* %189, align 2
  %191 = zext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %230

193:                                              ; preds = %185
  %194 = load %struct.objfile*, %struct.objfile** %3, align 8
  %195 = getelementptr inbounds %struct.objfile, %struct.objfile* %194, i32 0, i32 2
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %196, i64 %202
  %204 = call i32 @strlen(i8* %203)
  %205 = add nsw i32 %204, 1
  %206 = call i64 @obstack_alloc(i32* %195, i32 %205)
  %207 = inttoptr i64 %206 to i8*
  %208 = load %struct.objfile*, %struct.objfile** %3, align 8
  %209 = getelementptr inbounds %struct.objfile, %struct.objfile* %208, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %207, i8** %213, align 8
  %214 = load %struct.objfile*, %struct.objfile** %3, align 8
  %215 = getelementptr inbounds %struct.objfile, %struct.objfile* %214, i32 0, i32 0
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [100 x %struct.SomImportEntry], [100 x %struct.SomImportEntry]* %14, i64 0, i64 %223
  %225 = getelementptr inbounds %struct.SomImportEntry, %struct.SomImportEntry* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %221, i64 %227
  %229 = call i32 @strcpy(i8* %220, i8* %228)
  br label %237

230:                                              ; preds = %185
  %231 = load %struct.objfile*, %struct.objfile** %3, align 8
  %232 = getelementptr inbounds %struct.objfile, %struct.objfile* %231, i32 0, i32 0
  %233 = load i8**, i8*** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* null, i8** %236, align 8
  br label %237

237:                                              ; preds = %230, %193
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %11, align 4
  br label %181

243:                                              ; preds = %181
  %244 = load i32, i32* %5, align 4
  %245 = load %struct.objfile*, %struct.objfile** %3, align 8
  %246 = getelementptr inbounds %struct.objfile, %struct.objfile* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = call i32 @xfree(i8* %247)
  %249 = load i32, i32* %5, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %243, %52, %44, %36, %25
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, ...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
