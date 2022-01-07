; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_do_changekey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_do_changekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@impl_ver = common dso_local global i64 0, align 8
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*, i32)* @do_changekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_changekey(%struct.parse* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.parse*, %struct.parse** %4, align 8
  %13 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @htonl(i32 %17)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i64, i64* @impl_ver, align 8
  %21 = load i32, i32* %6, align 4
  %22 = bitcast i32* %7 to i8*
  %23 = call i32 @doquery(i64 %20, i32 %21, i32 1, i32 1, i32 4, i8* %22, i64* %8, i64* %9, i8** %10, i32 0, i32 8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @INFO_ERR_IMPL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i64, i64* @impl_ver, align 8
  %29 = load i64, i64* @IMPL_XNTPD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %32, i64* @impl_ver, align 8
  br label %19

33:                                               ; preds = %27, %19
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i8*, i64*, i64*, i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
