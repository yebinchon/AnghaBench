; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_qstate = type { %struct.iter_prep_list*, %struct.iter_prep_list* }
%struct.iter_prep_list = type { %struct.ub_packed_rrset_key*, %struct.iter_prep_list* }
%struct.ub_packed_rrset_key = type { i32 }
%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, i32, %struct.ub_packed_rrset_key** }
%struct.regional = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"prepending %d rrsets\00", align 1
@RR_COUNT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_qstate*, %struct.dns_msg*, %struct.regional*)* @iter_prepend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_prepend(%struct.iter_qstate* %0, %struct.dns_msg* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.iter_prep_list*, align 8
  %9 = alloca %struct.ub_packed_rrset_key**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iter_qstate* %0, %struct.iter_qstate** %5, align 8
  store %struct.dns_msg* %1, %struct.dns_msg** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %13 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %12, i32 0, i32 1
  %14 = load %struct.iter_prep_list*, %struct.iter_prep_list** %13, align 8
  store %struct.iter_prep_list* %14, %struct.iter_prep_list** %8, align 8
  br label %15

15:                                               ; preds = %21, %3
  %16 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %17 = icmp ne %struct.iter_prep_list* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %23 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %22, i32 0, i32 1
  %24 = load %struct.iter_prep_list*, %struct.iter_prep_list** %23, align 8
  store %struct.iter_prep_list* %24, %struct.iter_prep_list** %8, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %27 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %26, i32 0, i32 0
  %28 = load %struct.iter_prep_list*, %struct.iter_prep_list** %27, align 8
  store %struct.iter_prep_list* %28, %struct.iter_prep_list** %8, align 8
  br label %29

29:                                               ; preds = %35, %25
  %30 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %31 = icmp ne %struct.iter_prep_list* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %37 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %36, i32 0, i32 1
  %38 = load %struct.iter_prep_list*, %struct.iter_prep_list** %37, align 8
  store %struct.iter_prep_list* %38, %struct.iter_prep_list** %8, align 8
  br label %29

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %260

45:                                               ; preds = %39
  %46 = load i32, i32* @VERB_ALGO, align 4
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = call i32 @verbose(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @RR_COUNT_MAX, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @RR_COUNT_MAX, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %62 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RR_COUNT_MAX, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60, %56, %45
  store i32 0, i32* %4, align 4
  br label %260

69:                                               ; preds = %60
  %70 = load %struct.regional*, %struct.regional** %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %71, %72
  %74 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %75 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %73, %78
  %80 = mul i64 %79, 8
  %81 = call %struct.ub_packed_rrset_key** @regional_alloc(%struct.regional* %70, i64 %80)
  store %struct.ub_packed_rrset_key** %81, %struct.ub_packed_rrset_key*** %9, align 8
  %82 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %83 = icmp ne %struct.ub_packed_rrset_key** %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %260

85:                                               ; preds = %69
  store i64 0, i64* %10, align 8
  %86 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %87 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %86, i32 0, i32 1
  %88 = load %struct.iter_prep_list*, %struct.iter_prep_list** %87, align 8
  store %struct.iter_prep_list* %88, %struct.iter_prep_list** %8, align 8
  br label %89

89:                                               ; preds = %100, %85
  %90 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %91 = icmp ne %struct.iter_prep_list* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %94 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %93, i32 0, i32 0
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %94, align 8
  %96 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %96, i64 %97
  store %struct.ub_packed_rrset_key* %95, %struct.ub_packed_rrset_key** %99, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %102 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %101, i32 0, i32 1
  %103 = load %struct.iter_prep_list*, %struct.iter_prep_list** %102, align 8
  store %struct.iter_prep_list* %103, %struct.iter_prep_list** %8, align 8
  br label %89

104:                                              ; preds = %89
  %105 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %105, i64 %106
  %108 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %109 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %111, align 8
  %113 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %114 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(%struct.ub_packed_rrset_key** %107, %struct.ub_packed_rrset_key** %112, i32 %120)
  store i64 0, i64* %11, align 8
  %122 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %123 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %122, i32 0, i32 0
  %124 = load %struct.iter_prep_list*, %struct.iter_prep_list** %123, align 8
  store %struct.iter_prep_list* %124, %struct.iter_prep_list** %8, align 8
  br label %125

125:                                              ; preds = %186, %104
  %126 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %127 = icmp ne %struct.iter_prep_list* %126, null
  br i1 %127, label %128, label %190

128:                                              ; preds = %125
  %129 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %130 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %131 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %129, i64 %135
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %136, i64 %137
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %141 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %140, i32 0, i32 0
  %142 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %141, align 8
  %143 = call i64 @prepend_is_duplicate(%struct.ub_packed_rrset_key** %138, i64 %139, %struct.ub_packed_rrset_key* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %128
  %146 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %147 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  %150 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %149, align 8
  %151 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %152 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %150, i64 %156
  %158 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %159 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %164 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %163, i32 0, i32 0
  %165 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %164, align 8
  %166 = call i64 @prepend_is_duplicate(%struct.ub_packed_rrset_key** %157, i64 %162, %struct.ub_packed_rrset_key* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %145, %128
  br label %186

169:                                              ; preds = %145
  %170 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %171 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %170, i32 0, i32 0
  %172 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %171, align 8
  %173 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %174 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %175 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %179, %180
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %11, align 8
  %184 = add i64 %181, %182
  %185 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %173, i64 %184
  store %struct.ub_packed_rrset_key* %172, %struct.ub_packed_rrset_key** %185, align 8
  br label %186

186:                                              ; preds = %169, %168
  %187 = load %struct.iter_prep_list*, %struct.iter_prep_list** %8, align 8
  %188 = getelementptr inbounds %struct.iter_prep_list, %struct.iter_prep_list* %187, i32 0, i32 1
  %189 = load %struct.iter_prep_list*, %struct.iter_prep_list** %188, align 8
  store %struct.iter_prep_list* %189, %struct.iter_prep_list** %8, align 8
  br label %125

190:                                              ; preds = %125
  %191 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %191, i64 %192
  %194 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %195 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %193, i64 %199
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %200, i64 %201
  %203 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %204 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 4
  %207 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %206, align 8
  %208 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %209 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %207, i64 %213
  %215 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %216 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %215, i32 0, i32 0
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %221 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %220, i32 0, i32 0
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = add i64 %219, %225
  %227 = mul i64 %226, 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @memcpy(%struct.ub_packed_rrset_key** %202, %struct.ub_packed_rrset_key** %214, i32 %228)
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* %11, align 8
  %232 = add i64 %230, %231
  %233 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %234 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %233, i32 0, i32 0
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, %232
  store i64 %238, i64* %236, align 8
  %239 = load i64, i64* %10, align 8
  %240 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %241 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %240, i32 0, i32 0
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = add i64 %245, %239
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 8
  %248 = load i64, i64* %11, align 8
  %249 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %250 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %249, i32 0, i32 0
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, %248
  store i64 %254, i64* %252, align 8
  %255 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %256 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %257 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  store %struct.ub_packed_rrset_key** %255, %struct.ub_packed_rrset_key*** %259, align 8
  store i32 1, i32* %4, align 4
  br label %260

260:                                              ; preds = %190, %84, %68, %44
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local %struct.ub_packed_rrset_key** @regional_alloc(%struct.regional*, i64) #1

declare dso_local i32 @memcpy(%struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key**, i32) #1

declare dso_local i64 @prepend_is_duplicate(%struct.ub_packed_rrset_key**, i64, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
