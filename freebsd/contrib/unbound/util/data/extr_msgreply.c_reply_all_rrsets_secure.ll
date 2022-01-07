; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_all_rrsets_secure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_reply_all_rrsets_secure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@sec_status_secure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_all_rrsets_secure(%struct.reply_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %8 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.packed_rrset_data*
  %22 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @sec_status_secure, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %5

31:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
