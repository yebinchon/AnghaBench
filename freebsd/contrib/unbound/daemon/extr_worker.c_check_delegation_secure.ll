; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_check_delegation_secure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_check_delegation_secure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i32 }

@sec_status_secure = common dso_local global i32 0, align 4
@sec_status_unchecked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*)* @check_delegation_secure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_delegation_secure(%struct.reply_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  %8 = load i32, i32* @sec_status_secure, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %10 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.packed_rrset_data*
  %31 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %16

42:                                               ; preds = %16
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %69, %42
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %52 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.packed_rrset_data*
  %61 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @sec_status_unchecked, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
