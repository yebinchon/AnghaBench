; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__replace_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__replace_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__replace_dir_entry(i8** %0, i64* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 4
  %35 = add nsw i32 2, %34
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i8**, i8*** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @slowly_replace_dir_entry(i8** %38, i64* %39, i8* %40, i32* %41)
  store i32* %42, i32** %5, align 8
  br label %218

43:                                               ; preds = %4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = bitcast i32* %46 to i8**
  %48 = call i64 @svn_temp_deserializer__ptr(%struct.TYPE_6__* %44, i8** %47)
  %49 = inttoptr i64 %48 to i32**
  store i32** %49, i32*** %13, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = bitcast i32* %52 to i8**
  %54 = call i64 @svn_temp_deserializer__ptr(%struct.TYPE_6__* %50, i8** %53)
  %55 = inttoptr i64 %54 to i32**
  store i32** %55, i32*** %14, align 8
  %56 = load i32**, i32*** %13, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @find_entry(i32** %56, i32 %59, i32 %62, i64* %12)
  store i64 %63, i64* %16, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %118

68:                                               ; preds = %43
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %68
  %72 = load i32**, i32*** %13, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32**, i32*** %13, align 8
  %76 = load i64, i64* %16, align 8
  %77 = add i64 %76, 1
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %16, align 8
  %84 = sub i64 %82, %83
  %85 = mul i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memmove(i32** %74, i32** %78, i32 %86)
  %88 = load i32**, i32*** %14, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32**, i32*** %14, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %16, align 8
  %100 = sub i64 %98, %99
  %101 = mul i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memmove(i32** %90, i32** %94, i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %71, %68
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %218

118:                                              ; preds = %43
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %177, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i8**, i8*** %6, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32* @slowly_replace_dir_entry(i8** %127, i64* %128, i8* %129, i32* %130)
  store i32* %131, i32** %5, align 8
  br label %218

132:                                              ; preds = %121
  %133 = load i32**, i32*** %13, align 8
  %134 = load i64, i64* %16, align 8
  %135 = add i64 %134, 1
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32**, i32*** %13, align 8
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %16, align 8
  %145 = sub i64 %143, %144
  %146 = mul i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memmove(i32** %136, i32** %139, i32 %147)
  %149 = load i32**, i32*** %14, align 8
  %150 = load i64, i64* %16, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32**, i32*** %14, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %16, align 8
  %161 = sub i64 %159, %160
  %162 = mul i64 8, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memmove(i32** %152, i32** %155, i32 %163)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, -1
  store i64 %172, i64* %170, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %132, %118
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32**, i32*** %13, align 8
  %182 = load i64, i64* %16, align 8
  %183 = getelementptr inbounds i32*, i32** %181, i64 %182
  store i32* %180, i32** %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %185 = load i32**, i32*** %13, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i64*, i64** %7, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = call i32* @svn_temp_serializer__init_append(%struct.TYPE_6__* %184, i32** %185, i32 %188, i64 %190, i32* %191)
  store i32* %192, i32** %17, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = load i32**, i32*** %13, align 8
  %195 = load i64, i64* %16, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = call i32 @serialize_dir_entry(i32* %193, i32** %196, i32** %15)
  %198 = load i32*, i32** %17, align 8
  %199 = load i8**, i8*** %6, align 8
  %200 = load i64*, i64** %7, align 8
  %201 = load i32, i32* @TRUE, align 4
  %202 = call i32 @return_serialized_dir_context(i32* %198, i8** %199, i64* %200, i32 %201)
  %203 = call i32 @SVN_ERR(i32 %202)
  %204 = load i8**, i8*** %6, align 8
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %206, %struct.TYPE_6__** %11, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = bitcast i32* %209 to i8**
  %211 = call i64 @svn_temp_deserializer__ptr(%struct.TYPE_6__* %207, i8** %210)
  %212 = inttoptr i64 %211 to i32**
  store i32** %212, i32*** %14, align 8
  %213 = load i32*, i32** %15, align 8
  %214 = load i32**, i32*** %14, align 8
  %215 = load i64, i64* %16, align 8
  %216 = getelementptr inbounds i32*, i32** %214, i64 %215
  store i32* %213, i32** %216, align 8
  %217 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %217, i32** %5, align 8
  br label %218

218:                                              ; preds = %177, %126, %116, %37
  %219 = load i32*, i32** %5, align 8
  ret i32* %219
}

declare dso_local i32* @slowly_replace_dir_entry(i8**, i64*, i8*, i32*) #1

declare dso_local i64 @svn_temp_deserializer__ptr(%struct.TYPE_6__*, i8**) #1

declare dso_local i64 @find_entry(i32**, i32, i32, i64*) #1

declare dso_local i32 @memmove(i32**, i32**, i32) #1

declare dso_local i32* @svn_temp_serializer__init_append(%struct.TYPE_6__*, i32**, i32, i64, i32*) #1

declare dso_local i32 @serialize_dir_entry(i32*, i32**, i32**) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @return_serialized_dir_context(i32*, i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
