; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_store_parentside_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_store_parentside_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.query_info = type { i32, i32, i32, i32 }
%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.packed_rrset_data*, i32, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i32, i64*, i32*, i32, i32*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i8*, i8* }

@NORR_TTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"out of memory in store_parentside_neg\00", align 1
@rrset_trust_ans_noAA = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"store parent-side negative\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_store_parentside_neg(%struct.module_env* %0, %struct.query_info* %1, %struct.reply_info* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  store %struct.reply_info* %2, %struct.reply_info** %6, align 8
  %11 = load i32, i32* @NORR_TTL, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %13 = icmp ne %struct.reply_info* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %16 = call %struct.ub_packed_rrset_key* @reply_get_NS_rrset(%struct.reply_info* %15)
  store %struct.ub_packed_rrset_key* %16, %struct.ub_packed_rrset_key** %10, align 8
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %18 = icmp ne %struct.ub_packed_rrset_key* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 1
  %27 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, i64 0
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %28, align 8
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %10, align 8
  br label %30

30:                                               ; preds = %24, %19, %14
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %32 = icmp ne %struct.ub_packed_rrset_key* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %10, align 8
  %35 = call i32 @ub_packed_rrset_ttl(%struct.ub_packed_rrset_key* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.module_env*, %struct.module_env** %4, align 8
  %39 = getelementptr inbounds %struct.module_env, %struct.module_env* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @regional_alloc(i32 %40, i32 56)
  %42 = inttoptr i64 %41 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %42, %struct.ub_packed_rrset_key** %8, align 8
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %44 = icmp ne %struct.ub_packed_rrset_key* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %160

47:                                               ; preds = %37
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = call i32 @memset(%struct.TYPE_4__* %49, i32 0, i32 24)
  %51 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %51, %struct.ub_packed_rrset_key** %54, align 8
  %55 = load %struct.query_info*, %struct.query_info** %5, align 8
  %56 = getelementptr inbounds %struct.query_info, %struct.query_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %60 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load %struct.query_info*, %struct.query_info** %5, align 8
  %63 = getelementptr inbounds %struct.query_info, %struct.query_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htons(i32 %64)
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %70 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.module_env*, %struct.module_env** %4, align 8
  %73 = getelementptr inbounds %struct.module_env, %struct.module_env* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.query_info*, %struct.query_info** %5, align 8
  %76 = getelementptr inbounds %struct.query_info, %struct.query_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.query_info*, %struct.query_info** %5, align 8
  %79 = getelementptr inbounds %struct.query_info, %struct.query_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regional_alloc_init(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %83 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %86 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %47
  %91 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %160

92:                                               ; preds = %47
  %93 = load %struct.query_info*, %struct.query_info** %5, align 8
  %94 = getelementptr inbounds %struct.query_info, %struct.query_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %100 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %99, i32 0, i32 1
  %101 = call i32 @rrset_key_hash(%struct.TYPE_3__* %100)
  %102 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %103 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 8
  %105 = load %struct.module_env*, %struct.module_env** %4, align 8
  %106 = getelementptr inbounds %struct.module_env, %struct.module_env* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @regional_alloc_zero(i32 %107, i32 80)
  %109 = inttoptr i64 %108 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %109, %struct.packed_rrset_data** %9, align 8
  %110 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %111 = icmp ne %struct.packed_rrset_data* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %92
  %113 = call i32 @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %160

114:                                              ; preds = %92
  %115 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %116 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %117 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store %struct.packed_rrset_data* %115, %struct.packed_rrset_data** %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %121 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %123 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %125 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %124, i32 0, i32 6
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @rrset_trust_ans_noAA, align 4
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  %129 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %130 = bitcast %struct.packed_rrset_data* %129 to i32*
  %131 = getelementptr inbounds i32, i32* %130, i64 56
  %132 = bitcast i32* %131 to i64*
  %133 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %134 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %133, i32 0, i32 1
  store i64* %132, i64** %134, align 8
  %135 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %136 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  store i64 4, i64* %138, align 8
  %139 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %140 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %139)
  %141 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %142 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %145 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %149 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sldns_write_uint16(i32 %152, i32 0)
  %154 = load i32, i32* @VERB_ALGO, align 4
  %155 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %156 = call i32 @log_rrset_key(i32 %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.ub_packed_rrset_key* %155)
  %157 = load %struct.module_env*, %struct.module_env** %4, align 8
  %158 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %159 = call i32 @iter_store_parentside_rrset(%struct.module_env* %157, %struct.ub_packed_rrset_key* %158)
  br label %160

160:                                              ; preds = %114, %112, %90, %45
  ret void
}

declare dso_local %struct.ub_packed_rrset_key* @reply_get_NS_rrset(%struct.reply_info*) #1

declare dso_local i32 @ub_packed_rrset_ttl(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @regional_alloc_init(i32, i32, i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_3__*) #1

declare dso_local i64 @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

declare dso_local i32 @sldns_write_uint16(i32, i32) #1

declare dso_local i32 @log_rrset_key(i32, i8*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @iter_store_parentside_rrset(%struct.module_env*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
