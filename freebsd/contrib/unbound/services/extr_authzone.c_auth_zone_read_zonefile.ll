; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_read_zonefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_read_zonefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i64*, i32, i32, i32, i64 }
%struct.config_file = type { i64* }
%struct.sldns_file_parse_state = type { i32, i32, i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"read zonefile %s for %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"no zonefile %s for %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot open zonefile %s for %s: %s\00", align 1
@auth_data_del = common dso_local global i32 0, align 4
@auth_data_cmp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"error parsing zonefile %s for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zone_read_zonefile(%struct.auth_zone* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sldns_file_parse_state, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %15 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %20 = icmp ne %struct.auth_zone* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %23 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %28 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %21, %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %193

34:                                               ; preds = %26
  %35 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %36 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = bitcast i64* %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load %struct.config_file*, %struct.config_file** %5, align 8
  %40 = getelementptr inbounds %struct.config_file, %struct.config_file* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %34
  %44 = load %struct.config_file*, %struct.config_file** %5, align 8
  %45 = getelementptr inbounds %struct.config_file, %struct.config_file* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.config_file*, %struct.config_file** %5, align 8
  %53 = getelementptr inbounds %struct.config_file, %struct.config_file* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.config_file*, %struct.config_file** %5, align 8
  %56 = getelementptr inbounds %struct.config_file, %struct.config_file* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @strlen(i64* %57)
  %59 = call i64 @strncmp(i8* %51, i64* %54, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.config_file*, %struct.config_file** %5, align 8
  %63 = getelementptr inbounds %struct.config_file, %struct.config_file* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @strlen(i64* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %61, %50, %43, %34
  %70 = load i64, i64* @verbosity, align 8
  %71 = load i64, i64* @VERB_ALGO, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %75 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %78 = call i32 @dname_str(i32 %76, i8* %77)
  %79 = load i64, i64* @VERB_ALGO, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %82 = call i32 @verbose(i64 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %73, %69
  %84 = load i8*, i8** %9, align 8
  %85 = call i32* @fopen(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %131, label %88

88:                                               ; preds = %83
  %89 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %90 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %93 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @sldns_wire2str_dname(i32 %91, i32 %94)
  store i8* %95, i8** %13, align 8
  %96 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %97 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %88
  %101 = load i64, i64* @errno, align 8
  %102 = load i64, i64* @ENOENT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i64, i64* @VERB_ALGO, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i8*, i8** %13, align 8
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %111 ]
  %114 = call i32 @verbose(i64 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %106, i8* %113)
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @free(i8* %115)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %193

117:                                              ; preds = %100, %88
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i8*, i8** %13, align 8
  br label %124

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i8* [ %122, %121 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %123 ]
  %126 = load i64, i64* @errno, align 8
  %127 = call i32 @strerror(i64 %126)
  %128 = call i32 (i8*, i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %125, i32 %127)
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %193

131:                                              ; preds = %83
  %132 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %133 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %132, i32 0, i32 3
  %134 = load i32, i32* @auth_data_del, align 4
  %135 = call i32 @traverse_postorder(i32* %133, i32 %134, i32* null)
  %136 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %137 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %136, i32 0, i32 3
  %138 = call i32 @rbtree_init(i32* %137, i32* @auth_data_cmp)
  %139 = call i32 @memset(%struct.sldns_file_parse_state* %8, i32 0, i32 12)
  %140 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 0
  store i32 3600, i32* %140, align 4
  %141 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %142 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = icmp ule i64 %144, 4
  br i1 %145, label %146, label %160

146:                                              ; preds = %131
  %147 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %150 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %153 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @memcpy(i32 %148, i32 %151, i32 %154)
  %156 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %157 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %146, %131
  %161 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = mul nuw i64 4, %16
  %164 = trunc i64 %163 to i32
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.config_file*, %struct.config_file** %5, align 8
  %167 = call i32 @az_parse_file(%struct.auth_zone* %161, i32* %162, i32* %18, i32 %164, %struct.sldns_file_parse_state* %8, i8* %165, i32 0, %struct.config_file* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %190, label %169

169:                                              ; preds = %160
  %170 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %171 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %174 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @sldns_wire2str_dname(i32 %172, i32 %175)
  store i8* %176, i8** %14, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %169
  %181 = load i8*, i8** %14, align 8
  br label %183

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i8* [ %181, %180 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %182 ]
  %185 = call i32 (i8*, i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %177, i8* %184)
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @free(i8* %186)
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @fclose(i32* %188)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %193

190:                                              ; preds = %160
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 @fclose(i32* %191)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %193

193:                                              ; preds = %190, %183, %124, %112, %33
  %194 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @verbose(i64, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @sldns_wire2str_dname(i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @log_err(i8*, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @traverse_postorder(i32*, i32, i32*) #2

declare dso_local i32 @rbtree_init(i32*, i32*) #2

declare dso_local i32 @memset(%struct.sldns_file_parse_state*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @az_parse_file(%struct.auth_zone*, i32*, i32*, i32, %struct.sldns_file_parse_state*, i8*, i32, %struct.config_file*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
