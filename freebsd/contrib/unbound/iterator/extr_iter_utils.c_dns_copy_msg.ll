; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_dns_copy_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_dns_copy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dns_msg* @dns_copy_msg(%struct.dns_msg* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.dns_msg*, align 8
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.dns_msg*, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  %7 = load %struct.regional*, %struct.regional** %5, align 8
  %8 = call i64 @regional_alloc(%struct.regional* %7, i32 12)
  %9 = inttoptr i64 %8 to %struct.dns_msg*
  store %struct.dns_msg* %9, %struct.dns_msg** %6, align 8
  %10 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %11 = icmp ne %struct.dns_msg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %15 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %14, i32 0, i32 1
  %16 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %17 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_2__* %15 to i8*
  %19 = bitcast %struct.TYPE_2__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.regional*, %struct.regional** %5, align 8
  %21 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %22 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %26 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regional_alloc_init(%struct.regional* %20, i32 %24, i32 %28)
  %30 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %31 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = icmp ne i32 %29, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %13
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %47

35:                                               ; preds = %13
  %36 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %37 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.regional*, %struct.regional** %5, align 8
  %40 = call i32 @reply_info_copy(i32 %38, i32* null, %struct.regional* %39)
  %41 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %42 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = icmp ne i32 %40, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store %struct.dns_msg* null, %struct.dns_msg** %3, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  store %struct.dns_msg* %46, %struct.dns_msg** %3, align 8
  br label %47

47:                                               ; preds = %45, %44, %34, %12
  %48 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  ret %struct.dns_msg* %48
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i32 @reply_info_copy(i32, i32*, %struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
