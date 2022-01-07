; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_resolver_set_nameserver_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_resolver_set_nameserver_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"couldn't push a nameserver address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @resolver_set_nameserver_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolver_set_nameserver_str(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @ldns_resolver_remove_nameservers(i32* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @ldns_rdf_new_addr_frm_str(i8* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @ldns_resolver_push_nameserver(i32* %13, i32* %14)
  %16 = load i64, i64* @LDNS_STATUS_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @die(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  br label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @resolver_set_nameserver_hostname(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ldns_resolver_remove_nameservers(i32*) #1

declare dso_local i32* @ldns_rdf_new_addr_frm_str(i8*) #1

declare dso_local i64 @ldns_resolver_push_nameserver(i32*, i32*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @resolver_set_nameserver_hostname(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
