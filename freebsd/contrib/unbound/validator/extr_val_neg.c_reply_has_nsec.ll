; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_reply_has_nsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_reply_has_nsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.packed_rrset_data = type { i64 }

@sec_status_secure = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*)* @reply_has_nsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reply_has_nsec(%struct.reply_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.packed_rrset_data*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  %6 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %7 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @sec_status_secure, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %14 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %58, %12
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %19 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = icmp ult i64 %17, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %16
  %27 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ntohs(i32 %35)
  %37 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %26
  %40 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %49, %struct.packed_rrset_data** %5, align 8
  %50 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %5, align 8
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @sec_status_secure, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %62

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %16

61:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
