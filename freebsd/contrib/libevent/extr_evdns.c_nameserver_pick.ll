; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_pick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { %struct.nameserver*, i64 }
%struct.evdns_base = type { i64, %struct.nameserver* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nameserver* (%struct.evdns_base*)* @nameserver_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nameserver* @nameserver_pick(%struct.evdns_base* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  %3 = alloca %struct.evdns_base*, align 8
  %4 = alloca %struct.nameserver*, align 8
  %5 = alloca %struct.nameserver*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %3, align 8
  %6 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %7 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %6, i32 0, i32 1
  %8 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  store %struct.nameserver* %8, %struct.nameserver** %4, align 8
  %9 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %10 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %9)
  %11 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %12 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %11, i32 0, i32 1
  %13 = load %struct.nameserver*, %struct.nameserver** %12, align 8
  %14 = icmp ne %struct.nameserver* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.nameserver* null, %struct.nameserver** %2, align 8
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %18 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %23 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %22, i32 0, i32 1
  %24 = load %struct.nameserver*, %struct.nameserver** %23, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 0
  %26 = load %struct.nameserver*, %struct.nameserver** %25, align 8
  %27 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %28 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %27, i32 0, i32 1
  store %struct.nameserver* %26, %struct.nameserver** %28, align 8
  %29 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %30 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %29, i32 0, i32 1
  %31 = load %struct.nameserver*, %struct.nameserver** %30, align 8
  store %struct.nameserver* %31, %struct.nameserver** %2, align 8
  br label %84

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %83, %32
  %34 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %35 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %34, i32 0, i32 1
  %36 = load %struct.nameserver*, %struct.nameserver** %35, align 8
  %37 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %42 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %41, i32 0, i32 1
  %43 = load %struct.nameserver*, %struct.nameserver** %42, align 8
  store %struct.nameserver* %43, %struct.nameserver** %5, align 8
  %44 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %45 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %44, i32 0, i32 1
  %46 = load %struct.nameserver*, %struct.nameserver** %45, align 8
  %47 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %46, i32 0, i32 0
  %48 = load %struct.nameserver*, %struct.nameserver** %47, align 8
  %49 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %50 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %49, i32 0, i32 1
  store %struct.nameserver* %48, %struct.nameserver** %50, align 8
  %51 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  store %struct.nameserver* %51, %struct.nameserver** %2, align 8
  br label %84

52:                                               ; preds = %33
  %53 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %54 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %53, i32 0, i32 1
  %55 = load %struct.nameserver*, %struct.nameserver** %54, align 8
  %56 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %55, i32 0, i32 0
  %57 = load %struct.nameserver*, %struct.nameserver** %56, align 8
  %58 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %59 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %58, i32 0, i32 1
  store %struct.nameserver* %57, %struct.nameserver** %59, align 8
  %60 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %61 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %60, i32 0, i32 1
  %62 = load %struct.nameserver*, %struct.nameserver** %61, align 8
  %63 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %64 = icmp eq %struct.nameserver* %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %52
  %66 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %67 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @EVUTIL_ASSERT(i32 %70)
  %72 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %73 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %72, i32 0, i32 1
  %74 = load %struct.nameserver*, %struct.nameserver** %73, align 8
  store %struct.nameserver* %74, %struct.nameserver** %5, align 8
  %75 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %76 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %75, i32 0, i32 1
  %77 = load %struct.nameserver*, %struct.nameserver** %76, align 8
  %78 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %77, i32 0, i32 0
  %79 = load %struct.nameserver*, %struct.nameserver** %78, align 8
  %80 = load %struct.evdns_base*, %struct.evdns_base** %3, align 8
  %81 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %80, i32 0, i32 1
  store %struct.nameserver* %79, %struct.nameserver** %81, align 8
  %82 = load %struct.nameserver*, %struct.nameserver** %5, align 8
  store %struct.nameserver* %82, %struct.nameserver** %2, align 8
  br label %84

83:                                               ; preds = %52
  br label %33

84:                                               ; preds = %65, %40, %21, %15
  %85 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  ret %struct.nameserver* %85
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
