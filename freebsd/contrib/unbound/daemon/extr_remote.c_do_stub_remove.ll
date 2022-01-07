; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stub_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_stub_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, %struct.iter_forwards* }
%struct.iter_forwards = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_stub_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stub_remove(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iter_forwards*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.worker*, %struct.worker** %5, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.iter_forwards*, %struct.iter_forwards** %12, align 8
  store %struct.iter_forwards* %13, %struct.iter_forwards** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @parse_fs_args(i32* %14, i8* %15, i32** %9, i32* null, i32* %8, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.worker*, %struct.worker** %5, align 8
  %24 = getelementptr inbounds %struct.worker, %struct.worker* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.worker*, %struct.worker** %5, align 8
  %30 = getelementptr inbounds %struct.worker, %struct.worker* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @anchors_delete_insecure(i64 %32, i32 %33, i32* %34)
  br label %36

36:                                               ; preds = %28, %22, %19
  %37 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %38 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @forwards_delete_stub_hole(%struct.iter_forwards* %37, i32 %38, i32* %39)
  %41 = load %struct.worker*, %struct.worker** %5, align 8
  %42 = getelementptr inbounds %struct.worker, %struct.worker* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @hints_delete_stub(i32 %44, i32 %45, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @free(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @send_ok(i32* %50)
  br label %52

52:                                               ; preds = %36, %18
  ret void
}

declare dso_local i32 @parse_fs_args(i32*, i8*, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @anchors_delete_insecure(i64, i32, i32*) #1

declare dso_local i32 @forwards_delete_stub_hole(%struct.iter_forwards*, i32, i32*) #1

declare dso_local i32 @hints_delete_stub(i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
