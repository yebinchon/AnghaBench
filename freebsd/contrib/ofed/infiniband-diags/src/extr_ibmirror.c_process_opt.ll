; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibmirror.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mirror_dport = common dso_local global i8* null, align 8
@packet_size = common dso_local global i8* null, align 8
@mirror_sl = common dso_local global i8* null, align 8
@mirror_dlid = common dso_local global i8* null, align 8
@set_mrx = common dso_local global i32 0, align 4
@mrx_ports = common dso_local global i32 0, align 4
@set_mtx = common dso_local global i32 0, align 4
@mtx_ports = common dso_local global i32 0, align 4
@mirror_clear = common dso_local global i32 0, align 4
@mirror_query = common dso_local global i32 0, align 4
@lossy_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %38 [
    i32 112, label %9
    i32 83, label %12
    i32 108, label %15
    i32 76, label %18
    i32 82, label %21
    i32 84, label %28
    i32 68, label %35
    i32 81, label %36
    i32 121, label %37
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @strtoul(i8* %10, i32* null, i32 0)
  store i8* %11, i8** @mirror_dport, align 8
  br label %39

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strtoul(i8* %13, i32* null, i32 0)
  store i8* %14, i8** @packet_size, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strtoul(i8* %16, i32* null, i32 0)
  store i8* %17, i8** @mirror_sl, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strtoul(i8* %19, i32* null, i32 0)
  store i8* %20, i8** @mirror_dlid, align 8
  br label %39

21:                                               ; preds = %3
  store i32 1, i32* @set_mrx, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @mrx_ports, align 4
  %24 = call i32 @parse_ports(i8* %22, i32 %23)
  %25 = icmp eq i32 -1, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %40

27:                                               ; preds = %21
  br label %39

28:                                               ; preds = %3
  store i32 1, i32* @set_mtx, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @mtx_ports, align 4
  %31 = call i32 @parse_ports(i8* %29, i32 %30)
  %32 = icmp eq i32 -1, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %40

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %3
  store i32 1, i32* @mirror_clear, align 4
  br label %39

36:                                               ; preds = %3
  store i32 1, i32* @mirror_query, align 4
  br label %39

37:                                               ; preds = %3
  store i32 1, i32* @lossy_set, align 4
  br label %39

38:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

39:                                               ; preds = %37, %36, %35, %34, %27, %18, %15, %12, %9
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38, %33, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @parse_ports(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
