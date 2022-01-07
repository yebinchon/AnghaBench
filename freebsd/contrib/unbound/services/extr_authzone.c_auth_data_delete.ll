; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_data_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_data_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { %struct.auth_data*, %struct.auth_rrset* }
%struct.auth_rrset = type { %struct.auth_rrset* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_data*)* @auth_data_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_data_delete(%struct.auth_data* %0) #0 {
  %2 = alloca %struct.auth_data*, align 8
  %3 = alloca %struct.auth_rrset*, align 8
  %4 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_data* %0, %struct.auth_data** %2, align 8
  %5 = load %struct.auth_data*, %struct.auth_data** %2, align 8
  %6 = icmp ne %struct.auth_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.auth_data*, %struct.auth_data** %2, align 8
  %10 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %9, i32 0, i32 1
  %11 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  store %struct.auth_rrset* %11, %struct.auth_rrset** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.auth_rrset*, %struct.auth_rrset** %3, align 8
  %14 = icmp ne %struct.auth_rrset* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.auth_rrset*, %struct.auth_rrset** %3, align 8
  %17 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %16, i32 0, i32 0
  %18 = load %struct.auth_rrset*, %struct.auth_rrset** %17, align 8
  store %struct.auth_rrset* %18, %struct.auth_rrset** %4, align 8
  %19 = load %struct.auth_rrset*, %struct.auth_rrset** %3, align 8
  %20 = call i32 @auth_rrset_delete(%struct.auth_rrset* %19)
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  store %struct.auth_rrset* %21, %struct.auth_rrset** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.auth_data*, %struct.auth_data** %2, align 8
  %24 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %23, i32 0, i32 0
  %25 = load %struct.auth_data*, %struct.auth_data** %24, align 8
  %26 = call i32 @free(%struct.auth_data* %25)
  %27 = load %struct.auth_data*, %struct.auth_data** %2, align 8
  %28 = call i32 @free(%struct.auth_data* %27)
  br label %29

29:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @auth_rrset_delete(%struct.auth_rrset*) #1

declare dso_local i32 @free(%struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
