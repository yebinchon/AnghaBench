; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_ssl.c_conf_ssl_name_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_ssl.c_conf_ssl_name_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_conf_name_st = type { i32 }

@ssl_names = common dso_local global %struct.ssl_conf_name_st* null, align 8
@ssl_names_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conf_ssl_name_find(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ssl_conf_name_st*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %12 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8
  store %struct.ssl_conf_name_st* %12, %struct.ssl_conf_name_st** %7, align 8
  br label %13

13:                                               ; preds = %28, %11
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ssl_names_count, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %7, align 8
  %19 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  store i32 1, i32* %3, align 4
  br label %34

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %7, align 8
  %32 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %31, i32 1
  store %struct.ssl_conf_name_st* %32, %struct.ssl_conf_name_st** %7, align 8
  br label %13

33:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %24, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
