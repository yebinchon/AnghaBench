; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_sim_db.c_eap_sim_db_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_db_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_sim_db_data*, i8)* @eap_sim_db_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_sim_db_get_next(%struct.eap_sim_db_data* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_sim_db_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i32], align 16
  store %struct.eap_sim_db_data* %0, %struct.eap_sim_db_data** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %11 = call i64 @random_get_bytes(i32* %10, i32 40)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = call i8* @os_malloc(i32 82)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %37

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 80
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %5, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %35 = call i32 @wpa_snprintf_hex(i8* %27, i32 %33, i32* %34, i32 40)
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %19, %18, %13
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
