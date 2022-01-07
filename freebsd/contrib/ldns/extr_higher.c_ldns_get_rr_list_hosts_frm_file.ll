; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_get_rr_list_hosts_frm_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_higher.c_ldns_get_rr_list_hosts_frm_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RESOLV_HOSTS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ldns_get_rr_list_hosts_frm_file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @LDNS_RESOLV_HOSTS, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %5, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %24

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @ldns_get_rr_list_hosts_frm_fp(i32* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @fclose(i32* %21)
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @ldns_get_rr_list_hosts_frm_fp(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
