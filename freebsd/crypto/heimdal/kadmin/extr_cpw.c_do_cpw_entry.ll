; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_do_cpw_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_do_cpw_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpw_entry_data = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_cpw_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpw_entry(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpw_entry_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.cpw_entry_data*
  store %struct.cpw_entry_data* %8, %struct.cpw_entry_data** %6, align 8
  %9 = load %struct.cpw_entry_data*, %struct.cpw_entry_data** %6, align 8
  %10 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @set_random_key(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.cpw_entry_data*, %struct.cpw_entry_data** %6, align 8
  %18 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @set_random_password(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %16
  %25 = load %struct.cpw_entry_data*, %struct.cpw_entry_data** %6, align 8
  %26 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.cpw_entry_data*, %struct.cpw_entry_data** %6, align 8
  %32 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @set_key_data(i32 %30, i64 %33)
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cpw_entry_data*, %struct.cpw_entry_data** %6, align 8
  %38 = getelementptr inbounds %struct.cpw_entry_data, %struct.cpw_entry_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @set_password(i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %29, %21, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @set_random_key(i32) #1

declare dso_local i32 @set_random_password(i32) #1

declare dso_local i32 @set_key_data(i32, i64) #1

declare dso_local i32 @set_password(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
