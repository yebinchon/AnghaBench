; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinit_data = type { i64*, i64*, i64*, i64*, i64*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"k:s:i:o:Rh\00", align 1
@optarg = common dso_local global i8* null, align 8
@input_f = common dso_local global i32* null, align 8
@output_f = common dso_local global i32* null, align 8
@opt_R = common dso_local global i64 0, align 8
@keyword = common dso_local global i32* null, align 8
@struct_name = common dso_local global i32* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@input_file = common dso_local global i64 0, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not open input file: %s\00", align 1
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@output_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not open output file: %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@input_ptr = common dso_local global i8* null, align 8
@input_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Input file size is not divisible by %u\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not seek to start of input file\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not read input file\00", align 1
@start = common dso_local global %struct.sysinit_data** null, align 8
@stop = common dso_local global %struct.sysinit_data** null, align 8
@endian32 = common dso_local global i32 0, align 4
@compare = common dso_local global i32 0, align 4
@compare_R = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sysinit\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sysuninit\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Unknown keyword '%s'\00", align 1
@success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sysinit_data**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %30 [
    i32 105, label %17
    i32 111, label %20
    i32 82, label %23
    i32 107, label %24
    i32 115, label %27
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** @input_f, align 8
  br label %32

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** @output_f, align 8
  br label %32

23:                                               ; preds = %15
  store i64 1, i64* @opt_R, align 8
  br label %32

24:                                               ; preds = %15
  %25 = load i8*, i8** @optarg, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** @keyword, align 8
  br label %32

27:                                               ; preds = %15
  %28 = load i8*, i8** @optarg, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** @struct_name, align 8
  br label %32

30:                                               ; preds = %15
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27, %24, %23, %20, %17
  br label %10

33:                                               ; preds = %10
  %34 = load i32*, i32** @input_f, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** @output_f, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** @struct_name, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** @keyword, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39, %36, %33
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %42
  %48 = call i32 @atexit(i32 (...)* @cleanup)
  %49 = call i32 (...) @cleanup()
  %50 = load i32*, i32** @input_f, align 8
  %51 = load i32, i32* @O_RDONLY, align 4
  %52 = call i64 (i32*, i32, ...) @open(i32* %50, i32 %51)
  store i64 %52, i64* @input_file, align 8
  %53 = load i64, i64* @input_file, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @EX_SOFTWARE, align 4
  %57 = load i32*, i32** @input_f, align 8
  %58 = call i32 (i32, i8*, ...) @err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32*, i32** @output_f, align 8
  %61 = load i32, i32* @O_TRUNC, align 4
  %62 = load i32, i32* @O_CREAT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @O_RDWR, align 4
  %65 = or i32 %63, %64
  %66 = call i64 (i32*, i32, ...) @open(i32* %60, i32 %65, i32 384)
  store i64 %66, i64* @output_file, align 8
  %67 = load i64, i64* @output_file, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* @EX_SOFTWARE, align 4
  %71 = load i32*, i32** @output_f, align 8
  %72 = call i32 (i32, i8*, ...) @err(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %71)
  br label %73

73:                                               ; preds = %69, %59
  %74 = load i64, i64* @input_file, align 8
  %75 = load i32, i32* @SEEK_END, align 4
  %76 = call i64 @lseek(i64 %74, i32 0, i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i8* @do_malloc(i32 %78)
  store i8* %79, i8** @input_ptr, align 8
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* @input_len, align 4
  %82 = load i32, i32* @input_len, align 4
  %83 = srem i32 %82, 72
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @EX_SOFTWARE, align 4
  %87 = call i32 @errx(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 72)
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i64, i64* @input_file, align 8
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i64 @lseek(i64 %89, i32 0, i32 %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EX_SOFTWARE, align 4
  %96 = call i32 (i32, i8*, ...) @err(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i64, i64* @input_file, align 8
  %99 = load i8*, i8** @input_ptr, align 8
  %100 = load i32, i32* @input_len, align 4
  %101 = call i32 @read(i64 %98, i8* %99, i32 %100)
  %102 = load i32, i32* @input_len, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EX_SOFTWARE, align 4
  %106 = call i32 (i32, i8*, ...) @err(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i32, i32* @input_len, align 4
  %109 = sdiv i32 %108, 72
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = call i8* @do_malloc(i32 %113)
  %115 = bitcast i8* %114 to %struct.sysinit_data**
  store %struct.sysinit_data** %115, %struct.sysinit_data*** @start, align 8
  %116 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.sysinit_data*, %struct.sysinit_data** %116, i64 %118
  store %struct.sysinit_data** %119, %struct.sysinit_data*** @stop, align 8
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %134, %107
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load i8*, i8** @input_ptr, align 8
  %126 = bitcast i8* %125 to %struct.sysinit_data*
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %126, i64 %128
  %130 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.sysinit_data*, %struct.sysinit_data** %130, i64 %132
  store %struct.sysinit_data* %129, %struct.sysinit_data** %133, align 8
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %120

137:                                              ; preds = %120
  %138 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %139 = load %struct.sysinit_data**, %struct.sysinit_data*** @stop, align 8
  %140 = icmp ne %struct.sysinit_data** %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %143 = load %struct.sysinit_data*, %struct.sysinit_data** %142, align 8
  %144 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* @endian32, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  store %struct.sysinit_data** %147, %struct.sysinit_data*** %6, align 8
  br label %148

148:                                              ; preds = %177, %146
  %149 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %150 = load %struct.sysinit_data**, %struct.sysinit_data*** @stop, align 8
  %151 = icmp ult %struct.sysinit_data** %149, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %148
  %153 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %154 = load %struct.sysinit_data*, %struct.sysinit_data** %153, align 8
  %155 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %154, i32 0, i32 7
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @read32(i8* %156)
  %158 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %159 = load %struct.sysinit_data*, %struct.sysinit_data** %158, align 8
  %160 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %159, i32 0, i32 7
  store i8* %157, i8** %160, align 8
  %161 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %162 = load %struct.sysinit_data*, %struct.sysinit_data** %161, align 8
  %163 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @read32(i8* %164)
  %166 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %167 = load %struct.sysinit_data*, %struct.sysinit_data** %166, align 8
  %168 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %167, i32 0, i32 6
  store i8* %165, i8** %168, align 8
  %169 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %170 = load %struct.sysinit_data*, %struct.sysinit_data** %169, align 8
  %171 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %170, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @read32(i8* %172)
  %174 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %175 = load %struct.sysinit_data*, %struct.sysinit_data** %174, align 8
  %176 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %175, i32 0, i32 5
  store i8* %173, i8** %176, align 8
  br label %177

177:                                              ; preds = %152
  %178 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %179 = getelementptr inbounds %struct.sysinit_data*, %struct.sysinit_data** %178, i32 1
  store %struct.sysinit_data** %179, %struct.sysinit_data*** %6, align 8
  br label %148

180:                                              ; preds = %148
  %181 = load i64, i64* @opt_R, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @qsort(%struct.sysinit_data** %184, i32 %185, i32 8, i32* @compare)
  br label %191

187:                                              ; preds = %180
  %188 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @qsort(%struct.sysinit_data** %188, i32 %189, i32 8, i32* @compare_R)
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.sysinit_data**, %struct.sysinit_data*** @start, align 8
  store %struct.sysinit_data** %192, %struct.sysinit_data*** %6, align 8
  br label %193

193:                                              ; preds = %223, %191
  %194 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %195 = load %struct.sysinit_data**, %struct.sysinit_data*** @stop, align 8
  %196 = icmp ult %struct.sysinit_data** %194, %195
  br i1 %196, label %197, label %226

197:                                              ; preds = %193
  %198 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %199 = load %struct.sysinit_data*, %struct.sysinit_data** %198, align 8
  %200 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %199, i32 0, i32 4
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 7
  store i64 0, i64* %202, align 8
  %203 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %204 = load %struct.sysinit_data*, %struct.sysinit_data** %203, align 8
  %205 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %204, i32 0, i32 3
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 7
  store i64 0, i64* %207, align 8
  %208 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %209 = load %struct.sysinit_data*, %struct.sysinit_data** %208, align 8
  %210 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %209, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 7
  store i64 0, i64* %212, align 8
  %213 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %214 = load %struct.sysinit_data*, %struct.sysinit_data** %213, align 8
  %215 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 7
  store i64 0, i64* %217, align 8
  %218 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %219 = load %struct.sysinit_data*, %struct.sysinit_data** %218, align 8
  %220 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 7
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %197
  %224 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %225 = getelementptr inbounds %struct.sysinit_data*, %struct.sysinit_data** %224, i32 1
  store %struct.sysinit_data** %225, %struct.sysinit_data*** %6, align 8
  br label %193

226:                                              ; preds = %193
  %227 = load i32*, i32** @keyword, align 8
  %228 = call i64 @strcmp(i32* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = call i32 (...) @do_sysinit()
  br label %244

232:                                              ; preds = %226
  %233 = load i32*, i32** @keyword, align 8
  %234 = call i64 @strcmp(i32* %233, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = call i32 (...) @do_sysinit()
  br label %243

238:                                              ; preds = %232
  %239 = load i32, i32* @EX_USAGE, align 4
  %240 = load i32*, i32** @keyword, align 8
  %241 = ptrtoint i32* %240 to i32
  %242 = call i32 @errx(i32 %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %238, %236
  br label %244

244:                                              ; preds = %243, %230
  store i32 1, i32* @success, align 4
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atexit(i32 (...)*) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i64 @open(i32*, i32, ...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @lseek(i64, i32, i32) #1

declare dso_local i8* @do_malloc(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i8* @read32(i8*) #1

declare dso_local i32 @qsort(%struct.sysinit_data**, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @do_sysinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
