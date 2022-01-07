; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_data_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_val_neg_data_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_neg_data_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.val_neg_data*, align 8
  %6 = alloca %struct.val_neg_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.val_neg_data*
  store %struct.val_neg_data* %9, %struct.val_neg_data** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.val_neg_data*
  store %struct.val_neg_data* %11, %struct.val_neg_data** %6, align 8
  %12 = load %struct.val_neg_data*, %struct.val_neg_data** %5, align 8
  %13 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.val_neg_data*, %struct.val_neg_data** %5, align 8
  %16 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %19 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.val_neg_data*, %struct.val_neg_data** %6, align 8
  %22 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dname_canon_lab_cmp(i32 %14, i32 %17, i32 %20, i32 %23, i32* %7)
  ret i32 %24
}

declare dso_local i32 @dname_canon_lab_cmp(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
