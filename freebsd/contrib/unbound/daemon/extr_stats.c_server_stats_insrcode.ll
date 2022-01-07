; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_insrcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_insrcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_server_stats = type { i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_insrcode(%struct.ub_server_stats* %0, i32* %1) #0 {
  %3 = alloca %struct.ub_server_stats*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ub_server_stats* %0, %struct.ub_server_stats** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %7 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @sldns_buffer_limit(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sldns_buffer_begin(i32* %15)
  %17 = call i64 @LDNS_RCODE_WIRE(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %20 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sldns_buffer_begin(i32* %30)
  %32 = call i64 @LDNS_ANCOUNT(i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %36 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %29, %14
  br label %40

40:                                               ; preds = %39, %10, %2
  ret void
}

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
