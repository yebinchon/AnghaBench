; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_set_reason.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_set_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.key_entry_data = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_entry_set_reason(%struct.key_entry_key* %0, i8* %1) #0 {
  %3 = alloca %struct.key_entry_key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.key_entry_data*, align 8
  store %struct.key_entry_key* %0, %struct.key_entry_key** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.key_entry_key*, %struct.key_entry_key** %3, align 8
  %7 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.key_entry_data*
  store %struct.key_entry_data* %10, %struct.key_entry_data** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.key_entry_data*, %struct.key_entry_data** %5, align 8
  %13 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
