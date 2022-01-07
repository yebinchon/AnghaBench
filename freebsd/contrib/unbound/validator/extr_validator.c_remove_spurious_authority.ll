; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_remove_spurious_authority.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_remove_spurious_authority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Removing spurious unsigned NS record (likely inserted by forwarder)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reply_info*, %struct.reply_info*)* @remove_spurious_authority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_spurious_authority(%struct.reply_info* %0, %struct.reply_info* %1) #0 {
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca %struct.reply_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store %struct.reply_info* %1, %struct.reply_info** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %10 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %141

19:                                               ; preds = %13, %2
  %20 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %21 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %65, %19
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 %27, %31
  %33 = icmp ult i64 %24, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %23
  %35 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %44, %struct.packed_rrset_data** %8, align 8
  %45 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %46 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  %55 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %34
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %59 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %68

64:                                               ; preds = %57, %34
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %23

68:                                               ; preds = %62, %23
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %141

72:                                               ; preds = %68
  %73 = load i32, i32* @VERB_ALGO, align 4
  %74 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %75 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @log_rrset_key(i32 %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %79)
  %81 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %82 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %134, %72
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %87 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %90 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add i64 %88, %92
  %94 = icmp ult i64 %85, %93
  br i1 %94, label %95, label %137

95:                                               ; preds = %84
  %96 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %97 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ntohs(i32 %104)
  %106 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %95
  %109 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %110 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %111, i64 %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %119 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @query_dname_compare(i32 %117, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %108
  %130 = load %struct.reply_info*, %struct.reply_info** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @val_reply_remove_auth(%struct.reply_info* %130, i64 %131)
  br label %137

133:                                              ; preds = %108, %95
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %5, align 8
  br label %84

137:                                              ; preds = %129, %84
  %138 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @val_reply_remove_auth(%struct.reply_info* %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %71, %18
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @log_rrset_key(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i32 @val_reply_remove_auth(%struct.reply_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
