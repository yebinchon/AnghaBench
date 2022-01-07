; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_hostent_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_hostent_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"noaliases\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"noaddrs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, i8*)* @hostent_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostent_read_snapshot_func(%struct.hostent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.hostent*, %struct.hostent** %4, align 8
  %15 = call i32 @memset(%struct.hostent* %14, i32 0, i32 24)
  br label %16

16:                                               ; preds = %177, %2
  %17 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %178

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %167 [
    i32 0, label %21
    i32 1, label %33
    i32 2, label %45
    i32 3, label %57
    i32 4, label %104
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @strdup(i8* %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.hostent*, %struct.hostent** %4, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load %struct.hostent*, %struct.hostent** %4, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  br label %168

33:                                               ; preds = %19
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @strtol(i8* %34, i8** %10, i32 10)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.hostent*, %struct.hostent** %4, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %179

44:                                               ; preds = %33
  br label %168

45:                                               ; preds = %19
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strtol(i8* %46, i8** %10, i32 10)
  %48 = trunc i64 %47 to i32
  %49 = load %struct.hostent*, %struct.hostent** %4, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %179

56:                                               ; preds = %45
  br label %168

57:                                               ; preds = %19
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = icmp eq %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %217

65:                                               ; preds = %60
  %66 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %6, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @ATF_REQUIRE(i32 %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @strdup(i8* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @ATF_REQUIRE(i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @sl_add(%struct.TYPE_5__* %81, i8* %82)
  br label %84

84:                                               ; preds = %74, %65
  br label %103

85:                                               ; preds = %57
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %102

92:                                               ; preds = %85
  %93 = load i8*, i8** %8, align 8
  %94 = call i8* @strdup(i8* %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @ATF_REQUIRE(i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @sl_add(%struct.TYPE_5__* %99, i8* %100)
  br label %102

102:                                              ; preds = %92, %89
  br label %103

103:                                              ; preds = %102, %84
  br label %168

104:                                              ; preds = %19
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = icmp eq %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %217

112:                                              ; preds = %107
  %113 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %7, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = icmp ne %struct.TYPE_5__* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @ATF_REQUIRE(i32 %116)
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %112
  %122 = load %struct.hostent*, %struct.hostent** %4, align 8
  %123 = getelementptr inbounds %struct.hostent, %struct.hostent* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @calloc(i32 1, i32 %124)
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = icmp ne i8* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @ATF_REQUIRE(i32 %128)
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.hostent*, %struct.hostent** %4, align 8
  %133 = getelementptr inbounds %struct.hostent, %struct.hostent* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hostent_read_snapshot_addr(i8* %130, i8* %131, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @sl_add(%struct.TYPE_5__* %136, i8* %137)
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %121
  br label %179

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %112
  br label %166

144:                                              ; preds = %104
  %145 = load %struct.hostent*, %struct.hostent** %4, align 8
  %146 = getelementptr inbounds %struct.hostent, %struct.hostent* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @calloc(i32 1, i32 %147)
  store i8* %148, i8** %10, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = icmp ne i8* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @ATF_REQUIRE(i32 %151)
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.hostent*, %struct.hostent** %4, align 8
  %156 = getelementptr inbounds %struct.hostent, %struct.hostent* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @hostent_read_snapshot_addr(i8* %153, i8* %154, i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @sl_add(%struct.TYPE_5__* %159, i8* %160)
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %144
  br label %179

165:                                              ; preds = %144
  br label %166

166:                                              ; preds = %165, %143
  br label %168

167:                                              ; preds = %19
  br label %168

168:                                              ; preds = %167, %166, %103, %56, %44, %21
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 3
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 4
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %174, %171, %168
  br label %16

178:                                              ; preds = %16
  br label %179

179:                                              ; preds = %178, %164, %141, %55, %43
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = icmp ne %struct.TYPE_5__* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %184 = call i32 @sl_add(%struct.TYPE_5__* %183, i8* null)
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hostent*, %struct.hostent** %4, align 8
  %189 = getelementptr inbounds %struct.hostent, %struct.hostent* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %182, %179
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = icmp ne %struct.TYPE_5__* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %195 = call i32 @sl_add(%struct.TYPE_5__* %194, i8* null)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.hostent*, %struct.hostent** %4, align 8
  %200 = getelementptr inbounds %struct.hostent, %struct.hostent* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %193, %190
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 4
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204, %201
  %208 = load %struct.hostent*, %struct.hostent** %4, align 8
  %209 = call i32 @free_hostent(%struct.hostent* %208)
  %210 = load %struct.hostent*, %struct.hostent** %4, align 8
  %211 = call i32 @memset(%struct.hostent* %210, i32 0, i32 24)
  store i32 -1, i32* %3, align 4
  br label %217

212:                                              ; preds = %204
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = call i32 @free(%struct.TYPE_5__* %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %216 = call i32 @free(%struct.TYPE_5__* %215)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %212, %207, %111, %64
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @memset(%struct.hostent*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @sl_init(...) #1

declare dso_local i32 @sl_add(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @hostent_read_snapshot_addr(i8*, i8*, i32) #1

declare dso_local i32 @free_hostent(%struct.hostent*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
