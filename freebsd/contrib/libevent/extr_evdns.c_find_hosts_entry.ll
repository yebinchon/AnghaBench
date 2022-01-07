; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_find_hosts_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_find_hosts_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.hosts_entry = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hosts_entry* (%struct.evdns_base*, i8*, %struct.hosts_entry*)* @find_hosts_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hosts_entry* @find_hosts_entry(%struct.evdns_base* %0, i8* %1, %struct.hosts_entry* %2) #0 {
  %4 = alloca %struct.hosts_entry*, align 8
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hosts_entry*, align 8
  %8 = alloca %struct.hosts_entry*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hosts_entry* %2, %struct.hosts_entry** %7, align 8
  %9 = load %struct.hosts_entry*, %struct.hosts_entry** %7, align 8
  %10 = icmp ne %struct.hosts_entry* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.hosts_entry*, %struct.hosts_entry** %7, align 8
  %13 = load i32, i32* @next, align 4
  %14 = call %struct.hosts_entry* @TAILQ_NEXT(%struct.hosts_entry* %12, i32 %13)
  store %struct.hosts_entry* %14, %struct.hosts_entry** %8, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %17 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %16, i32 0, i32 0
  %18 = call %struct.hosts_entry* @TAILQ_FIRST(i32* %17)
  store %struct.hosts_entry* %18, %struct.hosts_entry** %8, align 8
  br label %19

19:                                               ; preds = %15, %11
  br label %20

20:                                               ; preds = %33, %19
  %21 = load %struct.hosts_entry*, %struct.hosts_entry** %8, align 8
  %22 = icmp ne %struct.hosts_entry* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.hosts_entry*, %struct.hosts_entry** %8, align 8
  %25 = getelementptr inbounds %struct.hosts_entry, %struct.hosts_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @evutil_ascii_strcasecmp(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load %struct.hosts_entry*, %struct.hosts_entry** %8, align 8
  store %struct.hosts_entry* %31, %struct.hosts_entry** %4, align 8
  br label %38

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.hosts_entry*, %struct.hosts_entry** %8, align 8
  %35 = load i32, i32* @next, align 4
  %36 = call %struct.hosts_entry* @TAILQ_NEXT(%struct.hosts_entry* %34, i32 %35)
  store %struct.hosts_entry* %36, %struct.hosts_entry** %8, align 8
  br label %20

37:                                               ; preds = %20
  store %struct.hosts_entry* null, %struct.hosts_entry** %4, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.hosts_entry*, %struct.hosts_entry** %4, align 8
  ret %struct.hosts_entry* %39
}

declare dso_local %struct.hosts_entry* @TAILQ_NEXT(%struct.hosts_entry*, i32) #1

declare dso_local %struct.hosts_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evutil_ascii_strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
