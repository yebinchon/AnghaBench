; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_append_host_hostinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_append_host_hostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { %struct.krb5_krbhst_info**, %struct.krb5_krbhst_info* }
%struct.krb5_krbhst_info = type { i64, i64, %struct.krb5_krbhst_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krb5_krbhst_data*, %struct.krb5_krbhst_info*)* @append_host_hostinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_host_hostinfo(%struct.krb5_krbhst_data* %0, %struct.krb5_krbhst_info* %1) #0 {
  %3 = alloca %struct.krb5_krbhst_data*, align 8
  %4 = alloca %struct.krb5_krbhst_info*, align 8
  %5 = alloca %struct.krb5_krbhst_info*, align 8
  store %struct.krb5_krbhst_data* %0, %struct.krb5_krbhst_data** %3, align 8
  store %struct.krb5_krbhst_info* %1, %struct.krb5_krbhst_info** %4, align 8
  %6 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %3, align 8
  %7 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %6, i32 0, i32 1
  %8 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %7, align 8
  store %struct.krb5_krbhst_info* %8, %struct.krb5_krbhst_info** %5, align 8
  br label %9

9:                                                ; preds = %41, %2
  %10 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %5, align 8
  %11 = icmp ne %struct.krb5_krbhst_info* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %5, align 8
  %14 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %17 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %5, align 8
  %22 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %25 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %5, align 8
  %30 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %33 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i32 %31, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %39 = call i32 @_krb5_free_krbhst_info(%struct.krb5_krbhst_info* %38)
  br label %54

40:                                               ; preds = %28, %20, %12
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %5, align 8
  %43 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %42, i32 0, i32 2
  %44 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %43, align 8
  store %struct.krb5_krbhst_info* %44, %struct.krb5_krbhst_info** %5, align 8
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %47 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %3, align 8
  %48 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %47, i32 0, i32 0
  %49 = load %struct.krb5_krbhst_info**, %struct.krb5_krbhst_info*** %48, align 8
  store %struct.krb5_krbhst_info* %46, %struct.krb5_krbhst_info** %49, align 8
  %50 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %4, align 8
  %51 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %50, i32 0, i32 2
  %52 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %3, align 8
  %53 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %52, i32 0, i32 0
  store %struct.krb5_krbhst_info** %51, %struct.krb5_krbhst_info*** %53, align 8
  br label %54

54:                                               ; preds = %45, %37
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @_krb5_free_krbhst_info(%struct.krb5_krbhst_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
