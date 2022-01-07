; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_answer_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_answer_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.query_info = type { i64, i64, i64, i32* }
%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @reply_find_answer_rrset(%struct.query_info* %0, %struct.reply_info* %1) #0 {
  %3 = alloca %struct.ub_packed_rrset_key*, align 8
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.query_info* %0, %struct.query_info** %4, align 8
  store %struct.reply_info* %1, %struct.reply_info** %5, align 8
  %10 = load %struct.query_info*, %struct.query_info** %4, align 8
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.query_info*, %struct.query_info** %4, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %102, %2
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %16
  %23 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %24 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %23, i32 0, i32 1
  %25 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, i64 %26
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, align 8
  store %struct.ub_packed_rrset_key* %28, %struct.ub_packed_rrset_key** %9, align 8
  %29 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %30 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ntohs(i32 %32)
  %34 = load %struct.query_info*, %struct.query_info** %4, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %22
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  %44 = load %struct.query_info*, %struct.query_info** %4, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %51 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @query_dname_compare(i32* %56, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  store %struct.ub_packed_rrset_key* %64, %struct.ub_packed_rrset_key** %3, align 8
  br label %106

65:                                               ; preds = %55, %48, %38, %22
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ntohs(i32 %69)
  %71 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %65
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohs(i32 %77)
  %79 = load %struct.query_info*, %struct.query_info** %4, align 8
  %80 = getelementptr inbounds %struct.query_info, %struct.query_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %73
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %86 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %93 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @query_dname_compare(i32* %91, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %100 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %99, i32** %6, i64* %7)
  br label %101

101:                                              ; preds = %98, %90, %83, %73, %65
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %16

105:                                              ; preds = %16
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %106

106:                                              ; preds = %105, %63
  %107 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  ret %struct.ub_packed_rrset_key* %107
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
