; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_domain_remove_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_domain_remove_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { %struct.auth_rrset* }
%struct.auth_rrset = type { i64, %struct.auth_rrset* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_data*, i64)* @domain_remove_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_remove_rrset(%struct.auth_data* %0, i64 %1) #0 {
  %3 = alloca %struct.auth_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.auth_rrset*, align 8
  %6 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_data* %0, %struct.auth_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.auth_data*, %struct.auth_data** %3, align 8
  %8 = icmp ne %struct.auth_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  store %struct.auth_rrset* null, %struct.auth_rrset** %6, align 8
  %11 = load %struct.auth_data*, %struct.auth_data** %3, align 8
  %12 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %11, i32 0, i32 0
  %13 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  store %struct.auth_rrset* %13, %struct.auth_rrset** %5, align 8
  br label %14

14:                                               ; preds = %41, %10
  %15 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %16 = icmp ne %struct.auth_rrset* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %19 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.auth_rrset*, %struct.auth_rrset** %6, align 8
  %25 = icmp ne %struct.auth_rrset* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %28 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %27, i32 0, i32 1
  %29 = load %struct.auth_rrset*, %struct.auth_rrset** %28, align 8
  %30 = load %struct.auth_rrset*, %struct.auth_rrset** %6, align 8
  %31 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %30, i32 0, i32 1
  store %struct.auth_rrset* %29, %struct.auth_rrset** %31, align 8
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %34 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %33, i32 0, i32 1
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %34, align 8
  %36 = load %struct.auth_data*, %struct.auth_data** %3, align 8
  %37 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %36, i32 0, i32 0
  store %struct.auth_rrset* %35, %struct.auth_rrset** %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %40 = call i32 @auth_rrset_delete(%struct.auth_rrset* %39)
  br label %46

41:                                               ; preds = %17
  %42 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  store %struct.auth_rrset* %42, %struct.auth_rrset** %6, align 8
  %43 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %44 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %43, i32 0, i32 1
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %44, align 8
  store %struct.auth_rrset* %45, %struct.auth_rrset** %5, align 8
  br label %14

46:                                               ; preds = %9, %38, %14
  ret void
}

declare dso_local i32 @auth_rrset_delete(%struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
