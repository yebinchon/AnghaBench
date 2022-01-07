; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_insecure_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_insecure_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_insecure_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_insecure_remove(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @parse_arg_name(i32* %10, i8* %11, i32** %9, i64* %7, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.worker*, %struct.worker** %5, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.worker*, %struct.worker** %5, align 8
  %23 = getelementptr inbounds %struct.worker, %struct.worker* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @anchors_delete_insecure(i64 %25, i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @send_ok(i32* %32)
  br label %34

34:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @anchors_delete_insecure(i64, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
