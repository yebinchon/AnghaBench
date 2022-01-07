; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_checklabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_checklabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.partition*, i32 }
%struct.partition = type { i64, i64, i64 }

@lab = common dso_local global %struct.disklabel zeroinitializer, align 8
@allfields = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sector size 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sectors/track 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tracks/cylinder 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cylinders/unit 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"revolutions/minute 0\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"boot block size 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"boot block size %% sector-size != 0\00", align 1
@MAXPARTITIONS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"number of partitions (%lu) > MAXPARTITIONS (%d)\00", align 1
@DEFPARTITIONS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"number of partitions (%lu) < DEFPARTITIONS (%d)\00", align 1
@part_set = common dso_local global i64* null, align 8
@part_size_type = common dso_local global i8* null, align 8
@RAW_PART = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Too many '*' partitions (%c and %c)\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"unknown multiplier suffix '%c' for partition %c (should be K, M, G or T)\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"partition %c not an integer number of sectors\00", align 1
@BBSIZE = common dso_local global i64 0, align 8
@secsize = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"total percentage %lu is greater than 100\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"%ld sectors available to give to '*' and '%%' partitions\0A\00", align 1
@part_offset_type = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"Cannot find space for partition %c\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Need more than %lu sectors between %lu and %lu\0A\00", align 1
@FS_VINUM = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"Offset %ld for partition %c overlaps previous partition which ends at %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"Labels with any *'s for offset must be in ascending order by sector\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"Offset %ld for partition %c doesn't match expected value %ld\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"partition %c: size 0, but offset %lu\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"partition %c: offset past end of unit\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"partition %c: partition extends past end of unit\0A\00", align 1
@FS_UNUSED = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [38 x i8] c"partition %c is not marked as unused!\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"partition %c doesn't start at 0!\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"partition %c doesn't cover the whole unit!\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"An incorrect partition %c may cause problems for standard system utilities\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"partitions %c and %c overlap!\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"unused partition %c: size %d offset %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disklabel*)* @checklabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checklabel(%struct.disklabel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disklabel*, align 8
  %4 = alloca %struct.partition*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.partition*, align 8
  %18 = alloca %struct.disklabel*, align 8
  %19 = alloca i64, align 8
  store %struct.disklabel* %0, %struct.disklabel** %3, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %21 = icmp eq %struct.disklabel* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.disklabel* @lab, %struct.disklabel** %3, align 8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* @allfields, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %150

26:                                               ; preds = %23
  %27 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %28 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %1128

34:                                               ; preds = %26
  %35 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %36 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %1128

42:                                               ; preds = %34
  %43 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %44 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %1128

50:                                               ; preds = %42
  %51 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %52 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %62 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %69 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %74 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %77 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %81 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %84 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %89 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %92 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %96 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %99 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %119

107:                                              ; preds = %97
  %108 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %109 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %112 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = srem i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %107
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %121 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MAXPARTITIONS, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %127 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* @MAXPARTITIONS, align 4
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %129, i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %125, %119
  %135 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %136 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DEFPARTITIONS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %142 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* @DEFPARTITIONS, align 4
  %146 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %144, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %140, %134
  br label %277

150:                                              ; preds = %23
  %151 = call %struct.disklabel* (...) @getvirginlabel()
  store %struct.disklabel* %151, %struct.disklabel** %18, align 8
  %152 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %153 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %158 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %161 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %156, %150
  %163 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %164 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %169 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %172 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %167, %162
  %174 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %175 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %180 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %183 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %186 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %191 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %194 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %184
  %196 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %197 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %202 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %205 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %204, i32 0, i32 4
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %200, %195
  %207 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %208 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %213 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %216 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %211, %206
  %218 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %219 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %224 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %227 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %222, %217
  %229 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %230 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %228
  %234 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %235 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %238 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %236, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %233, %228
  %242 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %243 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %246 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %241, %233
  %248 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %249 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %247
  %253 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %254 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %257 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %252, %247
  %259 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %260 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @DEFPARTITIONS, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %266 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @MAXPARTITIONS, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %264, %258
  %271 = load %struct.disklabel*, %struct.disklabel** %18, align 8
  %272 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %275 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %274, i32 0, i32 8
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %270, %264
  br label %277

277:                                              ; preds = %276, %149
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %416, %277
  %279 = load i32, i32* %5, align 4
  %280 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %281 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %419

284:                                              ; preds = %278
  %285 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %286 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %285, i32 0, i32 9
  %287 = load %struct.partition*, %struct.partition** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.partition, %struct.partition* %287, i64 %289
  store %struct.partition* %290, %struct.partition** %4, align 8
  %291 = load i64*, i64** @part_set, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %415

297:                                              ; preds = %284
  %298 = load i8*, i8** @part_size_type, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 42
  br i1 %304, label %305, label %329

305:                                              ; preds = %297
  %306 = load i32, i32* %5, align 4
  %307 = load i32, i32* @RAW_PART, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %311 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = load %struct.partition*, %struct.partition** %4, align 8
  %315 = getelementptr inbounds %struct.partition, %struct.partition* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  br label %328

316:                                              ; preds = %305
  %317 = load i32, i32* %15, align 4
  %318 = icmp ne i32 %317, -1
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 97
  %322 = load i32, i32* %5, align 4
  %323 = add nsw i32 %322, 97
  %324 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %321, i32 %323)
  br label %327

325:                                              ; preds = %316
  %326 = load i32, i32* %5, align 4
  store i32 %326, i32* %15, align 4
  br label %327

327:                                              ; preds = %325, %319
  br label %328

328:                                              ; preds = %327, %309
  br label %414

329:                                              ; preds = %297
  %330 = load %struct.partition*, %struct.partition** %4, align 8
  %331 = getelementptr inbounds %struct.partition, %struct.partition* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %19, align 8
  %333 = load i8*, i8** @part_size_type, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  switch i32 %338, label %356 [
    i32 37, label %339
    i32 116, label %343
    i32 84, label %343
    i32 103, label %346
    i32 71, label %346
    i32 109, label %349
    i32 77, label %349
    i32 107, label %352
    i32 75, label %352
    i32 0, label %355
  ]

339:                                              ; preds = %329
  %340 = load i64, i64* %19, align 8
  %341 = load i64, i64* %11, align 8
  %342 = add i64 %341, %340
  store i64 %342, i64* %11, align 8
  br label %366

343:                                              ; preds = %329, %329
  %344 = load i64, i64* %19, align 8
  %345 = mul i64 %344, 1024
  store i64 %345, i64* %19, align 8
  br label %346

346:                                              ; preds = %329, %329, %343
  %347 = load i64, i64* %19, align 8
  %348 = mul i64 %347, 1024
  store i64 %348, i64* %19, align 8
  br label %349

349:                                              ; preds = %329, %329, %346
  %350 = load i64, i64* %19, align 8
  %351 = mul i64 %350, 1024
  store i64 %351, i64* %19, align 8
  br label %352

352:                                              ; preds = %329, %329, %349
  %353 = load i64, i64* %19, align 8
  %354 = mul i64 %353, 1024
  store i64 %354, i64* %19, align 8
  br label %366

355:                                              ; preds = %329
  br label %366

356:                                              ; preds = %329
  %357 = load i8*, i8** @part_size_type, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = load i32, i32* %5, align 4
  %364 = add nsw i32 %363, 97
  %365 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %362, i32 %364)
  br label %366

366:                                              ; preds = %356, %355, %352, %339
  %367 = load i8*, i8** @part_size_type, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %367, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 37
  br i1 %373, label %374, label %413

374:                                              ; preds = %366
  %375 = load i8*, i8** @part_size_type, align 8
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %375, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %404

382:                                              ; preds = %374
  %383 = load i64, i64* %19, align 8
  %384 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %385 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = urem i64 %383, %387
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %382
  %391 = load i32, i32* %5, align 4
  %392 = add nsw i32 %391, 97
  %393 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %392)
  br label %394

394:                                              ; preds = %390, %382
  %395 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %396 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = load i64, i64* %19, align 8
  %400 = udiv i64 %399, %398
  store i64 %400, i64* %19, align 8
  %401 = load i64, i64* %19, align 8
  %402 = load %struct.partition*, %struct.partition** %4, align 8
  %403 = getelementptr inbounds %struct.partition, %struct.partition* %402, i32 0, i32 0
  store i64 %401, i64* %403, align 8
  br label %404

404:                                              ; preds = %394, %374
  %405 = load i32, i32* %5, align 4
  %406 = load i32, i32* @RAW_PART, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = load i64, i64* %19, align 8
  %410 = load i64, i64* %10, align 8
  %411 = add i64 %410, %409
  store i64 %411, i64* %10, align 8
  br label %412

412:                                              ; preds = %408, %404
  br label %413

413:                                              ; preds = %412, %366
  br label %414

414:                                              ; preds = %413, %328
  br label %415

415:                                              ; preds = %414, %284
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %5, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %5, align 4
  br label %278

419:                                              ; preds = %278
  %420 = load i64, i64* @BBSIZE, align 8
  %421 = load i64, i64* @secsize, align 8
  %422 = udiv i64 %420, %421
  store i64 %422, i64* %8, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %5, align 4
  br label %423

423:                                              ; preds = %496, %419
  %424 = load i32, i32* %5, align 4
  %425 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %426 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %425, i32 0, i32 8
  %427 = load i32, i32* %426, align 4
  %428 = icmp slt i32 %424, %427
  br i1 %428, label %429, label %499

429:                                              ; preds = %423
  %430 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %431 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %430, i32 0, i32 9
  %432 = load %struct.partition*, %struct.partition** %431, align 8
  %433 = load i32, i32* %5, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.partition, %struct.partition* %432, i64 %434
  store %struct.partition* %435, %struct.partition** %4, align 8
  %436 = load i64*, i64** @part_set, align 8
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i64, i64* %436, i64 %438
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %462

442:                                              ; preds = %429
  %443 = load i32, i32* %5, align 4
  %444 = load i32, i32* @RAW_PART, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %462, label %446

446:                                              ; preds = %442
  %447 = load i8*, i8** @part_size_type, align 8
  %448 = load i32, i32* %5, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp eq i32 %452, 37
  br i1 %453, label %462, label %454

454:                                              ; preds = %446
  %455 = load i8*, i8** @part_size_type, align 8
  %456 = load i32, i32* %5, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %460, 42
  br i1 %461, label %462, label %463

462:                                              ; preds = %454, %446, %442, %429
  br label %496

463:                                              ; preds = %454
  %464 = load %struct.partition*, %struct.partition** %4, align 8
  %465 = getelementptr inbounds %struct.partition, %struct.partition* %464, i32 0, i32 1
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* %8, align 8
  %468 = icmp ugt i64 %466, %467
  br i1 %468, label %469, label %477

469:                                              ; preds = %463
  %470 = load %struct.partition*, %struct.partition** %4, align 8
  %471 = getelementptr inbounds %struct.partition, %struct.partition* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* %8, align 8
  %474 = sub i64 %472, %473
  %475 = load i64, i64* %13, align 8
  %476 = add i64 %475, %474
  store i64 %476, i64* %13, align 8
  br label %477

477:                                              ; preds = %469, %463
  %478 = load %struct.partition*, %struct.partition** %4, align 8
  %479 = getelementptr inbounds %struct.partition, %struct.partition* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.partition*, %struct.partition** %4, align 8
  %482 = getelementptr inbounds %struct.partition, %struct.partition* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = add i64 %480, %483
  %485 = load i64, i64* %8, align 8
  %486 = icmp ugt i64 %484, %485
  br i1 %486, label %487, label %495

487:                                              ; preds = %477
  %488 = load %struct.partition*, %struct.partition** %4, align 8
  %489 = getelementptr inbounds %struct.partition, %struct.partition* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.partition*, %struct.partition** %4, align 8
  %492 = getelementptr inbounds %struct.partition, %struct.partition* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = add i64 %490, %493
  store i64 %494, i64* %8, align 8
  br label %495

495:                                              ; preds = %487, %477
  br label %496

496:                                              ; preds = %495, %462
  %497 = load i32, i32* %5, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %5, align 4
  br label %423

499:                                              ; preds = %423
  %500 = load i64, i64* %8, align 8
  %501 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %502 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %503 to i64
  %505 = icmp ult i64 %500, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %499
  %507 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %508 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %507, i32 0, i32 6
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  %511 = load i64, i64* %8, align 8
  %512 = sub i64 %510, %511
  %513 = load i64, i64* %13, align 8
  %514 = add i64 %513, %512
  store i64 %514, i64* %13, align 8
  br label %515

515:                                              ; preds = %506, %499
  %516 = load i64, i64* %11, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %587

518:                                              ; preds = %515
  %519 = load i64, i64* %11, align 8
  %520 = icmp ugt i64 %519, 100
  br i1 %520, label %521, label %527

521:                                              ; preds = %518
  %522 = load i32, i32* @stderr, align 4
  %523 = load i64, i64* %11, align 8
  %524 = call i32 (i32, i8*, ...) @fprintf(i32 %522, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 %523)
  %525 = load i32, i32* %6, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %6, align 4
  br label %527

527:                                              ; preds = %521, %518
  %528 = load i64, i64* %13, align 8
  %529 = icmp sgt i64 %528, 0
  br i1 %529, label %530, label %580

530:                                              ; preds = %527
  store i32 0, i32* %5, align 4
  br label %531

531:                                              ; preds = %576, %530
  %532 = load i32, i32* %5, align 4
  %533 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %534 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %533, i32 0, i32 8
  %535 = load i32, i32* %534, align 4
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %537, label %579

537:                                              ; preds = %531
  %538 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %539 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %538, i32 0, i32 9
  %540 = load %struct.partition*, %struct.partition** %539, align 8
  %541 = load i32, i32* %5, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.partition, %struct.partition* %540, i64 %542
  store %struct.partition* %543, %struct.partition** %4, align 8
  %544 = load i64*, i64** @part_set, align 8
  %545 = load i32, i32* %5, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i64, i64* %544, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %575

550:                                              ; preds = %537
  %551 = load i8*, i8** @part_size_type, align 8
  %552 = load i32, i32* %5, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %551, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 37
  br i1 %557, label %558, label %575

558:                                              ; preds = %550
  %559 = load %struct.partition*, %struct.partition** %4, align 8
  %560 = getelementptr inbounds %struct.partition, %struct.partition* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = sitofp i64 %561 to double
  %563 = fdiv double %562, 1.000000e+02
  %564 = load i64, i64* %13, align 8
  %565 = sitofp i64 %564 to double
  %566 = fmul double %563, %565
  %567 = fptosi double %566 to i64
  %568 = load %struct.partition*, %struct.partition** %4, align 8
  %569 = getelementptr inbounds %struct.partition, %struct.partition* %568, i32 0, i32 0
  store i64 %567, i64* %569, align 8
  %570 = load %struct.partition*, %struct.partition** %4, align 8
  %571 = getelementptr inbounds %struct.partition, %struct.partition* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* %10, align 8
  %574 = add i64 %573, %572
  store i64 %574, i64* %10, align 8
  br label %575

575:                                              ; preds = %558, %550, %537
  br label %576

576:                                              ; preds = %575
  %577 = load i32, i32* %5, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %5, align 4
  br label %531

579:                                              ; preds = %531
  br label %586

580:                                              ; preds = %527
  %581 = load i32, i32* @stderr, align 4
  %582 = load i64, i64* %13, align 8
  %583 = call i32 (i32, i8*, ...) @fprintf(i32 %581, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i64 %582)
  %584 = load i32, i32* %6, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %6, align 4
  br label %586

586:                                              ; preds = %580, %579
  br label %587

587:                                              ; preds = %586, %515
  %588 = load i32, i32* %15, align 4
  %589 = icmp ne i32 %588, -1
  br i1 %589, label %590, label %743

590:                                              ; preds = %587
  store i64 0, i64* %9, align 8
  %591 = load i64, i64* @BBSIZE, align 8
  %592 = load i64, i64* @secsize, align 8
  %593 = udiv i64 %591, %592
  store i64 %593, i64* %8, align 8
  %594 = load i32, i32* %15, align 4
  %595 = sub nsw i32 %594, 1
  store i32 %595, i32* %5, align 4
  br label %596

596:                                              ; preds = %639, %590
  %597 = load i32, i32* %5, align 4
  %598 = icmp sge i32 %597, 0
  br i1 %598, label %599, label %642

599:                                              ; preds = %596
  %600 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %601 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %600, i32 0, i32 9
  %602 = load %struct.partition*, %struct.partition** %601, align 8
  %603 = load i32, i32* %5, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.partition, %struct.partition* %602, i64 %604
  store %struct.partition* %605, %struct.partition** %4, align 8
  %606 = load i64*, i64** @part_set, align 8
  %607 = load i32, i32* %5, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i64, i64* %606, i64 %608
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %616

612:                                              ; preds = %599
  %613 = load i32, i32* %5, align 4
  %614 = load i32, i32* @RAW_PART, align 4
  %615 = icmp eq i32 %613, %614
  br i1 %615, label %616, label %617

616:                                              ; preds = %612, %599
  br label %639

617:                                              ; preds = %612
  %618 = load i8*, i8** @part_offset_type, align 8
  %619 = load i32, i32* %5, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* %618, i64 %620
  %622 = load i8, i8* %621, align 1
  %623 = sext i8 %622 to i32
  %624 = icmp eq i32 %623, 42
  br i1 %624, label %625, label %631

625:                                              ; preds = %617
  %626 = load %struct.partition*, %struct.partition** %4, align 8
  %627 = getelementptr inbounds %struct.partition, %struct.partition* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* %9, align 8
  %630 = add i64 %629, %628
  store i64 %630, i64* %9, align 8
  br label %639

631:                                              ; preds = %617
  %632 = load %struct.partition*, %struct.partition** %4, align 8
  %633 = getelementptr inbounds %struct.partition, %struct.partition* %632, i32 0, i32 1
  %634 = load i64, i64* %633, align 8
  %635 = load %struct.partition*, %struct.partition** %4, align 8
  %636 = getelementptr inbounds %struct.partition, %struct.partition* %635, i32 0, i32 0
  %637 = load i64, i64* %636, align 8
  %638 = add i64 %634, %637
  store i64 %638, i64* %8, align 8
  br label %642

639:                                              ; preds = %625, %616
  %640 = load i32, i32* %5, align 4
  %641 = add nsw i32 %640, -1
  store i32 %641, i32* %5, align 4
  br label %596

642:                                              ; preds = %631, %596
  %643 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %644 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %643, i32 0, i32 6
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %12, align 8
  %647 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %648 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %647, i32 0, i32 8
  %649 = load i32, i32* %648, align 4
  %650 = sub nsw i32 %649, 1
  store i32 %650, i32* %5, align 4
  br label %651

651:                                              ; preds = %691, %642
  %652 = load i32, i32* %5, align 4
  %653 = load i32, i32* %15, align 4
  %654 = icmp sgt i32 %652, %653
  br i1 %654, label %655, label %694

655:                                              ; preds = %651
  %656 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %657 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %656, i32 0, i32 9
  %658 = load %struct.partition*, %struct.partition** %657, align 8
  %659 = load i32, i32* %5, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.partition, %struct.partition* %658, i64 %660
  store %struct.partition* %661, %struct.partition** %4, align 8
  %662 = load i64*, i64** @part_set, align 8
  %663 = load i32, i32* %5, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i64, i64* %662, i64 %664
  %666 = load i64, i64* %665, align 8
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %672

668:                                              ; preds = %655
  %669 = load i32, i32* %5, align 4
  %670 = load i32, i32* @RAW_PART, align 4
  %671 = icmp eq i32 %669, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %668, %655
  br label %691

673:                                              ; preds = %668
  %674 = load i8*, i8** @part_offset_type, align 8
  %675 = load i32, i32* %5, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8, i8* %674, i64 %676
  %678 = load i8, i8* %677, align 1
  %679 = sext i8 %678 to i32
  %680 = icmp eq i32 %679, 42
  br i1 %680, label %681, label %687

681:                                              ; preds = %673
  %682 = load %struct.partition*, %struct.partition** %4, align 8
  %683 = getelementptr inbounds %struct.partition, %struct.partition* %682, i32 0, i32 0
  %684 = load i64, i64* %683, align 8
  %685 = load i64, i64* %9, align 8
  %686 = add i64 %685, %684
  store i64 %686, i64* %9, align 8
  br label %691

687:                                              ; preds = %673
  %688 = load %struct.partition*, %struct.partition** %4, align 8
  %689 = getelementptr inbounds %struct.partition, %struct.partition* %688, i32 0, i32 1
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %12, align 8
  br label %691

691:                                              ; preds = %687, %681, %672
  %692 = load i32, i32* %5, align 4
  %693 = add nsw i32 %692, -1
  store i32 %693, i32* %5, align 4
  br label %651

694:                                              ; preds = %651
  %695 = load i64, i64* %12, align 8
  %696 = load i64, i64* %8, align 8
  %697 = sub i64 %695, %696
  %698 = load i64, i64* %9, align 8
  %699 = icmp ule i64 %697, %698
  br i1 %699, label %700, label %719

700:                                              ; preds = %694
  %701 = load i32, i32* @stderr, align 4
  %702 = load i32, i32* %15, align 4
  %703 = add nsw i32 %702, 97
  %704 = call i32 (i32, i8*, ...) @fprintf(i32 %701, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %703)
  %705 = load i32, i32* @stderr, align 4
  %706 = load i64, i64* %9, align 8
  %707 = load i64, i64* %8, align 8
  %708 = load i64, i64* %12, align 8
  %709 = call i32 (i32, i8*, ...) @fprintf(i32 %705, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i64 %706, i64 %707, i64 %708)
  %710 = load i32, i32* %6, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %6, align 4
  %712 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %713 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %712, i32 0, i32 9
  %714 = load %struct.partition*, %struct.partition** %713, align 8
  %715 = load i32, i32* %15, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds %struct.partition, %struct.partition* %714, i64 %716
  %718 = getelementptr inbounds %struct.partition, %struct.partition* %717, i32 0, i32 0
  store i64 0, i64* %718, align 8
  br label %742

719:                                              ; preds = %694
  %720 = load i64, i64* %12, align 8
  %721 = load i64, i64* %8, align 8
  %722 = sub i64 %720, %721
  %723 = load i64, i64* %9, align 8
  %724 = sub i64 %722, %723
  %725 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %726 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %725, i32 0, i32 9
  %727 = load %struct.partition*, %struct.partition** %726, align 8
  %728 = load i32, i32* %15, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.partition, %struct.partition* %727, i64 %729
  %731 = getelementptr inbounds %struct.partition, %struct.partition* %730, i32 0, i32 0
  store i64 %724, i64* %731, align 8
  %732 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %733 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %732, i32 0, i32 9
  %734 = load %struct.partition*, %struct.partition** %733, align 8
  %735 = load i32, i32* %15, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.partition, %struct.partition* %734, i64 %736
  %738 = getelementptr inbounds %struct.partition, %struct.partition* %737, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* %10, align 8
  %741 = add i64 %740, %739
  store i64 %741, i64* %10, align 8
  br label %742

742:                                              ; preds = %719, %700
  br label %743

743:                                              ; preds = %742, %587
  %744 = load i64, i64* @BBSIZE, align 8
  %745 = load i64, i64* @secsize, align 8
  %746 = udiv i64 %744, %745
  store i64 %746, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %5, align 4
  br label %747

747:                                              ; preds = %858, %743
  %748 = load i32, i32* %5, align 4
  %749 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %750 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %749, i32 0, i32 8
  %751 = load i32, i32* %750, align 4
  %752 = icmp slt i32 %748, %751
  br i1 %752, label %753, label %861

753:                                              ; preds = %747
  %754 = load i32, i32* %5, align 4
  %755 = add nsw i32 97, %754
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %7, align 1
  %757 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %758 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %757, i32 0, i32 9
  %759 = load %struct.partition*, %struct.partition** %758, align 8
  %760 = load i32, i32* %5, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.partition, %struct.partition* %759, i64 %761
  store %struct.partition* %762, %struct.partition** %4, align 8
  %763 = load i64*, i64** @part_set, align 8
  %764 = load i32, i32* %5, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i64, i64* %763, i64 %765
  %767 = load i64, i64* %766, align 8
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %857

769:                                              ; preds = %753
  %770 = load i8*, i8** @part_offset_type, align 8
  %771 = load i32, i32* %5, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds i8, i8* %770, i64 %772
  %774 = load i8, i8* %773, align 1
  %775 = sext i8 %774 to i32
  %776 = icmp eq i32 %775, 42
  br i1 %776, label %777, label %789

777:                                              ; preds = %769
  %778 = load i32, i32* %5, align 4
  %779 = load i32, i32* @RAW_PART, align 4
  %780 = icmp eq i32 %778, %779
  br i1 %780, label %781, label %784

781:                                              ; preds = %777
  %782 = load %struct.partition*, %struct.partition** %4, align 8
  %783 = getelementptr inbounds %struct.partition, %struct.partition* %782, i32 0, i32 1
  store i64 0, i64* %783, align 8
  br label %788

784:                                              ; preds = %777
  %785 = load i64, i64* %12, align 8
  %786 = load %struct.partition*, %struct.partition** %4, align 8
  %787 = getelementptr inbounds %struct.partition, %struct.partition* %786, i32 0, i32 1
  store i64 %785, i64* %787, align 8
  store i32 1, i32* %14, align 4
  br label %788

788:                                              ; preds = %784, %781
  br label %844

789:                                              ; preds = %769
  %790 = load %struct.partition*, %struct.partition** %4, align 8
  %791 = getelementptr inbounds %struct.partition, %struct.partition* %790, i32 0, i32 1
  %792 = load i64, i64* %791, align 8
  %793 = load i64, i64* %12, align 8
  %794 = icmp ult i64 %792, %793
  br i1 %794, label %795, label %821

795:                                              ; preds = %789
  %796 = load i32, i32* %14, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %821

798:                                              ; preds = %795
  %799 = load i32, i32* %5, align 4
  %800 = load i32, i32* @RAW_PART, align 4
  %801 = icmp ne i32 %799, %800
  br i1 %801, label %802, label %821

802:                                              ; preds = %798
  %803 = load %struct.partition*, %struct.partition** %4, align 8
  %804 = getelementptr inbounds %struct.partition, %struct.partition* %803, i32 0, i32 2
  %805 = load i64, i64* %804, align 8
  %806 = load i64, i64* @FS_VINUM, align 8
  %807 = icmp ne i64 %805, %806
  br i1 %807, label %808, label %821

808:                                              ; preds = %802
  %809 = load i32, i32* @stderr, align 4
  %810 = load %struct.partition*, %struct.partition** %4, align 8
  %811 = getelementptr inbounds %struct.partition, %struct.partition* %810, i32 0, i32 1
  %812 = load i64, i64* %811, align 8
  %813 = load i32, i32* %5, align 4
  %814 = add nsw i32 %813, 97
  %815 = load i64, i64* %12, align 8
  %816 = call i32 (i32, i8*, ...) @fprintf(i32 %809, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i64 %812, i32 %814, i64 %815)
  %817 = load i32, i32* @stderr, align 4
  %818 = call i32 (i32, i8*, ...) @fprintf(i32 %817, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.17, i64 0, i64 0))
  %819 = load i32, i32* %6, align 4
  %820 = add nsw i32 %819, 1
  store i32 %820, i32* %6, align 4
  br label %843

821:                                              ; preds = %802, %798, %795, %789
  %822 = load %struct.partition*, %struct.partition** %4, align 8
  %823 = getelementptr inbounds %struct.partition, %struct.partition* %822, i32 0, i32 1
  %824 = load i64, i64* %823, align 8
  %825 = load i64, i64* %12, align 8
  %826 = icmp ne i64 %824, %825
  br i1 %826, label %827, label %842

827:                                              ; preds = %821
  %828 = load i32, i32* %5, align 4
  %829 = load i32, i32* @RAW_PART, align 4
  %830 = icmp ne i32 %828, %829
  br i1 %830, label %831, label %842

831:                                              ; preds = %827
  %832 = load i32, i32* %14, align 4
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %842

834:                                              ; preds = %831
  %835 = load %struct.partition*, %struct.partition** %4, align 8
  %836 = getelementptr inbounds %struct.partition, %struct.partition* %835, i32 0, i32 1
  %837 = load i64, i64* %836, align 8
  %838 = load i32, i32* %5, align 4
  %839 = add nsw i32 %838, 97
  %840 = load i64, i64* %12, align 8
  %841 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i64 %837, i32 %839, i64 %840)
  br label %842

842:                                              ; preds = %834, %831, %827, %821
  br label %843

843:                                              ; preds = %842, %808
  br label %844

844:                                              ; preds = %843, %788
  %845 = load i32, i32* %5, align 4
  %846 = load i32, i32* @RAW_PART, align 4
  %847 = icmp ne i32 %845, %846
  br i1 %847, label %848, label %856

848:                                              ; preds = %844
  %849 = load %struct.partition*, %struct.partition** %4, align 8
  %850 = getelementptr inbounds %struct.partition, %struct.partition* %849, i32 0, i32 1
  %851 = load i64, i64* %850, align 8
  %852 = load %struct.partition*, %struct.partition** %4, align 8
  %853 = getelementptr inbounds %struct.partition, %struct.partition* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = add i64 %851, %854
  store i64 %855, i64* %12, align 8
  br label %856

856:                                              ; preds = %848, %844
  br label %857

857:                                              ; preds = %856, %753
  br label %858

858:                                              ; preds = %857
  %859 = load i32, i32* %5, align 4
  %860 = add nsw i32 %859, 1
  store i32 %860, i32* %5, align 4
  br label %747

861:                                              ; preds = %747
  store i32 0, i32* %5, align 4
  br label %862

862:                                              ; preds = %1083, %861
  %863 = load i32, i32* %5, align 4
  %864 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %865 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %864, i32 0, i32 8
  %866 = load i32, i32* %865, align 4
  %867 = icmp slt i32 %863, %866
  br i1 %867, label %868, label %1086

868:                                              ; preds = %862
  %869 = load i32, i32* %5, align 4
  %870 = add nsw i32 97, %869
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %7, align 1
  %872 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %873 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %872, i32 0, i32 9
  %874 = load %struct.partition*, %struct.partition** %873, align 8
  %875 = load i32, i32* %5, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds %struct.partition, %struct.partition* %874, i64 %876
  store %struct.partition* %877, %struct.partition** %4, align 8
  %878 = load %struct.partition*, %struct.partition** %4, align 8
  %879 = getelementptr inbounds %struct.partition, %struct.partition* %878, i32 0, i32 0
  %880 = load i64, i64* %879, align 8
  %881 = icmp eq i64 %880, 0
  br i1 %881, label %882, label %894

882:                                              ; preds = %868
  %883 = load %struct.partition*, %struct.partition** %4, align 8
  %884 = getelementptr inbounds %struct.partition, %struct.partition* %883, i32 0, i32 1
  %885 = load i64, i64* %884, align 8
  %886 = icmp ne i64 %885, 0
  br i1 %886, label %887, label %894

887:                                              ; preds = %882
  %888 = load i8, i8* %7, align 1
  %889 = sext i8 %888 to i32
  %890 = load %struct.partition*, %struct.partition** %4, align 8
  %891 = getelementptr inbounds %struct.partition, %struct.partition* %890, i32 0, i32 1
  %892 = load i64, i64* %891, align 8
  %893 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %889, i64 %892)
  br label %894

894:                                              ; preds = %887, %882, %868
  %895 = load %struct.partition*, %struct.partition** %4, align 8
  %896 = getelementptr inbounds %struct.partition, %struct.partition* %895, i32 0, i32 1
  %897 = load i64, i64* %896, align 8
  %898 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %899 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %898, i32 0, i32 6
  %900 = load i32, i32* %899, align 4
  %901 = sext i32 %900 to i64
  %902 = icmp ugt i64 %897, %901
  br i1 %902, label %903, label %910

903:                                              ; preds = %894
  %904 = load i32, i32* @stderr, align 4
  %905 = load i8, i8* %7, align 1
  %906 = sext i8 %905 to i32
  %907 = call i32 (i32, i8*, ...) @fprintf(i32 %904, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 %906)
  %908 = load i32, i32* %6, align 4
  %909 = add nsw i32 %908, 1
  store i32 %909, i32* %6, align 4
  br label %910

910:                                              ; preds = %903, %894
  %911 = load %struct.partition*, %struct.partition** %4, align 8
  %912 = getelementptr inbounds %struct.partition, %struct.partition* %911, i32 0, i32 1
  %913 = load i64, i64* %912, align 8
  %914 = load %struct.partition*, %struct.partition** %4, align 8
  %915 = getelementptr inbounds %struct.partition, %struct.partition* %914, i32 0, i32 0
  %916 = load i64, i64* %915, align 8
  %917 = add i64 %913, %916
  %918 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %919 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %918, i32 0, i32 6
  %920 = load i32, i32* %919, align 4
  %921 = sext i32 %920 to i64
  %922 = icmp ugt i64 %917, %921
  br i1 %922, label %923, label %930

923:                                              ; preds = %910
  %924 = load i32, i32* @stderr, align 4
  %925 = load i8, i8* %7, align 1
  %926 = sext i8 %925 to i32
  %927 = call i32 (i32, i8*, ...) @fprintf(i32 %924, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %926)
  %928 = load i32, i32* %6, align 4
  %929 = add nsw i32 %928, 1
  store i32 %929, i32* %6, align 4
  br label %930

930:                                              ; preds = %923, %910
  %931 = load i32, i32* %5, align 4
  %932 = load i32, i32* @RAW_PART, align 4
  %933 = icmp eq i32 %931, %932
  br i1 %933, label %934, label %991

934:                                              ; preds = %930
  %935 = load %struct.partition*, %struct.partition** %4, align 8
  %936 = getelementptr inbounds %struct.partition, %struct.partition* %935, i32 0, i32 2
  %937 = load i64, i64* %936, align 8
  %938 = load i64, i64* @FS_UNUSED, align 8
  %939 = icmp ne i64 %937, %938
  br i1 %939, label %940, label %944

940:                                              ; preds = %934
  %941 = load i8, i8* %7, align 1
  %942 = sext i8 %941 to i32
  %943 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %942)
  br label %944

944:                                              ; preds = %940, %934
  %945 = load %struct.partition*, %struct.partition** %4, align 8
  %946 = getelementptr inbounds %struct.partition, %struct.partition* %945, i32 0, i32 1
  %947 = load i64, i64* %946, align 8
  %948 = icmp ne i64 %947, 0
  br i1 %948, label %949, label %953

949:                                              ; preds = %944
  %950 = load i8, i8* %7, align 1
  %951 = sext i8 %950 to i32
  %952 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %951)
  br label %953

953:                                              ; preds = %949, %944
  %954 = load %struct.partition*, %struct.partition** %4, align 8
  %955 = getelementptr inbounds %struct.partition, %struct.partition* %954, i32 0, i32 0
  %956 = load i64, i64* %955, align 8
  %957 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %958 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %957, i32 0, i32 6
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  %961 = icmp ne i64 %956, %960
  br i1 %961, label %962, label %966

962:                                              ; preds = %953
  %963 = load i8, i8* %7, align 1
  %964 = sext i8 %963 to i32
  %965 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 %964)
  br label %966

966:                                              ; preds = %962, %953
  %967 = load %struct.partition*, %struct.partition** %4, align 8
  %968 = getelementptr inbounds %struct.partition, %struct.partition* %967, i32 0, i32 2
  %969 = load i64, i64* %968, align 8
  %970 = load i64, i64* @FS_UNUSED, align 8
  %971 = icmp ne i64 %969, %970
  br i1 %971, label %986, label %972

972:                                              ; preds = %966
  %973 = load %struct.partition*, %struct.partition** %4, align 8
  %974 = getelementptr inbounds %struct.partition, %struct.partition* %973, i32 0, i32 1
  %975 = load i64, i64* %974, align 8
  %976 = icmp ne i64 %975, 0
  br i1 %976, label %986, label %977

977:                                              ; preds = %972
  %978 = load %struct.partition*, %struct.partition** %4, align 8
  %979 = getelementptr inbounds %struct.partition, %struct.partition* %978, i32 0, i32 0
  %980 = load i64, i64* %979, align 8
  %981 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %982 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %981, i32 0, i32 6
  %983 = load i32, i32* %982, align 4
  %984 = sext i32 %983 to i64
  %985 = icmp ne i64 %980, %984
  br i1 %985, label %986, label %990

986:                                              ; preds = %977, %972, %966
  %987 = load i8, i8* %7, align 1
  %988 = sext i8 %987 to i32
  %989 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 %988)
  br label %990

990:                                              ; preds = %986, %977
  br label %991

991:                                              ; preds = %990, %930
  store i32 0, i32* %16, align 4
  br label %992

992:                                              ; preds = %1079, %991
  %993 = load i32, i32* %16, align 4
  %994 = load i32, i32* %5, align 4
  %995 = icmp slt i32 %993, %994
  br i1 %995, label %996, label %1082

996:                                              ; preds = %992
  %997 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %998 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %997, i32 0, i32 9
  %999 = load %struct.partition*, %struct.partition** %998, align 8
  %1000 = load i32, i32* %16, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.partition, %struct.partition* %999, i64 %1001
  store %struct.partition* %1002, %struct.partition** %17, align 8
  %1003 = load i32, i32* %16, align 4
  %1004 = load i32, i32* @RAW_PART, align 4
  %1005 = icmp ne i32 %1003, %1004
  br i1 %1005, label %1006, label %1078

1006:                                             ; preds = %996
  %1007 = load i32, i32* %5, align 4
  %1008 = load i32, i32* @RAW_PART, align 4
  %1009 = icmp ne i32 %1007, %1008
  br i1 %1009, label %1010, label %1078

1010:                                             ; preds = %1006
  %1011 = load %struct.partition*, %struct.partition** %4, align 8
  %1012 = getelementptr inbounds %struct.partition, %struct.partition* %1011, i32 0, i32 2
  %1013 = load i64, i64* %1012, align 8
  %1014 = load i64, i64* @FS_VINUM, align 8
  %1015 = icmp ne i64 %1013, %1014
  br i1 %1015, label %1016, label %1078

1016:                                             ; preds = %1010
  %1017 = load %struct.partition*, %struct.partition** %17, align 8
  %1018 = getelementptr inbounds %struct.partition, %struct.partition* %1017, i32 0, i32 2
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i64, i64* @FS_VINUM, align 8
  %1021 = icmp ne i64 %1019, %1020
  br i1 %1021, label %1022, label %1078

1022:                                             ; preds = %1016
  %1023 = load i64*, i64** @part_set, align 8
  %1024 = load i32, i32* %5, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds i64, i64* %1023, i64 %1025
  %1027 = load i64, i64* %1026, align 8
  %1028 = icmp ne i64 %1027, 0
  br i1 %1028, label %1029, label %1078

1029:                                             ; preds = %1022
  %1030 = load i64*, i64** @part_set, align 8
  %1031 = load i32, i32* %16, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds i64, i64* %1030, i64 %1032
  %1034 = load i64, i64* %1033, align 8
  %1035 = icmp ne i64 %1034, 0
  br i1 %1035, label %1036, label %1078

1036:                                             ; preds = %1029
  %1037 = load %struct.partition*, %struct.partition** %17, align 8
  %1038 = getelementptr inbounds %struct.partition, %struct.partition* %1037, i32 0, i32 1
  %1039 = load i64, i64* %1038, align 8
  %1040 = load %struct.partition*, %struct.partition** %4, align 8
  %1041 = getelementptr inbounds %struct.partition, %struct.partition* %1040, i32 0, i32 1
  %1042 = load i64, i64* %1041, align 8
  %1043 = load %struct.partition*, %struct.partition** %4, align 8
  %1044 = getelementptr inbounds %struct.partition, %struct.partition* %1043, i32 0, i32 0
  %1045 = load i64, i64* %1044, align 8
  %1046 = add i64 %1042, %1045
  %1047 = icmp ult i64 %1039, %1046
  br i1 %1047, label %1048, label %1077

1048:                                             ; preds = %1036
  %1049 = load %struct.partition*, %struct.partition** %17, align 8
  %1050 = getelementptr inbounds %struct.partition, %struct.partition* %1049, i32 0, i32 1
  %1051 = load i64, i64* %1050, align 8
  %1052 = load %struct.partition*, %struct.partition** %17, align 8
  %1053 = getelementptr inbounds %struct.partition, %struct.partition* %1052, i32 0, i32 0
  %1054 = load i64, i64* %1053, align 8
  %1055 = add i64 %1051, %1054
  %1056 = load %struct.partition*, %struct.partition** %4, align 8
  %1057 = getelementptr inbounds %struct.partition, %struct.partition* %1056, i32 0, i32 1
  %1058 = load i64, i64* %1057, align 8
  %1059 = icmp ugt i64 %1055, %1058
  br i1 %1059, label %1068, label %1060

1060:                                             ; preds = %1048
  %1061 = load %struct.partition*, %struct.partition** %17, align 8
  %1062 = getelementptr inbounds %struct.partition, %struct.partition* %1061, i32 0, i32 1
  %1063 = load i64, i64* %1062, align 8
  %1064 = load %struct.partition*, %struct.partition** %4, align 8
  %1065 = getelementptr inbounds %struct.partition, %struct.partition* %1064, i32 0, i32 1
  %1066 = load i64, i64* %1065, align 8
  %1067 = icmp uge i64 %1063, %1066
  br i1 %1067, label %1068, label %1077

1068:                                             ; preds = %1060, %1048
  %1069 = load i32, i32* @stderr, align 4
  %1070 = load i32, i32* %16, align 4
  %1071 = add nsw i32 %1070, 97
  %1072 = load i32, i32* %5, align 4
  %1073 = add nsw i32 %1072, 97
  %1074 = call i32 (i32, i8*, ...) @fprintf(i32 %1069, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %1071, i32 %1073)
  %1075 = load i32, i32* %6, align 4
  %1076 = add nsw i32 %1075, 1
  store i32 %1076, i32* %6, align 4
  br label %1077

1077:                                             ; preds = %1068, %1060, %1036
  br label %1078

1078:                                             ; preds = %1077, %1029, %1022, %1016, %1010, %1006, %996
  br label %1079

1079:                                             ; preds = %1078
  %1080 = load i32, i32* %16, align 4
  %1081 = add nsw i32 %1080, 1
  store i32 %1081, i32* %16, align 4
  br label %992

1082:                                             ; preds = %992
  br label %1083

1083:                                             ; preds = %1082
  %1084 = load i32, i32* %5, align 4
  %1085 = add nsw i32 %1084, 1
  store i32 %1085, i32* %5, align 4
  br label %862

1086:                                             ; preds = %862
  br label %1087

1087:                                             ; preds = %1123, %1086
  %1088 = load i32, i32* %5, align 4
  %1089 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %1090 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %1089, i32 0, i32 8
  %1091 = load i32, i32* %1090, align 4
  %1092 = icmp slt i32 %1088, %1091
  br i1 %1092, label %1093, label %1126

1093:                                             ; preds = %1087
  %1094 = load i32, i32* %5, align 4
  %1095 = add nsw i32 97, %1094
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %7, align 1
  %1097 = load %struct.disklabel*, %struct.disklabel** %3, align 8
  %1098 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %1097, i32 0, i32 9
  %1099 = load %struct.partition*, %struct.partition** %1098, align 8
  %1100 = load i32, i32* %5, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds %struct.partition, %struct.partition* %1099, i64 %1101
  store %struct.partition* %1102, %struct.partition** %4, align 8
  %1103 = load %struct.partition*, %struct.partition** %4, align 8
  %1104 = getelementptr inbounds %struct.partition, %struct.partition* %1103, i32 0, i32 0
  %1105 = load i64, i64* %1104, align 8
  %1106 = icmp ne i64 %1105, 0
  br i1 %1106, label %1112, label %1107

1107:                                             ; preds = %1093
  %1108 = load %struct.partition*, %struct.partition** %4, align 8
  %1109 = getelementptr inbounds %struct.partition, %struct.partition* %1108, i32 0, i32 1
  %1110 = load i64, i64* %1109, align 8
  %1111 = icmp ne i64 %1110, 0
  br i1 %1111, label %1112, label %1122

1112:                                             ; preds = %1107, %1093
  %1113 = load i32, i32* %5, align 4
  %1114 = add nsw i32 97, %1113
  %1115 = load %struct.partition*, %struct.partition** %4, align 8
  %1116 = getelementptr inbounds %struct.partition, %struct.partition* %1115, i32 0, i32 0
  %1117 = load i64, i64* %1116, align 8
  %1118 = load %struct.partition*, %struct.partition** %4, align 8
  %1119 = getelementptr inbounds %struct.partition, %struct.partition* %1118, i32 0, i32 1
  %1120 = load i64, i64* %1119, align 8
  %1121 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i32 %1114, i64 %1117, i64 %1120)
  br label %1122

1122:                                             ; preds = %1112, %1107
  br label %1123

1123:                                             ; preds = %1122
  %1124 = load i32, i32* %5, align 4
  %1125 = add nsw i32 %1124, 1
  store i32 %1125, i32* %5, align 4
  br label %1087

1126:                                             ; preds = %1087
  %1127 = load i32, i32* %6, align 4
  store i32 %1127, i32* %2, align 4
  br label %1128

1128:                                             ; preds = %1126, %47, %39, %31
  %1129 = load i32, i32* %2, align 4
  ret i32 %1129
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.disklabel* @getvirginlabel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
