; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_addreferral.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_addreferral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32 }
%struct.reply_info = type { i64, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.val_neg_zone = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"negcache insert referral \00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"out of memory adding negative zone\00", align 1
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_neg_addreferral(%struct.val_neg_cache* %0, %struct.reply_info* %1, i32* %2) #0 {
  %4 = alloca %struct.val_neg_cache*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.val_neg_zone*, align 8
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %4, align 8
  store %struct.reply_info* %1, %struct.reply_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %14 = call i32* @reply_nsec_signer(%struct.reply_info* %13, i64* %10, i32* %11)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %148

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @dname_subdomain_c(i32* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %148

24:                                               ; preds = %18
  %25 = load i32, i32* @VERB_ALGO, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @log_nametypeclass(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %26, i32 %27, i32 %28)
  %30 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %31 = call i64 @calc_data_need(%struct.reply_info* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @calc_zone_need(i32* %32, i64 %33)
  %35 = add i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %37 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %36, i32 0, i32 0
  %38 = call i32 @lock_basic_lock(i32* %37)
  %39 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @neg_make_space(%struct.val_neg_cache* %39, i64 %40)
  %42 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.val_neg_zone* @neg_find_zone(%struct.val_neg_cache* %42, i32* %43, i64 %44, i32 %45)
  store %struct.val_neg_zone* %46, %struct.val_neg_zone** %12, align 8
  %47 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %48 = icmp ne %struct.val_neg_zone* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %24
  %50 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.val_neg_zone* @neg_create_zone(%struct.val_neg_cache* %50, i32* %51, i64 %52, i32 %53)
  store %struct.val_neg_zone* %54, %struct.val_neg_zone** %12, align 8
  %55 = icmp ne %struct.val_neg_zone* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %58 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %57, i32 0, i32 0
  %59 = call i32 @lock_basic_unlock(i32* %58)
  %60 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %148

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %64 = call i32 @val_neg_zone_take_inuse(%struct.val_neg_zone* %63)
  %65 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %66 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %131, %62
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %71 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %74 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %72, %75
  %77 = icmp ult i64 %69, %76
  br i1 %77, label %78, label %134

78:                                               ; preds = %68
  %79 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %80 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ntohs(i32 %87)
  %89 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %78
  %92 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %93 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @ntohs(i32 %100)
  %102 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %131

105:                                              ; preds = %91, %78
  %106 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %107 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %116 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @dname_subdomain_c(i32* %114, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %105
  br label %131

121:                                              ; preds = %105
  %122 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %123 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %124 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %125 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %126, i64 %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 @neg_insert_data(%struct.val_neg_cache* %122, %struct.val_neg_zone* %123, %struct.TYPE_6__* %129)
  br label %131

131:                                              ; preds = %121, %120, %104
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  br label %68

134:                                              ; preds = %68
  %135 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %136 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %142 = load %struct.val_neg_zone*, %struct.val_neg_zone** %12, align 8
  %143 = call i32 @neg_delete_zone(%struct.val_neg_cache* %141, %struct.val_neg_zone* %142)
  br label %144

144:                                              ; preds = %140, %134
  %145 = load %struct.val_neg_cache*, %struct.val_neg_cache** %4, align 8
  %146 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %145, i32 0, i32 0
  %147 = call i32 @lock_basic_unlock(i32* %146)
  br label %148

148:                                              ; preds = %144, %56, %23, %17
  ret void
}

declare dso_local i32* @reply_nsec_signer(%struct.reply_info*, i64*, i32*) #1

declare dso_local i32 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

declare dso_local i64 @calc_data_need(%struct.reply_info*) #1

declare dso_local i64 @calc_zone_need(i32*, i64) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @neg_make_space(%struct.val_neg_cache*, i64) #1

declare dso_local %struct.val_neg_zone* @neg_find_zone(%struct.val_neg_cache*, i32*, i64, i32) #1

declare dso_local %struct.val_neg_zone* @neg_create_zone(%struct.val_neg_cache*, i32*, i64, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @val_neg_zone_take_inuse(%struct.val_neg_zone*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @neg_insert_data(%struct.val_neg_cache*, %struct.val_neg_zone*, %struct.TYPE_6__*) #1

declare dso_local i32 @neg_delete_zone(%struct.val_neg_cache*, %struct.val_neg_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
