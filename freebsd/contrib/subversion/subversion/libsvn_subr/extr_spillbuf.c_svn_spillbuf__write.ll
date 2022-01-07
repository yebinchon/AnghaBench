; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, %struct.memblock_t*, %struct.memblock_t*, i32, i32*, i64, i32, i64, i32, i32 }
%struct.memblock_t = type { i8*, i64, %struct.memblock_t* }

@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@APR_END = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_spillbuf__write(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.memblock_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %85

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %17
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @svn_io_file_del_on_close, align 4
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @svn_io_file_del_none, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @svn_io_open_unique_file3(i32** %29, i32* %31, i32 %34, i32 %44, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %43
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load %struct.memblock_t*, %struct.memblock_t** %57, align 8
  store %struct.memblock_t* %58, %struct.memblock_t** %10, align 8
  br label %59

59:                                               ; preds = %62, %55
  %60 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %61 = icmp ne %struct.memblock_t* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %67 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %70 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @svn_io_file_write_full(i32* %65, i8* %68, i64 %71, i32* null, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %76 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %75, i32 0, i32 2
  %77 = load %struct.memblock_t*, %struct.memblock_t** %76, align 8
  store %struct.memblock_t* %77, %struct.memblock_t** %10, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %43
  br label %85

85:                                               ; preds = %84, %17, %4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @APR_END, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @svn_io_file_seek(i32* %93, i32 %94, i32* %11, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  %100 = load i32*, i32** %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @svn_io_file_write_full(i32* %100, i8* %101, i64 %102, i32* null, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %5, align 8
  br label %214

114:                                              ; preds = %85
  br label %115

115:                                              ; preds = %211, %114
  %116 = load i64, i64* %8, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %212

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load %struct.memblock_t*, %struct.memblock_t** %120, align 8
  %122 = icmp eq %struct.memblock_t* %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load %struct.memblock_t*, %struct.memblock_t** %125, align 8
  %127 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %123, %118
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = call %struct.memblock_t* @get_buffer(%struct.TYPE_4__* %134)
  store %struct.memblock_t* %135, %struct.memblock_t** %10, align 8
  %136 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %137 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %139 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %138, i32 0, i32 2
  store %struct.memblock_t* null, %struct.memblock_t** %139, align 8
  br label %144

140:                                              ; preds = %123
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load %struct.memblock_t*, %struct.memblock_t** %142, align 8
  store %struct.memblock_t* %143, %struct.memblock_t** %10, align 8
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %149 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  store i64 %151, i64* %12, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i64, i64* %8, align 8
  store i64 %156, i64* %12, align 8
  br label %157

157:                                              ; preds = %155, %144
  %158 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %159 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %162 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8*, i8** %7, align 8
  %166 = load i64, i64* %12, align 8
  %167 = call i32 @memcpy(i8* %164, i8* %165, i64 %166)
  %168 = load i64, i64* %12, align 8
  %169 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %170 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %7, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %8, align 8
  %178 = sub nsw i64 %177, %176
  store i64 %178, i64* %8, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  %186 = load %struct.memblock_t*, %struct.memblock_t** %185, align 8
  %187 = icmp eq %struct.memblock_t* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %157
  %189 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  store %struct.memblock_t* %189, %struct.memblock_t** %191, align 8
  %192 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  store %struct.memblock_t* %192, %struct.memblock_t** %194, align 8
  br label %211

195:                                              ; preds = %157
  %196 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 4
  %199 = load %struct.memblock_t*, %struct.memblock_t** %198, align 8
  %200 = icmp ne %struct.memblock_t* %196, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  %205 = load %struct.memblock_t*, %struct.memblock_t** %204, align 8
  %206 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %205, i32 0, i32 2
  store %struct.memblock_t* %202, %struct.memblock_t** %206, align 8
  %207 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  store %struct.memblock_t* %207, %struct.memblock_t** %209, align 8
  br label %210

210:                                              ; preds = %201, %195
  br label %211

211:                                              ; preds = %210, %188
  br label %115

212:                                              ; preds = %115
  %213 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %213, i32** %5, align 8
  br label %214

214:                                              ; preds = %212, %90
  %215 = load i32*, i32** %5, align 8
  ret i32* %215
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i32*, i32*) #1

declare dso_local %struct.memblock_t* @get_buffer(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
