; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deleg_remove_nonsecure_additional.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_deleg_remove_nonsecure_additional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i32 }

@sec_status_secure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reply_info*)* @deleg_remove_nonsecure_additional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deleg_remove_nonsecure_additional(%struct.reply_info* %0) #0 {
  %2 = alloca %struct.reply_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.reply_info* %0, %struct.reply_info** %2, align 8
  %5 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %6 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %9 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %7, %10
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %66, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.packed_rrset_data*
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @sec_status_secure, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %18
  %35 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 4
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %38
  %40 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %41 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 1
  %46 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = sub i64 %48, %49
  %51 = sub i64 %50, 1
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memmove(%struct.TYPE_5__** %39, %struct.TYPE_5__** %45, i32 %53)
  %55 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %56 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.reply_info*, %struct.reply_info** %2, align 8
  %60 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %34, %18
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %12

69:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memmove(%struct.TYPE_5__**, %struct.TYPE_5__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
