; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/part/extr_geom_part.c_gpart_bootcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/part/extr_geom_part.c_gpart_bootcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.gmesh = type { i32 }
%struct.gclass = type { i32 }
%struct.ggeom = type { i32 }

@GPART_PARAM_BOOTCODE = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cannot get GEOM tree\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Class %s not found.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"No such geom: %s.\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Scheme not found for geom %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"VTOC8\00", align 1
@GPART_PARAM_PARTCODE = common dso_local global i8* null, align 8
@VTOC_BOOTSIZE = common dso_local global i64 0, align 8
@GPART_PARAM_INDEX = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"-i is only valid with -p\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"invalid partition index\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"missing -i option\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"invalid bootcode\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"no -b nor -p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i32)* @gpart_bootcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpart_bootcode(%struct.gctl_req* %0, i32 %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmesh, align 4
  %6 = alloca %struct.gclass*, align 8
  %7 = alloca %struct.ggeom*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = load i8*, i8** @GPART_PARAM_BOOTCODE, align 8
  %18 = call i64 @gctl_has_param(%struct.gctl_req* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %22 = load i8*, i8** @GPART_PARAM_BOOTCODE, align 8
  %23 = call i8* @gctl_get_ascii(%struct.gctl_req* %21, i8* %22)
  store i8* %23, i8** %8, align 8
  store i64 819200, i64* %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @gpart_bootfile_read(i8* %24, i64* %11)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = load i8*, i8** @GPART_PARAM_BOOTCODE, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @gctl_change_param(%struct.gctl_req* %26, i8* %27, i64 %28, i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @errc(i32 %34, i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %20
  br label %39

38:                                               ; preds = %2
  store i8* null, i8** %9, align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i8* @gctl_get_ascii(%struct.gctl_req* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (...) @abort() #3
  unreachable

46:                                               ; preds = %39
  %47 = call i32 @geom_gettree(%struct.gmesh* %5)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @errc(i32 %51, i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** %8, align 8
  %56 = call %struct.gclass* @find_class(%struct.gmesh* %5, i8* %55)
  store %struct.gclass* %56, %struct.gclass** %6, align 8
  %57 = load %struct.gclass*, %struct.gclass** %6, align 8
  %58 = icmp eq %struct.gclass* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call i32 @geom_deletetree(%struct.gmesh* %5)
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i32, i8*, ...) @errx(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %66 = call i32 @gctl_get_int(%struct.gctl_req* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EXIT_FAILURE, align 4
  %70 = call i32 (i32, i8*, ...) @errx(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %73 = call i8* @gctl_get_ascii(%struct.gctl_req* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (...) @abort() #3
  unreachable

78:                                               ; preds = %71
  %79 = load %struct.gclass*, %struct.gclass** %6, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call %struct.ggeom* @find_geom(%struct.gclass* %79, i8* %80)
  store %struct.ggeom* %81, %struct.ggeom** %7, align 8
  %82 = load %struct.ggeom*, %struct.ggeom** %7, align 8
  %83 = icmp eq %struct.ggeom* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i32, i8*, ...) @errx(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.ggeom*, %struct.ggeom** %7, align 8
  %90 = call i8* @find_geomcfg(%struct.ggeom* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  %95 = load %struct.ggeom*, %struct.ggeom** %7, align 8
  %96 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @errx(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %15, align 4
  br label %105

104:                                              ; preds = %99
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %107 = load i8*, i8** @GPART_PARAM_PARTCODE, align 8
  %108 = call i64 @gctl_has_param(%struct.gctl_req* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %112 = load i8*, i8** @GPART_PARAM_PARTCODE, align 8
  %113 = call i8* @gctl_get_ascii(%struct.gctl_req* %111, i8* %112)
  store i8* %113, i8** %8, align 8
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @VTOC_BOOTSIZE, align 8
  store i64 %117, i64* %12, align 8
  br label %119

118:                                              ; preds = %110
  store i64 1048576, i64* %12, align 8
  br label %119

119:                                              ; preds = %118, %116
  %120 = load i8*, i8** %8, align 8
  %121 = call i8* @gpart_bootfile_read(i8* %120, i64* %12)
  store i8* %121, i8** %10, align 8
  %122 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %123 = load i8*, i8** @GPART_PARAM_PARTCODE, align 8
  %124 = call i32 @gctl_delete_param(%struct.gctl_req* %122, i8* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @EXIT_FAILURE, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @errc(i32 %128, i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %119
  br label %133

132:                                              ; preds = %105
  store i8* null, i8** %10, align 8
  br label %133

133:                                              ; preds = %132, %131
  %134 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %135 = load i8*, i8** @GPART_PARAM_INDEX, align 8
  %136 = call i64 @gctl_has_param(%struct.gctl_req* %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  %143 = call i32 (i32, i8*, ...) @errx(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %146 = load i8*, i8** @GPART_PARAM_INDEX, align 8
  %147 = call i64 @gctl_get_intmax(%struct.gctl_req* %145, i8* %146)
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* @EXIT_FAILURE, align 4
  %153 = call i32 (i32, i8*, ...) @errx(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %156 = load i8*, i8** @GPART_PARAM_INDEX, align 8
  %157 = call i32 @gctl_delete_param(%struct.gctl_req* %155, i8* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @EXIT_FAILURE, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @errc(i32 %161, i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %154
  br label %166

165:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %164
  %167 = load i8*, i8** %10, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %197

169:                                              ; preds = %166
  %170 = load i32, i32* %15, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @EXIT_FAILURE, align 4
  %177 = call i32 (i32, i8*, ...) @errx(i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %172
  %179 = load %struct.ggeom*, %struct.ggeom** %7, align 8
  %180 = load i32, i32* %14, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @gpart_write_partcode(%struct.ggeom* %179, i32 %180, i8* %181, i64 %182)
  br label %196

184:                                              ; preds = %169
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* @VTOC_BOOTSIZE, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* @EXIT_FAILURE, align 4
  %190 = call i32 (i32, i8*, ...) @errx(i32 %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %184
  %192 = load %struct.ggeom*, %struct.ggeom** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @gpart_write_partcode_vtoc8(%struct.ggeom* %192, i32 %193, i8* %194)
  br label %196

196:                                              ; preds = %191, %178
  br label %204

197:                                              ; preds = %166
  %198 = load i8*, i8** %9, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @EXIT_FAILURE, align 4
  %202 = call i32 (i32, i8*, ...) @errx(i32 %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  br label %204

204:                                              ; preds = %203, %196
  %205 = load i8*, i8** %9, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @gpart_issue(%struct.gctl_req* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %204
  %212 = call i32 @geom_deletetree(%struct.gmesh* %5)
  %213 = load i8*, i8** %10, align 8
  %214 = call i32 @free(i8* %213)
  ret void
}

declare dso_local i64 @gctl_has_param(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gpart_bootfile_read(i8*, i64*) #1

declare dso_local i32 @gctl_change_param(%struct.gctl_req*, i8*, i64, i8*) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @geom_gettree(%struct.gmesh*) #1

declare dso_local %struct.gclass* @find_class(%struct.gmesh*, i8*) #1

declare dso_local i32 @geom_deletetree(%struct.gmesh*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local %struct.ggeom* @find_geom(%struct.gclass*, i8*) #1

declare dso_local i8* @find_geomcfg(%struct.ggeom*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gctl_delete_param(%struct.gctl_req*, i8*) #1

declare dso_local i64 @gctl_get_intmax(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gpart_write_partcode(%struct.ggeom*, i32, i8*, i64) #1

declare dso_local i32 @gpart_write_partcode_vtoc8(%struct.ggeom*, i32, i8*) #1

declare dso_local i32 @gpart_issue(%struct.gctl_req*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
