; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_ip_ratelimit_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_ip_ratelimit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.ip_ratelimit_list_arg = type { i32, %struct.TYPE_4__*, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"+a\00", align 1
@infra_ip_ratelimit = common dso_local global i64 0, align 8
@ip_rate_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_ip_ratelimit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ip_ratelimit_list(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ip_ratelimit_list_arg, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.worker*, %struct.worker** %5, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 1
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.worker*, %struct.worker** %5, align 8
  %15 = getelementptr inbounds %struct.worker, %struct.worker* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @skipwhite(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %27, %3
  %30 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* @infra_ip_ratelimit, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %29
  br label %50

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.ip_ratelimit_list_arg, %struct.ip_ratelimit_list_arg* %7, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @ip_rate_list, align 4
  %49 = call i32 @slabhash_traverse(i32* %47, i32 0, i32 %48, %struct.ip_ratelimit_list_arg* %7)
  br label %50

50:                                               ; preds = %43, %42
  ret void
}

declare dso_local i8* @skipwhite(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @slabhash_traverse(i32*, i32, i32, %struct.ip_ratelimit_list_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
