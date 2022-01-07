; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_freehostinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_freehostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostinfo = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freehostinfo(%struct.hostinfo* %0) #0 {
  %2 = alloca %struct.hostinfo*, align 8
  store %struct.hostinfo* %0, %struct.hostinfo** %2, align 8
  %3 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  %4 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  %9 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @free(i8* %10)
  %12 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  %16 = getelementptr inbounds %struct.hostinfo, %struct.hostinfo* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @free(i8* %18)
  %20 = load %struct.hostinfo*, %struct.hostinfo** %2, align 8
  %21 = bitcast %struct.hostinfo* %20 to i8*
  %22 = call i32 @free(i8* %21)
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
