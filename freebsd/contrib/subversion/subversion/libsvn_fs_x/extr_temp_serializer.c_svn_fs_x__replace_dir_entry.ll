; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__replace_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__replace_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__replace_dir_entry(i8** %0, i64* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
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
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %11, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
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
  br label %221

43:                                               ; preds = %4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = bitcast %struct.TYPE_5__* %44 to i8*
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = bitcast i32* %47 to i8**
  %49 = call i64 @svn_temp_deserializer__ptr(i8* %45, i8** %48)
  %50 = inttoptr i64 %49 to i32**
  store i32** %50, i32*** %13, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = bitcast %struct.TYPE_5__* %51 to i8*
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = bitcast i32* %54 to i8**
  %56 = call i64 @svn_temp_deserializer__ptr(i8* %52, i8** %55)
  %57 = inttoptr i64 %56 to i32**
  store i32** %57, i32*** %14, align 8
  %58 = load i32**, i32*** %13, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @find_entry(i32** %58, i32 %61, i32 %64, i64* %12)
  store i64 %65, i64* %16, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %120

70:                                               ; preds = %43
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %70
  %74 = load i32**, i32*** %13, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32**, i32*** %13, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %16, align 8
  %86 = sub i64 %84, %85
  %87 = mul i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memmove(i32** %76, i32** %80, i32 %88)
  %90 = load i32**, i32*** %14, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32**, i32*** %14, align 8
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %16, align 8
  %102 = sub i64 %100, %101
  %103 = mul i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memmove(i32** %92, i32** %96, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %73, %70
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %119, i32** %5, align 8
  br label %221

120:                                              ; preds = %43
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %179, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i8**, i8*** %6, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32* @slowly_replace_dir_entry(i8** %129, i64* %130, i8* %131, i32* %132)
  store i32* %133, i32** %5, align 8
  br label %221

134:                                              ; preds = %123
  %135 = load i32**, i32*** %13, align 8
  %136 = load i64, i64* %16, align 8
  %137 = add i64 %136, 1
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32**, i32*** %13, align 8
  %140 = load i64, i64* %16, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %16, align 8
  %147 = sub i64 %145, %146
  %148 = mul i64 8, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memmove(i32** %138, i32** %141, i32 %149)
  %151 = load i32**, i32*** %14, align 8
  %152 = load i64, i64* %16, align 8
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32**, i32*** %14, align 8
  %156 = load i64, i64* %16, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %16, align 8
  %163 = sub i64 %161, %162
  %164 = mul i64 8, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memmove(i32** %154, i32** %157, i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, -1
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %134, %120
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32**, i32*** %13, align 8
  %184 = load i64, i64* %16, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  store i32* %182, i32** %185, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %187 = load i32**, i32*** %13, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load i64*, i64** %7, align 8
  %192 = load i64, i64* %191, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = call i32* @svn_temp_serializer__init_append(%struct.TYPE_5__* %186, i32** %187, i32 %190, i64 %192, i32* %193)
  store i32* %194, i32** %17, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = load i32**, i32*** %13, align 8
  %197 = load i64, i64* %16, align 8
  %198 = getelementptr inbounds i32*, i32** %196, i64 %197
  %199 = call i32 @serialize_dir_entry(i32* %195, i32** %198, i32** %15)
  %200 = load i32*, i32** %17, align 8
  %201 = load i8**, i8*** %6, align 8
  %202 = load i64*, i64** %7, align 8
  %203 = load i32, i32* @TRUE, align 4
  %204 = call i32 @return_serialized_dir_context(i32* %200, i8** %201, i64* %202, i32 %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load i8**, i8*** %6, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = bitcast i8* %207 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %208, %struct.TYPE_5__** %11, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %210 = bitcast %struct.TYPE_5__* %209 to i8*
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 3
  %213 = bitcast i32* %212 to i8**
  %214 = call i64 @svn_temp_deserializer__ptr(i8* %210, i8** %213)
  %215 = inttoptr i64 %214 to i32**
  store i32** %215, i32*** %14, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load i32**, i32*** %14, align 8
  %218 = load i64, i64* %16, align 8
  %219 = getelementptr inbounds i32*, i32** %217, i64 %218
  store i32* %216, i32** %219, align 8
  %220 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %220, i32** %5, align 8
  br label %221

221:                                              ; preds = %179, %128, %118, %37
  %222 = load i32*, i32** %5, align 8
  ret i32* %222
}

declare dso_local i32* @slowly_replace_dir_entry(i8**, i64*, i8*, i32*) #1

declare dso_local i64 @svn_temp_deserializer__ptr(i8*, i8**) #1

declare dso_local i64 @find_entry(i32**, i32, i32, i64*) #1

declare dso_local i32 @memmove(i32**, i32**, i32) #1

declare dso_local i32* @svn_temp_serializer__init_append(%struct.TYPE_5__*, i32**, i32, i64, i32*) #1

declare dso_local i32 @serialize_dir_entry(i32*, i32**, i32**) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @return_serialized_dir_context(i32*, i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
