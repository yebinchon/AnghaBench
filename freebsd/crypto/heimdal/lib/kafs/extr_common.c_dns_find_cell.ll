; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_dns_find_cell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_common.c_dns_find_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_dns_reply = type { %struct.rk_resource_record* }
%struct.rk_resource_record = type { i64, %struct.rk_resource_record*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"afsdb\00", align 1
@rk_ns_t_afsdb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @dns_find_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_find_cell(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rk_dns_reply*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rk_resource_record*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.rk_dns_reply* @rk_dns_lookup(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.rk_dns_reply* %11, %struct.rk_dns_reply** %7, align 8
  %12 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %7, align 8
  %13 = icmp ne %struct.rk_dns_reply* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %7, align 8
  %16 = getelementptr inbounds %struct.rk_dns_reply, %struct.rk_dns_reply* %15, i32 0, i32 0
  %17 = load %struct.rk_resource_record*, %struct.rk_resource_record** %16, align 8
  store %struct.rk_resource_record* %17, %struct.rk_resource_record** %9, align 8
  br label %18

18:                                               ; preds = %45, %14
  %19 = load %struct.rk_resource_record*, %struct.rk_resource_record** %9, align 8
  %20 = icmp ne %struct.rk_resource_record* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.rk_resource_record*, %struct.rk_resource_record** %9, align 8
  %23 = getelementptr inbounds %struct.rk_resource_record, %struct.rk_resource_record* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @rk_ns_t_afsdb, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.rk_resource_record*, %struct.rk_resource_record** %9, align 8
  %29 = getelementptr inbounds %struct.rk_resource_record, %struct.rk_resource_record* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.rk_resource_record*, %struct.rk_resource_record** %9, align 8
  %38 = getelementptr inbounds %struct.rk_resource_record, %struct.rk_resource_record* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @strlcpy(i8* %36, i32 %42, i64 %43)
  store i32 0, i32* %8, align 4
  br label %49

45:                                               ; preds = %27, %21
  %46 = load %struct.rk_resource_record*, %struct.rk_resource_record** %9, align 8
  %47 = getelementptr inbounds %struct.rk_resource_record, %struct.rk_resource_record* %46, i32 0, i32 1
  %48 = load %struct.rk_resource_record*, %struct.rk_resource_record** %47, align 8
  store %struct.rk_resource_record* %48, %struct.rk_resource_record** %9, align 8
  br label %18

49:                                               ; preds = %35, %18
  %50 = load %struct.rk_dns_reply*, %struct.rk_dns_reply** %7, align 8
  %51 = call i32 @rk_dns_free_data(%struct.rk_dns_reply* %50)
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.rk_dns_reply* @rk_dns_lookup(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @rk_dns_free_data(%struct.rk_dns_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
