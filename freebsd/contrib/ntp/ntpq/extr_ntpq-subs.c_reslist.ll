; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_reslist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_reslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i64, i32 }

@__const.reslist.addr_fmtu = private unnamed_addr constant [8 x i8] c"addr.%u\00", align 1
@__const.reslist.mask_fmtu = private unnamed_addr constant [8 x i8] c"mask.%u\00", align 1
@__const.reslist.hits_fmt = private unnamed_addr constant [8 x i8] c"hits.%u\00", align 1
@__const.reslist.flags_fmt = private unnamed_addr constant [9 x i8] c"flags.%u\00", align 1
@__const.reslist.qdata = private unnamed_addr constant [18 x i8] c"addr_restrictions\00", align 16
@CTL_OP_READ_ORDLIST_A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [140 x i8] c"   hits    addr/prefix or addr mask\0A           restrictions\0A==============================================================================\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nextvar gave: %s = %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@RESLIST_FIELDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Warning: incomplete row with %d (of %d) fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @reslist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reslist(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [9 x i8], align 1
  %9 = alloca [18 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %22 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.reslist.addr_fmtu, i32 0, i32 0), i64 8, i1 false)
  %23 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.reslist.mask_fmtu, i32 0, i32 0), i64 8, i1 false)
  %24 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.reslist.hits_fmt, i32 0, i32 0), i64 8, i1 false)
  %25 = bitcast [9 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.reslist.flags_fmt, i32 0, i32 0), i64 9, i1 false)
  %26 = bitcast [18 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.reslist.qdata, i32 0, i32 0), i64 18, i1 false)
  %27 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %28 = call i32 @COUNTOF(i8* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @CTL_OP_READ_ORDLIST_A, align 4
  %31 = load i32, i32* @TRUE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %34 = call i32 @doquery(i32 %30, i32 0, i32 %31, i32 %32, i8* %33, i32* %14, i64* %13, i8** %11)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %166

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @ZERO(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %19)
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  br label %42

42:                                               ; preds = %153, %38
  %43 = call i64 @nextvar(i64* %13, i8** %11, i8** %15, i8** %16)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %154

45:                                               ; preds = %42
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @INSIST(i32 %53)
  %55 = load i32, i32* @debug, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @stderr, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %20, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  switch i32 %69, label %144 [
    i32 97, label %70
    i32 102, label %83
    i32 104, label %118
    i32 109, label %131
  ]

70:                                               ; preds = %64
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %73 = call i32 @sscanf(i8* %71, i8* %72, i64* %18)
  %74 = icmp eq i32 1, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %78 = call i32 @decodenetnum(i8* %76, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %20, align 4
  br label %82

82:                                               ; preds = %80, %75, %70
  br label %144

83:                                               ; preds = %64
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %86 = call i32 @sscanf(i8* %84, i8* %85, i64* %18)
  %87 = icmp eq i32 1, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %83
  %89 = load i8*, i8** %16, align 8
  %90 = icmp eq i8* null, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %20, align 4
  br label %116

96:                                               ; preds = %88
  %97 = load i8*, i8** %16, align 8
  %98 = call i64 @strlen(i8* %97)
  store i64 %98, i64* %21, align 8
  %99 = icmp ult i64 %98, 8
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %21, align 8
  %105 = call i32 @memcpy(i8* %102, i8* %103, i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %21, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %20, align 4
  br label %115

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %111, %100
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %83
  br label %144

118:                                              ; preds = %64
  %119 = load i8*, i8** %15, align 8
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %121 = call i32 @sscanf(i8* %119, i8* %120, i64* %18)
  %122 = icmp eq i32 1, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i8*, i8** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %126 = call i32 @sscanf(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %125)
  %127 = icmp eq i32 1, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %128, %123, %118
  br label %144

131:                                              ; preds = %64
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %134 = call i32 @sscanf(i8* %132, i8* %133, i64* %18)
  %135 = icmp eq i32 1, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i8*, i8** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %139 = call i32 @decodenetnum(i8* %137, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %20, align 4
  br label %143

143:                                              ; preds = %141, %136, %131
  br label %144

144:                                              ; preds = %64, %143, %130, %117, %82
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32*, i32** %4, align 8
  %149 = load i64, i64* %18, align 8
  %150 = call i32 @validate_reslist_idx(i32* %148, i64 %149, i32* %17, %struct.TYPE_5__* %19)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @another_reslist_field(i32* %17, %struct.TYPE_5__* %19, i32* %151)
  br label %153

153:                                              ; preds = %147, %144
  br label %42

154:                                              ; preds = %42
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @RESLIST_FIELDS, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @RESLIST_FIELDS, align 4
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @fflush(i32* %164)
  br label %166

166:                                              ; preds = %163, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @COUNTOF(i8*) #2

declare dso_local i32 @doquery(i32, i32, i32, i32, i8*, i32*, i64*, i8**) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @ZERO(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

declare dso_local i64 @nextvar(i64*, i8**, i8**, i8**) #2

declare dso_local i32 @INSIST(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i32 @decodenetnum(i8*, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @validate_reslist_idx(i32*, i64, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @another_reslist_field(i32*, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @fflush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
