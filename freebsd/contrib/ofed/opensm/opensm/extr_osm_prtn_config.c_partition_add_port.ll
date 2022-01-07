; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i64, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@LIMITED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@BOTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"limited\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"PARSE WARN: line %d: unrecognized port flag '%s'. Assume 'limited'\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ALL_CAS\00", align 1
@IB_NODE_TYPE_CA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"ALL_SWITCHES\00", align 1
@IB_NODE_TYPE_SWITCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"ALL_ROUTERS\00", align 1
@IB_NODE_TYPE_ROUTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"SELF\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.part_conf*, i8*, i8*)* @partition_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_add_port(i32 %0, %struct.part_conf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.part_conf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.part_conf* %1, %struct.part_conf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %15 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %18 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %22, %4
  store i32 0, i32* %5, align 4
  br label %208

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load i64, i64* @LIMITED, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* @FULL, align 8
  store i64 %44, i64* %12, align 8
  br label %69

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* @BOTH, align 8
  store i64 %52, i64* %12, align 8
  br label %68

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %61 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @OSM_LOG(i32 %62, i32 %63, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %59, %53
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @partition_add_all(%struct.part_conf* %77, i32* %78, i32 0, i64 %79)
  store i32 %80, i32* %5, align 4
  br label %208

81:                                               ; preds = %70
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @IB_NODE_TYPE_CA, align 4
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @partition_add_all(%struct.part_conf* %88, i32* %89, i32 %90, i64 %91)
  store i32 %92, i32* %5, align 4
  br label %208

93:                                               ; preds = %81
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i64 @strncmp(i8* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* @IB_NODE_TYPE_SWITCH, align 4
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @partition_add_all(%struct.part_conf* %100, i32* %101, i32 %102, i64 %103)
  store i32 %104, i32* %5, align 4
  br label %208

105:                                              ; preds = %93
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* @IB_NODE_TYPE_ROUTER, align 4
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @partition_add_all(%struct.part_conf* %112, i32* %113, i32 %114, i64 %115)
  store i32 %116, i32* %5, align 4
  br label %208

117:                                              ; preds = %105
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = call i64 @strncmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %117
  %124 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %125 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cl_ntoh64(i32 %128)
  store i32 %129, i32* %11, align 4
  br label %142

130:                                              ; preds = %117
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @strtoull(i8* %131, i8** %13, i32 0)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %13, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %130
  store i32 -1, i32* %5, align 4
  br label %208

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @manage_membership_change(%struct.part_conf* %147, i32* %148, i32 255, i64 %149, i32 %150)
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* @LIMITED, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %146
  %156 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %157 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %160 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @cl_hton64(i32 %163)
  %165 = load i32, i32* @TRUE, align 4
  %166 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %167 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @osm_prtn_add_port(i32 %158, %struct.TYPE_4__* %161, i32* %162, i32 %164, i32 %165, i32 %168)
  %170 = load i64, i64* @IB_SUCCESS, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %155
  store i32 -1, i32* %5, align 4
  br label %208

173:                                              ; preds = %155, %146
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* @LIMITED, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* @BOTH, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %183 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %182, i32 0, i32 2
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %181, %173
  %190 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %191 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %194 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @cl_hton64(i32 %197)
  %199 = load i32, i32* @FALSE, align 4
  %200 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %201 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @osm_prtn_add_port(i32 %192, %struct.TYPE_4__* %195, i32* %196, i32 %198, i32 %199, i32 %202)
  %204 = load i64, i64* @IB_SUCCESS, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %189
  store i32 -1, i32* %5, align 4
  br label %208

207:                                              ; preds = %189, %181, %177
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %206, %172, %140, %111, %99, %87, %76, %32
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @partition_add_all(%struct.part_conf*, i32*, i32, i64) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @manage_membership_change(%struct.part_conf*, i32*, i32, i64, i32) #1

declare dso_local i64 @osm_prtn_add_port(i32, %struct.TYPE_4__*, i32*, i32, i32, i32) #1

declare dso_local i32 @cl_hton64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
