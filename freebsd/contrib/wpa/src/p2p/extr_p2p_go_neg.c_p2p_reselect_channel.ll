; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_reselect_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_reselect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i8*, i8*, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.p2p_channels = type { %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i8*, i8** }

@__const.p2p_reselect_channel.op_classes_5ghz = private unnamed_addr constant [4 x i32] [i32 124, i32 125, i32 115, i32 0], align 16
@__const.p2p_reselect_channel.op_classes_ht40 = private unnamed_addr constant [5 x i32] [i32 126, i32 127, i32 116, i32 117, i32 0], align 16
@__const.p2p_reselect_channel.op_classes_vht = private unnamed_addr constant [4 x i32] [i32 128, i32 129, i32 130, i32 0], align 16
@.str = private unnamed_addr constant [72 x i8] c"Pick own channel preference (reg_class %u channel %u) from intersection\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Pick best overall channel (reg_class %u channel %u) from intersection\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Pick best 5 GHz channel (reg_class %u channel %u) from intersection\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Pick best 2.4 GHz channel (reg_class %u channel %u) from intersection\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Pick highest preferred channel (op_class %u channel %u) from intersection\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Pick possible VHT channel (op_class %u channel %u) from intersection\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Pick possible HT40 channel (op_class %u channel %u) from intersection\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Pick possible 5 GHz channel (op_class %u channel %u) from intersection\00", align 1
@.str.8 = private unnamed_addr constant [86 x i8] c"Using original operating class and channel (op_class %u channel %u) from intersection\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"Pick another channel (reg_class %u channel %u) from intersection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_reselect_channel(%struct.p2p_data* %0, %struct.p2p_channels* %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca %struct.p2p_channels*, align 8
  %5 = alloca %struct.p2p_reg_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [5 x i32], align 16
  %12 = alloca [4 x i32], align 16
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store %struct.p2p_channels* %1, %struct.p2p_channels** %4, align 8
  %13 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.p2p_reselect_channel.op_classes_5ghz to i8*), i64 16, i1 false)
  %14 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([5 x i32]* @__const.p2p_reselect_channel.op_classes_ht40 to i8*), i64 20, i1 false)
  %15 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.p2p_reselect_channel.op_classes_vht to i8*), i64 16, i1 false)
  %16 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @p2p_freq_to_channel(i64 %23, i8** %7, i8** %8)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @p2p_channels_includes(%struct.p2p_channels* %27, i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @p2p_dbg(%struct.p2p_data* %33, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %39 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %345

43:                                               ; preds = %26, %20, %2
  %44 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %45 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @p2p_freq_to_channel(i64 %51, i8** %7, i8** %8)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @p2p_channels_includes(%struct.p2p_channels* %55, i8* %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @p2p_dbg(%struct.p2p_data* %61, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %70 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %345

71:                                               ; preds = %54, %48, %43
  %72 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %73 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %76 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @p2p_channel_to_freq(i8* %74, i8* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 2400
  br i1 %80, label %81, label %122

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 2500
  br i1 %83, label %84, label %122

84:                                               ; preds = %81
  %85 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %86 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %84
  %90 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %91 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %92 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %95 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @p2p_channels_includes(%struct.p2p_channels* %90, i8* %93, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %89
  %100 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %101 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @p2p_freq_to_channel(i64 %102, i8** %7, i8** %8)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i64 @p2p_channels_includes(%struct.p2p_channels* %106, i8* %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @p2p_dbg(%struct.p2p_data* %112, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %113, i8* %114)
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %118 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %121 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  br label %345

122:                                              ; preds = %105, %99, %89, %84, %81, %71
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %123, 4900
  br i1 %124, label %125, label %166

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 6000
  br i1 %127, label %128, label %166

128:                                              ; preds = %125
  %129 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %130 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %128
  %134 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %135 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %136 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %139 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @p2p_channels_includes(%struct.p2p_channels* %134, i8* %137, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %166, label %143

143:                                              ; preds = %133
  %144 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %145 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @p2p_freq_to_channel(i64 %146, i8** %7, i8** %8)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i64 @p2p_channels_includes(%struct.p2p_channels* %150, i8* %151, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @p2p_dbg(%struct.p2p_data* %156, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %157, i8* %158)
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %162 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %165 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %345

166:                                              ; preds = %149, %143, %133, %128, %125, %122
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %242, %166
  %168 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %169 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %168, i32 0, i32 6
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = icmp ne %struct.TYPE_3__* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %177 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %176, i32 0, i32 6
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ult i32 %175, %180
  br label %182

182:                                              ; preds = %174, %167
  %183 = phi i1 [ false, %167 ], [ %181, %174 ]
  br i1 %183, label %184, label %245

184:                                              ; preds = %182
  %185 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %186 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %187 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %186, i32 0, i32 6
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %197 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %196, i32 0, i32 6
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @p2p_channels_includes(%struct.p2p_channels* %185, i8* %195, i8* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %241

208:                                              ; preds = %184
  %209 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %210 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %209, i32 0, i32 6
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %220 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %222 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %221, i32 0, i32 6
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %232 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %231, i32 0, i32 2
  store i8* %230, i8** %232, align 8
  %233 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %234 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %235 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %238 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @p2p_dbg(%struct.p2p_data* %233, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* %236, i8* %239)
  br label %345

241:                                              ; preds = %184
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %9, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %167

245:                                              ; preds = %182
  %246 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %248 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %249 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %248, i32 0, i32 1
  %250 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %251 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %250, i32 0, i32 2
  %252 = call i64 @p2p_channel_select(%struct.p2p_channels* %246, i32* %247, i8** %249, i8** %251)
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %245
  %255 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %256 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %257 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %260 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @p2p_dbg(%struct.p2p_data* %255, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %258, i8* %261)
  br label %345

263:                                              ; preds = %245
  %264 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %265 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %266 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %267 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %266, i32 0, i32 1
  %268 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %269 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %268, i32 0, i32 2
  %270 = call i64 @p2p_channel_select(%struct.p2p_channels* %264, i32* %265, i8** %267, i8** %269)
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %263
  %273 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %274 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %275 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %278 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %277, i32 0, i32 2
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @p2p_dbg(%struct.p2p_data* %273, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* %276, i8* %279)
  br label %345

281:                                              ; preds = %263
  %282 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %284 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %285 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %284, i32 0, i32 1
  %286 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %287 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %286, i32 0, i32 2
  %288 = call i64 @p2p_channel_select(%struct.p2p_channels* %282, i32* %283, i8** %285, i8** %287)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %281
  %291 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %292 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %293 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %296 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @p2p_dbg(%struct.p2p_data* %291, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* %294, i8* %297)
  br label %345

299:                                              ; preds = %281
  %300 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %301 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %302 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %305 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = call i64 @p2p_channels_includes(%struct.p2p_channels* %300, i8* %303, i8* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %299
  %310 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %311 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %312 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %315 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @p2p_dbg(%struct.p2p_data* %310, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.8, i64 0, i64 0), i8* %313, i8* %316)
  br label %345

318:                                              ; preds = %299
  %319 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %320 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %319, i32 0, i32 0
  %321 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %320, align 8
  %322 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %321, i64 0
  store %struct.p2p_reg_class* %322, %struct.p2p_reg_class** %5, align 8
  %323 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %324 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %325 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %328 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %327, i32 0, i32 1
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 0
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @p2p_dbg(%struct.p2p_data* %323, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %326, i8* %331)
  %333 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %334 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %337 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  %338 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %339 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %338, i32 0, i32 1
  %340 = load i8**, i8*** %339, align 8
  %341 = getelementptr inbounds i8*, i8** %340, i64 0
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %344 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  br label %345

345:                                              ; preds = %318, %309, %290, %272, %254, %208, %155, %111, %60, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @p2p_freq_to_channel(i64, i8**, i8**) #2

declare dso_local i64 @p2p_channels_includes(%struct.p2p_channels*, i8*, i8*) #2

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i8*, i8*) #2

declare dso_local i32 @p2p_channel_to_freq(i8*, i8*) #2

declare dso_local i64 @p2p_channel_select(%struct.p2p_channels*, i32*, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
