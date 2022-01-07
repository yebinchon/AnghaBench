; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_infra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_flush_infra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.del_info = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.worker* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error parsing ip addr: '%s'\0A\00", align 1
@infra_del_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_flush_infra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_flush_infra(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.del_info, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.worker*, %struct.worker** %5, align 8
  %15 = getelementptr inbounds %struct.worker, %struct.worker* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @slabhash_clear(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @send_ok(i32* %21)
  br label %64

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %26 = call i32 @ipstrtoaddr(i8* %24, i32 %25, %struct.sockaddr_storage* %7, i32* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ssl_printf(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %64

32:                                               ; preds = %23
  %33 = load %struct.worker*, %struct.worker** %5, align 8
  %34 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 9
  store %struct.worker* %33, %struct.worker** %34, align 8
  %35 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.worker*, %struct.worker** %5, align 8
  %39 = getelementptr inbounds %struct.worker, %struct.worker* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 3
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.del_info, %struct.del_info* %9, i32 0, i32 1
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memmove(i32* %52, %struct.sockaddr_storage* %7, i32 %53)
  %55 = load %struct.worker*, %struct.worker** %5, align 8
  %56 = getelementptr inbounds %struct.worker, %struct.worker* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @slabhash_traverse(i32 %60, i32 1, i32* @infra_del_host, %struct.del_info* %9)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @send_ok(i32* %62)
  br label %64

64:                                               ; preds = %32, %28, %13
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @slabhash_clear(i32) #1

declare dso_local i32 @send_ok(i32*) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @memmove(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @slabhash_traverse(i32, i32, i32*, %struct.del_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
