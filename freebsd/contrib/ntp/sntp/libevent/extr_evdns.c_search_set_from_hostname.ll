; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_search_set_from_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_search_set_from_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }

@HOST_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_base*)* @search_set_from_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_set_from_hostname(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.evdns_base*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %2, align 8
  %7 = load i32, i32* @HOST_NAME_MAX, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %13 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %12)
  %14 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %15 = call i32 @search_postfix_clear(%struct.evdns_base* %14)
  %16 = trunc i64 %9 to i32
  %17 = call i64 @gethostname(i8* %11, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %29

20:                                               ; preds = %1
  %21 = call i8* @strchr(i8* %11, i8 signext 46)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.evdns_base*, %struct.evdns_base** %2, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @search_postfix_add(%struct.evdns_base* %26, i8* %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %24, %19
  %30 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %33 [
    i32 0, label %32
    i32 1, label %32
  ]

32:                                               ; preds = %29, %29
  ret void

33:                                               ; preds = %29
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #2

declare dso_local i32 @search_postfix_clear(%struct.evdns_base*) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @search_postfix_add(%struct.evdns_base*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
