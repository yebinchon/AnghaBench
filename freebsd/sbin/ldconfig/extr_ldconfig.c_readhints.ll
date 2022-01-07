; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_readhints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_readhints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shlib_list = type { %struct.shlib_list*, i32, i32, i8*, i8* }
%struct.hints_header = type { i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.hints_bucket = type { i64, i64, i32, i32 }

@hints_file = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: bad magic: %lo\00", align 1
@LD_HINTS_VERSION_1 = common dso_local global i64 0, align 8
@LD_HINTS_VERSION_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported version: %ld\00", align 1
@rescan = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"%s too old and does not contain the search path\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"readhints\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"bad name index: %#x\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"bad path index: %#x\00", align 1
@shlib_tail = common dso_local global %struct.shlib_list** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @readhints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readhints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hints_header*, align 8
  %7 = alloca %struct.hints_bucket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shlib_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hints_bucket*, align 8
  %12 = load i32, i32* @hints_file, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %2, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @hints_file, align 4
  %18 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %1, align 4
  br label %232

19:                                               ; preds = %0
  %20 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @MAP_PRIVATE, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i8* @mmap(i32 0, i64 %21, i32 %22, i32 %23, i32 %24, i32 0)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** @MAP_FAILED, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @hints_file, align 4
  %31 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %1, align 4
  br label %232

32:                                               ; preds = %19
  %33 = load i8*, i8** %3, align 8
  %34 = bitcast i8* %33 to %struct.hints_header*
  store %struct.hints_header* %34, %struct.hints_header** %6, align 8
  %35 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %36 = call i64 @HH_BADMAG(%struct.hints_header* byval(%struct.hints_header) align 8 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @hints_file, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %42 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43)
  store i32 -1, i32* %1, align 4
  br label %232

45:                                               ; preds = %32
  %46 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %47 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LD_HINTS_VERSION_1, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %53 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LD_HINTS_VERSION_2, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %59 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  store i32 -1, i32* %1, align 4
  br label %232

62:                                               ; preds = %51, %45
  %63 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %64 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %70 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %4, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @munmap(i8* %72, i64 %73)
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* @PROT_READ, align 4
  %77 = load i32, i32* @MAP_PRIVATE, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i8* @mmap(i32 0, i64 %75, i32 %76, i32 %77, i32 %78, i32 0)
  store i8* %79, i8** %3, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** @MAP_FAILED, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* @hints_file, align 4
  %85 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %1, align 4
  br label %232

86:                                               ; preds = %68
  %87 = load i8*, i8** %3, align 8
  %88 = bitcast i8* %87 to %struct.hints_header*
  store %struct.hints_header* %88, %struct.hints_header** %6, align 8
  br label %89

89:                                               ; preds = %86, %62
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i8*, i8** %3, align 8
  %93 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %94 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %99 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LD_HINTS_VERSION_2, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %89
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %106 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = call i32 @add_search_path(i8* %109)
  br label %118

111:                                              ; preds = %89
  %112 = load i64, i64* @rescan, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @hints_file, align 4
  %116 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i64, i64* @rescan, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %1, align 4
  br label %232

122:                                              ; preds = %118
  %123 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %124 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = mul i64 24, %126
  %128 = trunc i64 %127 to i32
  %129 = call %struct.hints_bucket* @malloc(i32 %128)
  store %struct.hints_bucket* %129, %struct.hints_bucket** %7, align 8
  %130 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %131 = icmp eq %struct.hints_bucket* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %122
  %135 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %138 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %143 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = mul i64 24, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memcpy(%struct.hints_bucket* %135, i8* %141, i32 %147)
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %226, %134
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %152 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %229

155:                                              ; preds = %149
  %156 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %156, i64 %158
  store %struct.hints_bucket* %159, %struct.hints_bucket** %11, align 8
  %160 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %161 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %164 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %162, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %155
  %168 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %169 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %170)
  %172 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %173 = call i32 @free(%struct.hints_bucket* %172)
  store i32 -1, i32* %1, align 4
  br label %232

174:                                              ; preds = %155
  %175 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %176 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.hints_header*, %struct.hints_header** %6, align 8
  %179 = getelementptr inbounds %struct.hints_header, %struct.hints_header* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %177, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %184 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (i8*, i64, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %185)
  %187 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %188 = call i32 @free(%struct.hints_bucket* %187)
  store i32 -1, i32* %1, align 4
  br label %232

189:                                              ; preds = %174
  %190 = call i64 @xmalloc(i32 32)
  %191 = inttoptr i64 %190 to %struct.shlib_list*
  store %struct.shlib_list* %191, %struct.shlib_list** %9, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %194 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = call i8* @strdup(i8* %196)
  %198 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %199 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %198, i32 0, i32 4
  store i8* %197, i8** %199, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %202 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = call i8* @strdup(i8* %204)
  %206 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %207 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  %208 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %209 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %212 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @bcopy(i32 %210, i32 %213, i32 4)
  %215 = load %struct.hints_bucket*, %struct.hints_bucket** %11, align 8
  %216 = getelementptr inbounds %struct.hints_bucket, %struct.hints_bucket* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %219 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  %220 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %221 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %220, i32 0, i32 0
  store %struct.shlib_list* null, %struct.shlib_list** %221, align 8
  %222 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %223 = load %struct.shlib_list**, %struct.shlib_list*** @shlib_tail, align 8
  store %struct.shlib_list* %222, %struct.shlib_list** %223, align 8
  %224 = load %struct.shlib_list*, %struct.shlib_list** %9, align 8
  %225 = getelementptr inbounds %struct.shlib_list, %struct.shlib_list* %224, i32 0, i32 0
  store %struct.shlib_list** %225, %struct.shlib_list*** @shlib_tail, align 8
  br label %226

226:                                              ; preds = %189
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %10, align 4
  br label %149

229:                                              ; preds = %149
  %230 = load %struct.hints_bucket*, %struct.hints_bucket** %7, align 8
  %231 = call i32 @free(%struct.hints_bucket* %230)
  store i32 0, i32* %1, align 4
  br label %232

232:                                              ; preds = %229, %182, %167, %121, %83, %57, %38, %29, %16
  %233 = load i32, i32* %1, align 4
  ret i32 %233
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @HH_BADMAG(%struct.hints_header* byval(%struct.hints_header) align 8) #1

declare dso_local i32 @warnx(i8*, i64, ...) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @add_search_path(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local %struct.hints_bucket* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.hints_bucket*, i8*, i32) #1

declare dso_local i32 @free(%struct.hints_bucket*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
