; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_print_root_fwds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_print_root_fwds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }

@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"off (using root hints)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.iter_forwards*, i32*)* @print_root_fwds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_root_fwds(i32* %0, %struct.iter_forwards* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iter_forwards*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.delegpt*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.iter_forwards* %1, %struct.iter_forwards** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.iter_forwards*, %struct.iter_forwards** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %12 = call %struct.delegpt* @forwards_lookup(%struct.iter_forwards* %9, i32* %10, i32 %11)
  store %struct.delegpt* %12, %struct.delegpt** %8, align 8
  %13 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %14 = icmp ne %struct.delegpt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ssl_printf(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %20 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @query_dname_compare(i32 %21, i32* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @log_assert(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %30 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %31 = call i32 @ssl_print_name_dp(i32* %27, i32* null, i32* %28, i32 %29, %struct.delegpt* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.delegpt* @forwards_lookup(%struct.iter_forwards*, i32*, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

declare dso_local i32 @ssl_print_name_dp(i32*, i32*, i32*, i32, %struct.delegpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
