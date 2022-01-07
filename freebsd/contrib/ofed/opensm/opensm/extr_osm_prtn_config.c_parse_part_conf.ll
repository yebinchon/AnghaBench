; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_part_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_part_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32, i64 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PARSE ERROR: line %d: no partition definition found\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\0APARSE ERROR: line %d: no partition definition found\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"PARSE ERROR: line %d: bad partition flags\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\0APARSE ERROR: line %d: bad partition flags\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"PARSE ERROR: line %d: bad partition definition\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\0APARSE ERROR: line %d: bad partition definition\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mgid\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"PARSE ERROR: line %d: bad PortGUID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.part_conf*, i8*, i32)* @parse_part_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_part_conf(%struct.part_conf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.part_conf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.part_conf* %0, %struct.part_conf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %15, align 8
  %17 = load i8*, i8** %15, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %15, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %15, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21, %3
  %32 = load i8*, i8** %15, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %15, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %15, align 8
  store i8* %43, i8** %6, align 8
  %44 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %45 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %147

49:                                               ; preds = %34
  %50 = load i8*, i8** %15, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 58)
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %56 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OSM_LOG_ERROR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @OSM_LOG(i32 %57, i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %4, align 4
  br label %206

64:                                               ; preds = %49
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  store i8 0, i8* %65, align 1
  %67 = load i8*, i8** %14, align 8
  store i8* %67, i8** %6, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 44)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i8*, i8** %14, align 8
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @parse_name_token(i8* %75, i8** %10, i8** %11)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %15, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %110, %74
  %85 = load i8*, i8** %14, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %123

87:                                               ; preds = %84
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 44)
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %14, align 8
  store i8 0, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @parse_name_token(i8* %96, i8** %12, i8** %13)
  store i32 %97, i32* %8, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %102 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @OSM_LOG_ERROR, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @OSM_LOG(i32 %103, i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  store i32 -1, i32* %4, align 4
  br label %206

110:                                              ; preds = %95
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %15, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @partition_add_flag(i32 %118, %struct.part_conf* %119, i8* %120, i8* %121)
  br label %84

123:                                              ; preds = %84
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = icmp ne i8* %124, %125
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i64 @partition_create(i32 %128, %struct.part_conf* %129, i8* %130, i8* %131, i8* %132, i8* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %127, %123
  %137 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %138 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @OSM_LOG_ERROR, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @OSM_LOG(i32 %139, i32 %140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @stderr, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @fprintf(i32 %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  store i32 -1, i32* %4, align 4
  br label %206

146:                                              ; preds = %127
  br label %147

147:                                              ; preds = %146, %48
  br label %148

148:                                              ; preds = %200, %147
  store i8* null, i8** %12, align 8
  store i8* null, i8** %10, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i8* @strchr(i8* %149, i8 signext 44)
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i8*, i8** %14, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %14, align 8
  store i8 0, i8* %154, align 1
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i8*, i8** %15, align 8
  %158 = call i32 @parse_name_token(i8* %157, i8** %10, i8** %12)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load i8*, i8** %15, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8*, i8** %12, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %173 = call i64 @mgroup_create(i8* %169, i8* %170, i32 %171, %struct.part_conf* %172)
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %9, align 4
  br label %204

178:                                              ; preds = %156
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = call i64 @partition_add_port(i32 %179, %struct.part_conf* %180, i8* %181, i8* %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %187 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @OSM_LOG_ERROR, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @OSM_LOG(i32 %188, i32 %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @stderr, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @fprintf(i32 %192, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  store i32 -1, i32* %4, align 4
  br label %206

195:                                              ; preds = %178
  %196 = load i32, i32* %8, align 4
  %197 = load i8*, i8** %15, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %15, align 8
  br label %200

200:                                              ; preds = %195
  %201 = load i8*, i8** %14, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %148, label %203

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %203, %165
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %204, %185, %136, %100, %54
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @parse_name_token(i8*, i8**, i8**) #1

declare dso_local i32 @partition_add_flag(i32, %struct.part_conf*, i8*, i8*) #1

declare dso_local i64 @partition_create(i32, %struct.part_conf*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @mgroup_create(i8*, i8*, i32, %struct.part_conf*) #1

declare dso_local i64 @partition_add_port(i32, %struct.part_conf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
