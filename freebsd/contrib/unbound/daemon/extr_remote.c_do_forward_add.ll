; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_forward_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_forward_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.iter_forwards* }
%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_forward_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_forward_add(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iter_forwards*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.delegpt*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.worker*, %struct.worker** %5, align 8
  %12 = getelementptr inbounds %struct.worker, %struct.worker* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.iter_forwards*, %struct.iter_forwards** %13, align 8
  store %struct.iter_forwards* %14, %struct.iter_forwards** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store %struct.delegpt* null, %struct.delegpt** %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_fs_args(i32* %15, i8* %16, i32** %9, %struct.delegpt** %10, i32* %8, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %62

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load %struct.worker*, %struct.worker** %5, align 8
  %25 = getelementptr inbounds %struct.worker, %struct.worker* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.worker*, %struct.worker** %5, align 8
  %31 = getelementptr inbounds %struct.worker, %struct.worker* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @anchors_add_insecure(i64 %33, i32 %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ssl_printf(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %42 = call i32 @delegpt_free_mlc(%struct.delegpt* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @free(i32* %43)
  br label %62

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %23, %20
  %47 = load %struct.iter_forwards*, %struct.iter_forwards** %7, align 8
  %48 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %49 = load %struct.delegpt*, %struct.delegpt** %10, align 8
  %50 = call i32 @forwards_add_zone(%struct.iter_forwards* %47, i32 %48, %struct.delegpt* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @ssl_printf(i32* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @free(i32* %55)
  br label %62

57:                                               ; preds = %46
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @free(i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @send_ok(i32* %60)
  br label %62

62:                                               ; preds = %57, %52, %38, %19
  ret void
}

declare dso_local i32 @parse_fs_args(i32*, i8*, i32**, %struct.delegpt**, i32*, i32*) #1

declare dso_local i32 @anchors_add_insecure(i64, i32, i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @forwards_add_zone(%struct.iter_forwards*, i32, %struct.delegpt*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
