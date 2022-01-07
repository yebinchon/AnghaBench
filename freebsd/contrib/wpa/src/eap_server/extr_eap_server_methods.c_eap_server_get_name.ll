; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i32, i64, i8*, %struct.eap_method* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_EXPANDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@eap_methods = common dso_local global %struct.eap_method* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @eap_server_get_name(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.eap_method*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @EAP_TYPE_EXPANDED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %42

15:                                               ; preds = %10, %2
  %16 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %16, %struct.eap_method** %6, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %19 = icmp ne %struct.eap_method* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %22 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %28 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %34 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  br label %42

36:                                               ; preds = %26, %20
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.eap_method*, %struct.eap_method** %6, align 8
  %39 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %38, i32 0, i32 3
  %40 = load %struct.eap_method*, %struct.eap_method** %39, align 8
  store %struct.eap_method* %40, %struct.eap_method** %6, align 8
  br label %17

41:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %32, %14
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
