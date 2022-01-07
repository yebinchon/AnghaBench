; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_final_cname_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_final_cname_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i64, i32* }
%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @reply_find_final_cname_target(%struct.query_info* %0, %struct.reply_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.query_info* %0, %struct.query_info** %4, align 8
  store %struct.reply_info* %1, %struct.reply_info** %5, align 8
  %10 = load %struct.query_info*, %struct.query_info** %4, align 8
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.query_info*, %struct.query_info** %4, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %65, %2
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %68

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
  %34 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %22
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  %42 = load %struct.query_info*, %struct.query_info** %4, align 8
  %43 = getelementptr inbounds %struct.query_info, %struct.query_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %56 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @query_dname_compare(i32* %54, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %63 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %62, i32** %6, i64* %7)
  br label %64

64:                                               ; preds = %61, %53, %46, %36, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %16

68:                                               ; preds = %16
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.query_info*, %struct.query_info** %4, align 8
  %71 = getelementptr inbounds %struct.query_info, %struct.query_info* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  store i32* %75, i32** %3, align 8
  br label %77

76:                                               ; preds = %68
  store i32* null, i32** %3, align 8
  br label %77

77:                                               ; preds = %76, %74
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
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
