; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nbns_rq.c_nbns_rq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbns_rq = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nbns_rq_done(%struct.nbns_rq* %0) #0 {
  %2 = alloca %struct.nbns_rq*, align 8
  store %struct.nbns_rq* %0, %struct.nbns_rq** %2, align 8
  %3 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %4 = icmp eq %struct.nbns_rq* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %8 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %13 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @close(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %18 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %17, i32 0, i32 2
  %19 = call i32 @mb_done(i32* %18)
  %20 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %21 = getelementptr inbounds %struct.nbns_rq, %struct.nbns_rq* %20, i32 0, i32 1
  %22 = call i32 @mb_done(i32* %21)
  %23 = load %struct.nbns_rq*, %struct.nbns_rq** %2, align 8
  %24 = call i32 @free(%struct.nbns_rq* %23)
  br label %25

25:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @mb_done(i32*) #1

declare dso_local i32 @free(%struct.nbns_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
