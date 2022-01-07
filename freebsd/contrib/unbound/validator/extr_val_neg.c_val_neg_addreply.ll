; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_addreply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_addreply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32 }
%struct.reply_info = type { i64, i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32* }
%struct.val_neg_zone = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"negcache insert for zone\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"out of memory adding negative zone\00", align 1
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_neg_addreply(%struct.val_neg_cache* %0, %struct.reply_info* %1) #0 {
  %3 = alloca %struct.val_neg_cache*, align 8
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.val_neg_zone*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %3, align 8
  store %struct.reply_info* %1, %struct.reply_info** %4, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %13 = call i32 @reply_has_nsec(%struct.reply_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %151

16:                                               ; preds = %2
  %17 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %18 = call %struct.ub_packed_rrset_key* @reply_find_soa(%struct.reply_info* %17)
  store %struct.ub_packed_rrset_key* %18, %struct.ub_packed_rrset_key** %7, align 8
  %19 = icmp ne %struct.ub_packed_rrset_key* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ntohs(i32 %32)
  store i64 %33, i64* %10, align 8
  br label %40

34:                                               ; preds = %16
  %35 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %36 = call i32* @reply_nsec_signer(%struct.reply_info* %35, i64* %9, i64* %10)
  store i32* %36, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %151

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* @VERB_ALGO, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @log_nametypeclass(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %42, i32 %43, i64 %44)
  %46 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %47 = call i64 @calc_data_need(%struct.reply_info* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @calc_zone_need(i32* %48, i64 %49)
  %51 = add i64 %47, %50
  store i64 %51, i64* %6, align 8
  %52 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %53 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %52, i32 0, i32 0
  %54 = call i32 @lock_basic_lock(i32* %53)
  %55 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @neg_make_space(%struct.val_neg_cache* %55, i64 %56)
  %58 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call %struct.val_neg_zone* @neg_find_zone(%struct.val_neg_cache* %58, i32* %59, i64 %60, i64 %61)
  store %struct.val_neg_zone* %62, %struct.val_neg_zone** %11, align 8
  %63 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %64 = icmp ne %struct.val_neg_zone* %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %40
  %66 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call %struct.val_neg_zone* @neg_create_zone(%struct.val_neg_cache* %66, i32* %67, i64 %68, i64 %69)
  store %struct.val_neg_zone* %70, %struct.val_neg_zone** %11, align 8
  %71 = icmp ne %struct.val_neg_zone* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %74 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %73, i32 0, i32 0
  %75 = call i32 @lock_basic_unlock(i32* %74)
  %76 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %151

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %40
  %79 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %80 = call i32 @val_neg_zone_take_inuse(%struct.val_neg_zone* %79)
  %81 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %82 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %134, %78
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %90 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = icmp ult i64 %85, %92
  br i1 %93, label %94, label %137

94:                                               ; preds = %84
  %95 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %96 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %97, i64 %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ntohs(i32 %103)
  %105 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %134

108:                                              ; preds = %94
  %109 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %110 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %111, i64 %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %119 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dname_subdomain_c(i32 %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %108
  br label %134

124:                                              ; preds = %108
  %125 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %126 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %127 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %128 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %129, i64 %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = call i32 @neg_insert_data(%struct.val_neg_cache* %125, %struct.val_neg_zone* %126, %struct.TYPE_8__* %132)
  br label %134

134:                                              ; preds = %124, %123, %107
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %5, align 8
  br label %84

137:                                              ; preds = %84
  %138 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %139 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %145 = load %struct.val_neg_zone*, %struct.val_neg_zone** %11, align 8
  %146 = call i32 @neg_delete_zone(%struct.val_neg_cache* %144, %struct.val_neg_zone* %145)
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.val_neg_cache*, %struct.val_neg_cache** %3, align 8
  %149 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %148, i32 0, i32 0
  %150 = call i32 @lock_basic_unlock(i32* %149)
  br label %151

151:                                              ; preds = %147, %72, %38, %15
  ret void
}

declare dso_local i32 @reply_has_nsec(%struct.reply_info*) #1

declare dso_local %struct.ub_packed_rrset_key* @reply_find_soa(%struct.reply_info*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32* @reply_nsec_signer(%struct.reply_info*, i64*, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i64) #1

declare dso_local i64 @calc_data_need(%struct.reply_info*) #1

declare dso_local i64 @calc_zone_need(i32*, i64) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @neg_make_space(%struct.val_neg_cache*, i64) #1

declare dso_local %struct.val_neg_zone* @neg_find_zone(%struct.val_neg_cache*, i32*, i64, i64) #1

declare dso_local %struct.val_neg_zone* @neg_create_zone(%struct.val_neg_cache*, i32*, i64, i64) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @val_neg_zone_take_inuse(%struct.val_neg_zone*) #1

declare dso_local i32 @dname_subdomain_c(i32, i32) #1

declare dso_local i32 @neg_insert_data(%struct.val_neg_cache*, %struct.val_neg_zone*, %struct.TYPE_8__*) #1

declare dso_local i32 @neg_delete_zone(%struct.val_neg_cache*, %struct.val_neg_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
