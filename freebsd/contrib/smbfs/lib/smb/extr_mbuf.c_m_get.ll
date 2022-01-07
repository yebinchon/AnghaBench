; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_mbuf.c_m_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_mbuf.c_m_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32 }

@M_MINSIZE = common dso_local global i64 0, align 8
@M_BASESIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.mbuf**)* @m_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_get(i64 %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @M_ALIGN(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @M_MINSIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @M_MINSIZE, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i64, i64* @M_BASESIZE, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  %18 = call %struct.mbuf* @malloc(i64 %17)
  store %struct.mbuf* %18, %struct.mbuf** %6, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = icmp eq %struct.mbuf* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = load i64, i64* @M_BASESIZE, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @bzero(%struct.mbuf* %24, i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = call i32 @M_TOP(%struct.mbuf* %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %36, %struct.mbuf** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @M_ALIGN(i64) #1

declare dso_local %struct.mbuf* @malloc(i64) #1

declare dso_local i32 @bzero(%struct.mbuf*, i64) #1

declare dso_local i32 @M_TOP(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
