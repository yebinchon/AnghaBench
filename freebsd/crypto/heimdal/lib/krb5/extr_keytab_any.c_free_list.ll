; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_any.c_free_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_any.c_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.any_data = type { i64, %struct.any_data*, %struct.any_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.any_data*)* @free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_list(i32 %0, %struct.any_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.any_data*, align 8
  %5 = alloca %struct.any_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.any_data* %1, %struct.any_data** %4, align 8
  br label %6

6:                                                ; preds = %30, %2
  %7 = load %struct.any_data*, %struct.any_data** %4, align 8
  %8 = icmp ne %struct.any_data* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.any_data*, %struct.any_data** %4, align 8
  %11 = getelementptr inbounds %struct.any_data, %struct.any_data* %10, i32 0, i32 2
  %12 = load %struct.any_data*, %struct.any_data** %11, align 8
  store %struct.any_data* %12, %struct.any_data** %5, align 8
  %13 = load %struct.any_data*, %struct.any_data** %4, align 8
  %14 = getelementptr inbounds %struct.any_data, %struct.any_data* %13, i32 0, i32 1
  %15 = load %struct.any_data*, %struct.any_data** %14, align 8
  %16 = call i32 @free(%struct.any_data* %15)
  %17 = load %struct.any_data*, %struct.any_data** %4, align 8
  %18 = getelementptr inbounds %struct.any_data, %struct.any_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.any_data*, %struct.any_data** %4, align 8
  %24 = getelementptr inbounds %struct.any_data, %struct.any_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @krb5_kt_close(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %21, %9
  %28 = load %struct.any_data*, %struct.any_data** %4, align 8
  %29 = call i32 @free(%struct.any_data* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.any_data*, %struct.any_data** %5, align 8
  store %struct.any_data* %31, %struct.any_data** %4, align 8
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(%struct.any_data*) #1

declare dso_local i32 @krb5_kt_close(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
