; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_isbad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_isbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.key_entry_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_entry_isbad(%struct.key_entry_key* %0) #0 {
  %2 = alloca %struct.key_entry_key*, align 8
  %3 = alloca %struct.key_entry_data*, align 8
  store %struct.key_entry_key* %0, %struct.key_entry_key** %2, align 8
  %4 = load %struct.key_entry_key*, %struct.key_entry_key** %2, align 8
  %5 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.key_entry_data*
  store %struct.key_entry_data* %8, %struct.key_entry_data** %3, align 8
  %9 = load %struct.key_entry_data*, %struct.key_entry_data** %3, align 8
  %10 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
