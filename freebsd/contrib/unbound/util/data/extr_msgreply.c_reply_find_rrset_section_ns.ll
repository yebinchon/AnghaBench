; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_rrset_section_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_find_rrset_section_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.reply_info = type { i64, i64, %struct.ub_packed_rrset_key** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @reply_find_rrset_section_ns(%struct.reply_info* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.reply_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  br label %17

17:                                               ; preds = %67, %5
  %18 = load i64, i64* %12, align 8
  %19 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = icmp ult i64 %18, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %17
  %28 = load %struct.reply_info*, %struct.reply_info** %7, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 2
  %30 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, i64 %31
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %32, align 8
  store %struct.ub_packed_rrset_key* %33, %struct.ub_packed_rrset_key** %13, align 8
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ntohs(i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %27
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %52 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @query_dname_compare(i32* %57, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  store %struct.ub_packed_rrset_key* %65, %struct.ub_packed_rrset_key** %6, align 8
  br label %71

66:                                               ; preds = %56, %49, %41, %27
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %17

70:                                               ; preds = %17
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %6, align 8
  br label %71

71:                                               ; preds = %70, %64
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  ret %struct.ub_packed_rrset_key* %72
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
